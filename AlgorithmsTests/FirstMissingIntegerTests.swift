//
//  FirstMissingIntegerTests.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 2/21/17.
//  Copyright © 2017 Ruslan Mansurov. All rights reserved.
//

import XCTest

class FirstMissingIntegerTests: XCTestCase {
    
    func testWithOneElement() {
        var input = [1]
        var expectedOutput = 2
        var output = firstMissingPositive(array: input)
        XCTAssertEqual(output, expectedOutput)
        
        input = [0]
        expectedOutput = 1
        output = firstMissingPositive(array: input)
        XCTAssertEqual(output, expectedOutput)
        
        input = [8]
        expectedOutput = 1
        output = firstMissingPositive(array: input)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testWithTwoElements() {
        var input = [1, 2]
        var expectedOutput = 3
        var output = firstMissingPositive(array: input)
        XCTAssertEqual(output, expectedOutput)
        
        input = [10, 1]
        expectedOutput = 2
        output = firstMissingPositive(array: input)
        XCTAssertEqual(output, expectedOutput)
        
        input = [1, 1]
        expectedOutput = 2
        output = firstMissingPositive(array: input)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testComplexCases() {
        var input = [1, 2, 3]
        var expectedOutput = 4
        var output = firstMissingPositive(array: input)
        XCTAssertEqual(output, expectedOutput)
        
        
        input = [7, 2, 4, -1, 5, 3, 1, 6]
        expectedOutput = 8
        output = firstMissingPositive(array: input)
        XCTAssertEqual(output, expectedOutput)
        
        input = [222, 222, 222]
        expectedOutput = 1
        output = firstMissingPositive(array: input)
        XCTAssertEqual(output, expectedOutput)
        
        input = [1, 2, 1000]
        expectedOutput = 3
        output = firstMissingPositive(array: input)
        XCTAssertEqual(output, expectedOutput)
        
        input = [1, 0, 3, 888, 99, 200, 82]
        expectedOutput = 2
        output = firstMissingPositive(array: input)
        XCTAssertEqual(output, expectedOutput)
        
        input = [ 177, 415, 425, 460, 820, 647, 123, 781, 334, 597, 641, 874, 283, 724, 894, 475, 403, 913, 982, 335, 393, 985, 436, 666, 791, 510, 642, 328, 836, 169, 643, 695, 381, 607, 396, 245, 512, 681, 33, 94, 879, 646, 753, 567, 201, 841, 61, 789, 228, 940, 6, 267, 520, 305, 620, 214, 748, 755, 170, 499, 173, 505, 83, 120, 448, 962, 763, 936, 368, 367, 343, 984, 48, 922, 954, 885, 980, 610, 235, 497, 466, 699, 500, 493, 976, 964, 764, 978, 684, 59, 429, 223, 90, 579, 191, 661, 754, 242, 413, 835, 159, 792, 486, 241, 189, 270, 735, 966, 51, 258, 149, 941, 288, 905, 828, 621, 523, 178, 254, 838, 32, 418, 49, 581, 71, 916, 917, 834, 968, 773, 7, 131, 895, 693, 23, 694, 663, 97, 395, 683, 402, 526, 550, 312, 931, 366, 965, 669, 952, 881, 903, 900, 937, 388, 404, 949, 269, 993, 437, 565, 992, 211, 710, 43, 389, 939, 540, 255, 382, 715, 557, 91, 19, 777, 563, 624, 969, 337, 200, 904, 914, 291, 573, 357, 67, 898, 298, 465, 574, 57, 165, 202, 358, 199, 758, 98, 5, 73, 315, 787, 673, 873, 468, -5, 947, 262, 145, 845, 203, 40, 488, 548, 442, 830, -3, 842, 945, 653, 39, 430, 64, 36, 405, 972, 374, 893, 498, 342, 75, 453, 320, 385, 161, 572, 745, 609, 568, 387, 803, 751, 272, 515, 250, 678, 229, 544, 856, 243, 674, 230, 195, 456, 148, 85, 264, 439, 772, 447, 866, 650, 490, 209, 996, 750, 304, 266, 156, 492, 994, 837, 384, 530, 615, 816, 770, 942, 421, 970, 362, 654, 855, 593, 861, 727, 731, 185, 531, 219, 455, 485, 65, 29, 659, 226, 128, 252, 761, 155, 662, 717, 240, 166, 974, 756, 140, 135, 213, 686, 356, 37, 84, 541, 274, 920, 804, 995, 483, 507, 555, 657, 42, 749, 599, 912, 238, 630, 955, 115, 584, 680, 360, 752, 330, 664, 344, 822, 886, -1, 218, 692, 909, 603, 948, 125, 870, 364, 208, 351, 644, 296, 776, 237, 743, 394, 93, 293, 784, 525, 655, 551, 164, 56, 559, 843, 412, 162, 519, 103, 583, 121, 326, 451, 564, 150, 411, 299, 608, 259, 462, 513, 783, 860, 633, 997, 457, 848, 182, 363, 802, 831, 4, 427, 476, 915, 248, 355, 130, 257, 967, 373, -4, 158, 511, 809, 281, 306, 207, 868, 119, 440, 619, 407, 467, 902, 80, 521, 687, 21, 983, 739, 192, 495, 400, 825, 604, 839, 361, 768, 742, 877, 632, 234, 617, 611, 986, 261, 350, 424, 89, 852, 227, 184, 676, 728, 471, 10, 637, 999, 449, 817, 979, 778, 225, 179, 514, 546, 631, 263, 53, 132, 891, 896, 518, 811, 106, 522, 706, 236, 989, 206, 1000, 311, 851, 533, 452, 372, 547, 52, 489, 774, 1, 104, 729, 660, 370, 951, 445, 625, 215, 921, 27, 55, 542, 346, 354, 443, 878, 700, 190, 72, 588, 398, 444, 958, 294, 779, 556, 496, 138 ]
        expectedOutput = 2
        output = firstMissingPositive(array: input)
        XCTAssertEqual(output, expectedOutput)
    }
    
}
