//
//  DataManager.swift
//  MassIndexApp
//
//  Created by Maksim Grischenko on 14.05.2022.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let exercisesWeightGain = [
        "Отжимания широким хватом",
        "Приседания с гантелей",
        "Подтягивания обратным хватом",
        "Молотки с гантелями",
        "Подъем ног лежа"
    ]
    
    let descriptionWeightGain = [
        """
        1. Примите упор лежа, поставив руки намного шире плеч
        2. Сделайте вдох, согните локти и опустите грудь к полу
        3. С выдохом поднимите корпус в стартовую позицию, распрямляя руки в локтях и напрягая грудные мышцы
        4. После паузы в верхней точке повторите движение рекомендуемое количество раз
        """,
        """
        1. Стойте ровно. Возьмите гантель по бокам двумя руками и поднимите к груди
        2. Начинайте приседать, чтобы опустить корпус. Не округляйте спину и держите вес на пятках
        3. Не сводите колени, продолжайте, пока не достигните позиции полного приседа
        4. Разгибайте ноги, направляя усилия через пятки, чтобы вернуться в стартовую позицию
        5. Выполните рекомендуемое количество повторений
        """,
        """
        1. Возьмитесь за перекладину ладонями на себя, хват чуть уже ширины плеч
        2. Повисните на турнике на прямых руках, подайте грудь вперед и прогните проясницу
        3. Делая выдох, подтягивайтесь, пока подбородок не окажется на уровне перекладины
        4. На секунду задержитесь в верхней точке, затем медле›нно опускайте корпус в стартовую позицию
        5. Выполните рекомендуемое число повторений
        """,
        """
        1. Встаньте ровно с парой гантелей в прямых руках. Локти держите близко к корпусу
        2. За счет сгибания в локтевом суставе поднимите гантели до полного сокращения бицепса
        3. В верхней точке задержитесь и дополнительно сократите бицепс
        4. После короткой паузы медленно опускайте гантели в стартовую позицию
        5. Выполните рекомендуемое число повторений
        """,
        """
        1. Начните с положения лежа. Ноги выпрямлены, руки вытянуты вдоль корпуса
        2. Прижмите поясницу к полу и начните поднимать ноги на себя, сгибая бедра и колени
        3. Продолжайте поднимать ноги до положения перпендикулярно полу
        4. Толкните таз вверх так, чтобы ягодицы оторвались от пола
        5. После короткой паузы плавно возвращайтесь в стартовую позицию
        6. Выполните рекомендуемое число повторений
        """
    ]
    let repsWeightGain = [12, 12, 10, 12, 15]
    let setsWeightGain = [4, 3, 3, 4, 3]
    let picturesWeightGain = [
        "pushUps.jpg",
        "squats.jpg",
        "pullUps.jpg",
        "bicepLift.jpg",
        "pressLegLift.jpg"
    ]
   
    let exercisesWeightLoss = [
        "Выпрыгивания из положения сидя",
        "Прыжки на скакалке",
        "Берпи",
        "Бег с высоким подниманием бедра",
        "Лодочка"
    ]
    
    let descriptionWeightLoss = [
        """
        1. Встаньте ровно, ноги на ширине плеч, руки уберите за голову
        2. Сделайте приседание и выпрыгните вверх
        3. Выполните рекомендуемое число повторений
        """,
        """
        1. Встать прямо
        2. Скакалку закинуть за спину
        3. Взгляд направить перед собой
        4. Слегка согнуть руки в локтях
        5. Кисти отвести на 15-20 см. от бёдер
        6. Находясь в исходном положении, начать вращать скакалку рекомендуемое число повторений
        """,
        """
        1. Расставьте ноги по ширине плеч и присядьте до конца, согнув ноги в коленях
        2. Упершись ладонями в пол, надо прыжком принять позу планки на вытянутых руках
        3. В планке пальцы рук направлены строго вперед, ступни упираются на пальцы ног, спина ровная
        4. Опуститесь вниз, согнув руки в локтях, и снова вернитесь в прежнее положение планки – это отжимание
        5. Сделайте прыжок вперед, заняв положение на корточках
        6. Находясь на корточках ладони лежат на полу, ягодицы вниз, бедра параллельны полу, коленки между локтей
        7. Прыжок вверх, из положения сидя, и вскидывание рук вверх во время прыжка
        8. Выполните рекомендуемое число повторений
        """,
        """
        1. Из положения стоя взрывными движениями начинайте выносить колено вверх до параллели с землёй. Спина прямая
        2. Выполните рекомендуемое число повторений
        """,
        """
        1. Лягте лицом вниз на пол и вытяните руки перед собой
        2. Одновременно поднимите руки, ноги и грудь над полом
        3. Задержитесь в этом положении на 2 секунды, сделав выдох
        4. Делая вдох, медленно опустите руки, ноги и грудь в стартовую позицию
        5. Выполните рекомендуемое число повторений
        """
        ]
    
    let repsWeightLoss = [15, 20, 12, 30, 15]
    let setsWeightLoss = [3, 3, 2, 3, 3]
    let picturesWeightLoss = [
        "jumpingOut.jpg",
        "skippingRope.jpg",
        "burpee.jpg",
        "runningInPlace.jpg",
        "boatPress.jpg"
    ]
    
    let exercisesweightSupport = [
        "Отжимания широким хватом",
        "Приседания с гантелей",
        "Молотки с гантелями",
        "Берпи",
        "Подъем ног лежа"
    ]
    
    let descriptionWeightSupport = [
    """
    1. Примите упор лежа, поставив руки намного шире плеч
    2. Сделайте вдох, согните локти и опустите грудь к полу
    3. С выдохом поднимите корпус в стартовую позицию, распрямляя руки в локтях и напрягая грудные мышцы
    4. После паузы в верхней точке повторите движение рекомендуемое количество раз
    """,
    """
    1. Стойте ровно. Возьмите гантель по бокам двумя руками и поднимите к груди
    2. Начинайте приседать, чтобы опустить корпус. Не округляйте спину и держите вес на пятках
    3. Не сводите колени, продолжайте, пока не достигните позиции полного приседа
    4. Разгибайте ноги, направляя усилия через пятки, чтобы вернуться в стартовую позицию
    5. Выполните рекомендуемое количество повторений
    """,
    """
    1. Встаньте ровно с парой гантелей в прямых руках. Локти держите близко к корпусу
    2. За счет сгибания в локтевом суставе поднимите гантели до полного сокращения бицепса
    3. В верхней точке задержитесь и дополнительно сократите бицепс
    4. После короткой паузы медленно опускайте гантели в стартовую позицию
    5. Выполните рекомендуемое число повторений
    """,
    """
    1. Расставьте ноги по ширине плеч и присядьте до конца, согнув ноги в коленях
    2. Упершись ладонями в пол, надо прыжком принять позу планки на вытянутых руках
    3. В планке пальцы рук направлены строго вперед, ступни упираются на пальцы ног, спина ровная
    4. Опуститесь вниз, согнув руки в локтях, и снова вернитесь в прежнее положение планки – это отжимание
    5. Сделайте прыжок вперед, заняв положение на корточках
    6. Находясь на корточках ладони лежат на полу, ягодицы вниз, бедра параллельны полу, коленки между локтей
    7. Прыжок вверх, из положения сидя, и вскидывание рук вверх во время прыжка
    8. Выполните рекомендуемое число повторений
    """,
    """
    1. Начните с положения лежа. Ноги выпрямлены, руки вытянуты вдоль корпуса
    2. Прижмите поясницу к полу и начните поднимать ноги на себя, сгибая бедра и колени
    3. Продолжайте поднимать ноги до положения перпендикулярно полу
    4. Толкните таз вверх так, чтобы ягодицы оторвались от пола
    5. После короткой паузы плавно возвращайтесь в стартовую позицию
    6. Выполните рекомендуемое число повторений
    """
    ]
    
    let repsWeightSupport = [10, 10, 10, 10, 15]
    let setsWeightSupport = [3, 3, 3, 2, 3]
    let picturesWeightSupport = [
        "pushUps.jpg",
        "squats.jpg",
        "bicepLift.jpg",
        "burpee.jpg",
        "pressLegLift.jpg"
    ]
    private init() {}
}
