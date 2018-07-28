# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
for i in 1..3
  Court.create(
      nickname: "ID#{i}",
      title: '흑흑',
      content: '남자친구의 군대를 기다려야할까요',
      series: 1,
      category: '연애',
      hashtag: '#고무신 #군대 #기다림 #고민',
      start_date: '0728',
      end_date: '0828',
      agree_num: 66,
      disagree_num: 88
    )
end
