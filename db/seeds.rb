# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) are set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name({:name => role}, :without_protection => true)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin

UserProfile.create(
    user_id: user.id,
    address: ENV['ADMIN_ADDRESS'].dup,
    municipality: ENV['ADMIN_MUNICIPALITY'].dup,
    city: ENV['ADMIN_CITY'].dup,
    country: ENV['ADMIN_COUNTRY'].dup,
    post_code: ENV['ADMIN_POST_CODE'].dup,
    email: ENV['ADMIN_EMAIL'].dup,
    phone: ENV['ADMIN_PHONE'].dup,
    mobile: ENV['ADMIN_MOBILE'].dup
)
puts 'Added profile for user: ' << user.name

Activity.create(
    [
        { name: 'Едукација во областа на животната средина' },
        { name: 'Здравствени аспекти на животната средина' },
        { name: 'Истражување во областа на животна средина' },
        { name: 'Управување со води' },
        { name: 'Учество на јавноста' },
        { name: 'Зајакнување на капацитети' },
        { name: 'Застапување за животната средина' },
        { name: 'Правна помош во областа на животната средина' },
        { name: 'Следење на трошењето на јавните пари во областа на животна средина' },
        { name: 'ЕУ интеграција' },
        { name: 'Транспорт и животна средина' },
        { name: 'Урбан транспорт' },
        { name: 'Промоција на одржлив транспорт' },
        { name: 'Енергетика' },
        { name: 'Енергетска ефикасност' },
        { name: 'Обновливи извори' },
        { name: 'Климатски промени' },
        { name: 'Заштита на природа' },
        { name: 'Биодиверзитет' },
        { name: 'Органско земјоделство' },
        { name: 'Рурален развој' },
        { name: 'Заштита на шумите' },
        { name: 'Безбедност на храна' },
        { name: 'Заштита на животни' },
        { name: 'Одржлив лов и риболов' },
        { name: 'Отпад' },
        { name: 'Комунален отпад' },
        { name: 'Опасен отпад' },
        { name: 'Електричен и електронски отпад' },
        { name: 'Отпад од индустрија' },
        { name: 'Историско загадување' },
        { name: 'Интегрирано спречување и контрола на загадување' },
        { name: 'Хемикалии и тешки метали' },
        { name: 'Одржливо користење на ресурси' },
        { name: 'Одржлив развој' },
        { name: 'Одржлив туризам' },
        { name: 'Политики за животна средина' },
        { name: 'Поддршка на граѓаните по прашања од животна средина' },
        { name: 'Лобирање за животна средина' },
        { name: 'Ранливите групи и животната средина' },
        { name: 'Квалитет на воздух' },
        { name: 'Подигнување на јавна свест за животна средина' },
        { name: 'Заштита на почви' },
        { name: 'Услуги во областа на животната средина' },
        { name: 'Заштита од бучава' }
    ]
)

Expertise.create(
    [
        { name: 'Здравствени аспекти на животната средина' },
        { name: 'Истражување во областа на животна средина' },
        { name: 'Управување со води' },
        { name: 'Зајакнување на капацитети' },
        { name: 'Правна помош во областа на животната средина' },
        { name: 'ЕУ интеграција' },
        { name: 'Транспорт и животна средина' },
        { name: 'Урбан транспорт' },
        { name: 'Промоција на одржлив транспорт' },
        { name: 'Енергетика' },
        { name: 'Енергетска ефикасност' },
        { name: 'Обновливи извори' },
        { name: 'Климатски промени' },
        { name: 'Заштита на природа' },
        { name: 'Биодиверзитет' },
        { name: 'Органско земјоделство' },
        { name: 'Рурален развој' },
        { name: 'Заштита на шумите' },
        { name: 'Безбедност на храна' },
        { name: 'Заштита на животни' },
        { name: 'Лов и риболов' },
        { name: 'Отпад' },
        { name: 'Комунален отпад' },
        { name: 'Опасен отпад' },
        { name: 'Електричен и електронски отпад' },
        { name: 'Отпад од индустрија' },
        { name: 'Историско загадување' },
        { name: 'Интегрирано спречување и контрола на загадување' },
        { name: 'Оцена на влијание врз животната средина' },
        { name: 'Стратешка оцена на влијание врз животната средина' },
        { name: 'Физибилити студии' },
        { name: 'Просторни планови и советувања' },
        { name: 'ЛЕАП/ НЕАП' },
        { name: 'Хемикалии и тешки метали' },
        { name: 'Одржливо користење на ресурси' },
        { name: 'Одржлив развој' },
        { name: 'Одржлив туризам' },
        { name: 'Ранливите групи и животната средина' },
        { name: 'Квалитет на воздух' },
        { name: 'Заштита на почви' },
        { name: 'Лабораториски испитувања и анализи' },
        { name: 'Заштита од бучава' }
    ]
)

MediaScope.create(
    [
        { name: 'Национален'},
        { name: 'Вардарски регион' },
        { name: 'Источен регион' },
        { name: 'Југозападен регион' },
        { name: 'Југоисточен регион' },
        { name: 'Пелагониски регион' },
        { name: 'Полошки регион' },
        { name: 'Североисточен регион' },
        { name: 'Скопски регион' }
    ]
)

MediaType.create(
    [
        { name: 'Радио' },
        { name: 'ТВ' },
        { name: 'Пишан медиум' },
        { name: 'Интернет портал' }
    ]
)