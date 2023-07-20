import sender_stand_request


def test_check_status_code_200():
    track_order = sender_stand_request.get_order_by_track_number()
    assert track_order.status_code == 200


test_check_status_code_200()
# Варвара Трофимова, 6-я когорта — Финальный проект. Инженер по тестированию плюс