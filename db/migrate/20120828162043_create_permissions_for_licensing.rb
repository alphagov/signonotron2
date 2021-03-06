class CreatePermissionsForLicensing < ActiveRecord::Migration
  class SupportedPermission < ApplicationRecord
    belongs_to :application, class_name: "Doorkeeper::Application"
  end

  def up
    licensify = ::Doorkeeper::Application.find_by(name: "Licensify")
    if licensify
      SupportedPermission.create!(application: licensify, name: "GDSAdministrator")
      SupportedPermission.create!(application: licensify, name: "AuthorityAdministrator")
      SupportedPermission.create!(application: licensify, name: "ABE")
      SupportedPermission.create!(application: licensify, name: "ACCA")
      SupportedPermission.create!(application: licensify, name: "Access-NI")
      SupportedPermission.create!(application: licensify, name: "AALA")
      SupportedPermission.create!(application: licensify, name: "Animal-Health")
      SupportedPermission.create!(application: licensify, name: "ASPD-Home-Office")
      SupportedPermission.create!(application: licensify, name: "Architects-Registration-Board")
      SupportedPermission.create!(application: licensify, name: "Association-of-Accounting-Technicians")
      SupportedPermission.create!(application: licensify, name: "Association-of-International-Accountants")
      SupportedPermission.create!(application: licensify, name: "Association-of-Law-Costs-Draftsmen")
      SupportedPermission.create!(application: licensify, name: "Association-of-Taxation-Technicians")
      SupportedPermission.create!(application: licensify, name: "Bar-Standards-Board")
      SupportedPermission.create!(application: licensify, name: "Belfast-Health-and-Social-Care-Trust")
      SupportedPermission.create!(application: licensify, name: "BESCA")
      SupportedPermission.create!(application: licensify, name: "BRE")
      SupportedPermission.create!(application: licensify, name: "BCMS")
      SupportedPermission.create!(application: licensify, name: "British-Waterways-Board")
      SupportedPermission.create!(application: licensify, name: "Scottish-Building-Standards")
      SupportedPermission.create!(application: licensify, name: "CADW")
      SupportedPermission.create!(application: licensify, name: "CARB")
      SupportedPermission.create!(application: licensify, name: "Care-and-Social-Services-Inspectorate-Wales")
      SupportedPermission.create!(application: licensify, name: "Care-Quality-Commission")
      SupportedPermission.create!(application: licensify, name: "CCEA")
      SupportedPermission.create!(application: licensify, name: "CEFAS")
      SupportedPermission.create!(application: licensify, name: "CIMA")
      SupportedPermission.create!(application: licensify, name: "CIPFA")
      SupportedPermission.create!(application: licensify, name: "Chartered-Institute-of-Taxation")
      SupportedPermission.create!(application: licensify, name: "CIAT")
      SupportedPermission.create!(application: licensify, name: "CIBSE")
      SupportedPermission.create!(application: licensify, name: "CIH-Scotland")
      SupportedPermission.create!(application: licensify, name: "Civil-Aviation-Authority")
      SupportedPermission.create!(application: licensify, name: "Claims-Management-Regulation")
      SupportedPermission.create!(application: licensify, name: "Companies-House")
      SupportedPermission.create!(application: licensify, name: "Construction-Industry-Council")
      SupportedPermission.create!(application: licensify, name: "Council-for-Licensed-Conveyancers")
      SupportedPermission.create!(application: licensify, name: "Countryside-Council-for-Wales")
      SupportedPermission.create!(application: licensify, name: "DARD")
      SupportedPermission.create!(application: licensify, name: "DCLG")
      SupportedPermission.create!(application: licensify, name: "DCMS")
      SupportedPermission.create!(application: licensify, name: "DfE")
      SupportedPermission.create!(application: licensify, name: "DENI")
      SupportedPermission.create!(application: licensify, name: "DETI-NI")
      SupportedPermission.create!(application: licensify, name: "DFPNI")
      SupportedPermission.create!(application: licensify, name: "Driving-Standards-Agency")
      SupportedPermission.create!(application: licensify, name: "DVLA")
      SupportedPermission.create!(application: licensify, name: "ECMK-Ltd")
      SupportedPermission.create!(application: licensify, name: "Egg-and-Poultry-Unit-Scottish-Ministers")
      SupportedPermission.create!(application: licensify, name: "Elmhurst")
      SupportedPermission.create!(application: licensify, name: "Energy-Institute")
      SupportedPermission.create!(application: licensify, name: "Environment-Agency")
      SupportedPermission.create!(application: licensify, name: "Faculty-of-Advocates")
      SupportedPermission.create!(application: licensify, name: "The-Faculty-Office")
      SupportedPermission.create!(application: licensify, name: "Farriers-Registration-Council")
      SupportedPermission.create!(application: licensify, name: "Forestry-Commission")
      SupportedPermission.create!(application: licensify, name: "Gas-Safe-Register")
      SupportedPermission.create!(application: licensify, name: "Health-Inspectorate-Wales")
      SupportedPermission.create!(application: licensify, name: "H&VCA-Ltd")
      SupportedPermission.create!(application: licensify, name: "Historic-Scotland")
      SupportedPermission.create!(application: licensify, name: "HMRC")
      SupportedPermission.create!(application: licensify, name: "HSE")
      SupportedPermission.create!(application: licensify, name: "ICAEW")
      SupportedPermission.create!(application: licensify, name: "Information-Commissioner's-office")
      SupportedPermission.create!(application: licensify, name: "IPA")
      SupportedPermission.create!(application: licensify, name: "Insolvency-Service")
      SupportedPermission.create!(application: licensify, name: "Institute-of-Actuaries")
      SupportedPermission.create!(application: licensify, name: "Institute-of-Certified-Bookkeepers")
      SupportedPermission.create!(application: licensify, name: "ICAS")
      SupportedPermission.create!(application: licensify, name: "Institute-of-Financial-Accountants")
      SupportedPermission.create!(application: licensify, name: "Institute-of-Legal-Executives")
      SupportedPermission.create!(application: licensify, name: "Knauf")
      SupportedPermission.create!(application: licensify, name: "Law-Society-of-Northern-Ireland")
      SupportedPermission.create!(application: licensify, name: "Law-Society-of-Scotland")
      SupportedPermission.create!(application: licensify, name: "Marine-Fisheries-Agency")
      SupportedPermission.create!(application: licensify, name: "Marine-Scotland")
      SupportedPermission.create!(application: licensify, name: "Meat-Hygiene")
      SupportedPermission.create!(application: licensify, name: "Metropolitan-Police")
      SupportedPermission.create!(application: licensify, name: "NAPIT")
      SupportedPermission.create!(application: licensify, name: "National-Energy-Services-Ltd")
      SupportedPermission.create!(application: licensify, name: "National-Proficiency-Tests-Council")
      SupportedPermission.create!(application: licensify, name: "Natural-England")
      SupportedPermission.create!(application: licensify, name: "Northern-Health-and-Social-Care-Trust")
      SupportedPermission.create!(application: licensify, name: "NIAUR")
      SupportedPermission.create!(application: licensify, name: "Northern-Ireland-Court-Service")
      SupportedPermission.create!(application: licensify, name: "Northern-Ireland-Environment-Agency")
      SupportedPermission.create!(application: licensify, name: "Northern-Ireland-Housing-Executive")
      SupportedPermission.create!(application: licensify, name: "Northern-Ireland-Office")
      SupportedPermission.create!(application: licensify, name: "Northern-Ireland-Tourist-Board")
      SupportedPermission.create!(application: licensify, name: "Northgate")
      SupportedPermission.create!(application: licensify, name: "Office-of-Fair-Trading")
      SupportedPermission.create!(application: licensify, name: "Ofgem")
      SupportedPermission.create!(application: licensify, name: "Ofqual")
      SupportedPermission.create!(application: licensify, name: "Ofsted")
      SupportedPermission.create!(application: licensify, name: "Ofwat")
      SupportedPermission.create!(application: licensify, name: "Postcomm")
      SupportedPermission.create!(application: licensify, name: "Privy-Council")
      SupportedPermission.create!(application: licensify, name: "PSNI")
      SupportedPermission.create!(application: licensify, name: "Quidos")
      SupportedPermission.create!(application: licensify, name: "RICS")
      SupportedPermission.create!(application: licensify, name: "Royal-College-of-Veterinary-Surgeons")
      SupportedPermission.create!(application: licensify, name: "RQIA")
      SupportedPermission.create!(application: licensify, name: "SAMU")
      SupportedPermission.create!(application: licensify, name: "Care-Commission")
      SupportedPermission.create!(application: licensify, name: "Scottish-Environment-Protection-Agency")
      SupportedPermission.create!(application: licensify, name: "Scottish-Housing-Regulator")
      SupportedPermission.create!(application: licensify, name: "Scottish-Ministers")
      SupportedPermission.create!(application: licensify, name: "Scottish-Natural-Heritage")
      SupportedPermission.create!(application: licensify, name: "Solicitors-Regulation-Authority")
      SupportedPermission.create!(application: licensify, name: "South-Eastern-Health-and-Social-Care-Trust")
      SupportedPermission.create!(application: licensify, name: "Southern-Health-and-Social-Care-Trust")
      SupportedPermission.create!(application: licensify, name: "SQA")
      SupportedPermission.create!(application: licensify, name: "Streetworks-Qualification-Register")
      SupportedPermission.create!(application: licensify, name: "Surveyors-Ombudsman-Service")
      SupportedPermission.create!(application: licensify, name: "Tenants-Services-Authority")
      SupportedPermission.create!(application: licensify, name: "The-Bar-Council-of-Northern-Ireland")
      SupportedPermission.create!(application: licensify, name: "The-Property-Ombudsman-Limited")
      SupportedPermission.create!(application: licensify, name: "Veterinary-Medicines-Directorate")
      SupportedPermission.create!(application: licensify, name: "VOSA")
      SupportedPermission.create!(application: licensify, name: "Waterways-Ireland")
      SupportedPermission.create!(application: licensify, name: "Dept-for-Rural-Affairs")
      SupportedPermission.create!(application: licensify, name: "DCELLS")
      SupportedPermission.create!(application: licensify, name: "Western-Health-and-Social-Care-Trust")
      SupportedPermission.create!(application: licensify, name: "Roads-Service")
      SupportedPermission.create!(application: licensify, name: "Office-of-the-Registrar-of-Independent-Schools")
      SupportedPermission.create!(application: licensify, name: "Department-for-Culture-Arts-and-Leisure-Northern-Ireland")
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
