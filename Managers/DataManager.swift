//
//  DataManager.swift
//  ContactListSwiftUI
//
//  Created by Gleb Gunin on 06.05.2023.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "Павел",
        "Антон",
        "Григорий",
        "Степан",
        "Влад",
        "Владислав",
        "Игорь",
        "Иван",
        "Михаил",
        "Женя"
    ]
    
    let secondNames = [
        "Часовой",
        "Умный",
        "Грозный",
        "Хитрый",
        "Сильный",
        "Иванов",
        "Братов",
        "Повар",
        "Разработчиков",
        "Компьютерный"
    ]
    
    let phones = [
        "8-800-555-35-35",
        "8-800-555-55-40",
        "8-800-111-55-55",
        "8-999-777-88-11",
        "8-999-666-40-44",
        "8-777-444-42-22",
        "8-800-220-20-20",
        "8-800-222-33-33",
        "8-800-454-43-43",
        "8-800-400-55-35"
    ]
    
    let emails = [
        "my@gmail.com",
        "swift@mail.ru",
        "director@swiftbook.ru",
        "Google@mail.ru",
        "Mail@gmail.com",
        "54t635@mail.com",
        "4334t34@mail.ru",
        "Apple@gmail.com",
        "mail@apple.ru",
        "apple@apple.ru"
    ]
    
    private init() {}
}
