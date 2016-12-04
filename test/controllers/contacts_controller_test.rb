require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_url
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post contacts_url, params: { contact: { company_hp_url: @contact.company_hp_url, company_information: @contact.company_information, company_name: @contact.company_name, envelope_address: @contact.envelope_address, envelope_department: @contact.envelope_department, envelope_mail_address: @contact.envelope_mail_address, envelope_name: @contact.envelope_name, envelope_postal_code: @contact.envelope_postal_code, etc: @contact.etc, invoice_item: @contact.invoice_item, invoice_item_other: @contact.invoice_item_other, invoice_name: @contact.invoice_name, invoice_sending: @contact.invoice_sending, lightning_talk: @contact.lightning_talk, pamphlet: @contact.pamphlet, sponsorship: @contact.sponsorship, your_mail_address: @contact.your_mail_address, your_name: @contact.your_name } }
    end

    assert_redirected_to contact_url(Contact.last)
  end

  test "should show contact" do
    get contact_url(@contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_url(@contact)
    assert_response :success
  end

  test "should update contact" do
    patch contact_url(@contact), params: { contact: { company_hp_url: @contact.company_hp_url, company_information: @contact.company_information, company_name: @contact.company_name, envelope_address: @contact.envelope_address, envelope_department: @contact.envelope_department, envelope_mail_address: @contact.envelope_mail_address, envelope_name: @contact.envelope_name, envelope_postal_code: @contact.envelope_postal_code, etc: @contact.etc, invoice_item: @contact.invoice_item, invoice_item_other: @contact.invoice_item_other, invoice_name: @contact.invoice_name, invoice_sending: @contact.invoice_sending, lightning_talk: @contact.lightning_talk, pamphlet: @contact.pamphlet, sponsorship: @contact.sponsorship, your_mail_address: @contact.your_mail_address, your_name: @contact.your_name } }
    assert_redirected_to contact_url(@contact)
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete contact_url(@contact)
    end

    assert_redirected_to contacts_url
  end
end
