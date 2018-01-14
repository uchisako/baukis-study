class StaffMemberPresenter < ModelPresenter
  delegate :suspended?, to: :object

  # 職員の停止フラグのON/OFFを表現する記号を返す
  #  ON:  BALLOT BOX WITH CHECK (U+2611)
  #  OFF: BALLOT BOX (U+2610)
  def suspended_mark
    suspended? ? raw('&#x2611;') : raw('&#x2610;')
  end

  def full_name(staff_member)
    staff_member.family_name + ' ' + staff_member.given_name
  end

  def full_name_kana(staff_member)
    staff_member.family_name_kana + ' ' + staff_member.given_name_kana
  end
end
