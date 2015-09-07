class Devise::TwoStepVerificationController < Devise::TwoFactorAuthenticationController
  def new
    if current_user.otp_secret_key.present?
      redirect_to root_path, alert: "Two Step Verification is already set up"
    else
      @otp_secret_key = ROTP::Base32.random_base32
    end
  end

  def create
    @otp_secret_key = params[:otp_secret_key]
    totp = ROTP::TOTP.new(@otp_secret_key)
    if totp.verify(params[:code])
      current_user.update_attribute(:otp_secret_key, @otp_secret_key)
      redirect_to "/", notice: "Two Step Verification set up"
    else
      flash.now[:alert] = "Invalid Two Step Verification code. Perhaps you entered it incorrectly?"
      render :new
    end
  end

  private
  def qr_code_data_uri
    qr_code = RQRCode::QRCode.new(totp_secret_key_uri, level: :m)
    qr_code.as_png(size: 180, fill: ChunkyPNG::Color::TRANSPARENT).to_data_url
  end
  helper_method :qr_code_data_uri

  def totp_secret_key_uri
    "otpauth://totp/GOV.UK%20Signon:#{current_user.email}?secret=#{@otp_secret_key.upcase}&issuer=GOV.UK%20Signon"
  end
end