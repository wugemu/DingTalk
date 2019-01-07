.class public Lali/mmpc/util/VerfCodeGenerator;
.super Ljava/lang/Object;
.source "VerfCodeGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIpFromVerfCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "localIp"    # Ljava/lang/String;
    .param p1, "verfCode"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 80
    .local v11, "verfCodeUpper":Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lali/mmpc/util/VerfCodeGenerator;->ipBlockChar2Int(C)I

    move-result v0

    .line 81
    .local v0, "firstBlockValue":I
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lali/mmpc/util/VerfCodeGenerator;->ipBlockChar2Int(C)I

    move-result v9

    .line 82
    .local v9, "secondBlockValue":I
    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lali/mmpc/util/VerfCodeGenerator;->ipBlockChar2Int(C)I

    move-result v10

    .line 83
    .local v10, "thirdBlockValue":I
    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lali/mmpc/util/VerfCodeGenerator;->ipBlockChar2Int(C)I

    move-result v2

    .line 84
    .local v2, "fourthBlockValue":I
    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lali/mmpc/util/VerfCodeGenerator;->ipBlockChar2Int(C)I

    move-result v1

    .line 86
    .local v1, "fiveBlockValue":I
    const-string/jumbo v12, "\\."

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "ipArr":[Ljava/lang/String;
    aget-object v12, v3, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 88
    .local v4, "ipFirstPart":I
    const/16 v12, 0xa

    if-eq v4, v12, :cond_0

    const/16 v12, 0x1e

    if-ne v4, v12, :cond_1

    .line 89
    :cond_0
    and-int/lit8 v12, v0, 0x10

    if-eqz v12, :cond_2

    .line 90
    const/16 v4, 0x1e

    .line 97
    :cond_1
    :goto_0
    or-int/lit8 v8, v0, 0x0

    .line 98
    .local v8, "ipValue":I
    shl-int/lit8 v8, v8, 0x5

    .line 99
    or-int/2addr v8, v9

    .line 100
    shl-int/lit8 v8, v8, 0x5

    .line 101
    or-int/2addr v8, v10

    .line 102
    shl-int/lit8 v8, v8, 0x5

    .line 103
    or-int/2addr v8, v2

    .line 104
    shl-int/lit8 v8, v8, 0x5

    .line 105
    or-int/2addr v8, v1

    .line 107
    const/high16 v12, 0xff0000

    and-int/2addr v12, v8

    shr-int/lit8 v12, v12, 0x10

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "ipSecondPart":Ljava/lang/String;
    const v12, 0xff00

    and-int/2addr v12, v8

    shr-int/lit8 v12, v12, 0x8

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "ipThirdPart":Ljava/lang/String;
    and-int/lit16 v12, v8, 0xff

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, "ipFourthPart":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 92
    .end local v5    # "ipFourthPart":Ljava/lang/String;
    .end local v6    # "ipSecondPart":Ljava/lang/String;
    .end local v7    # "ipThirdPart":Ljava/lang/String;
    .end local v8    # "ipValue":I
    :cond_2
    const/16 v4, 0xa

    goto :goto_0
.end method

.method public static getVerfCodeFromLocalIp(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "localIp"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string/jumbo v12, "\\."

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "ipArr":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v5, v4, v12

    .line 37
    .local v5, "ipFirstPart":Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 38
    .local v7, "ipSecondPart":I
    const/4 v12, 0x2

    aget-object v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 39
    .local v8, "ipThirdPart":I
    const/4 v12, 0x3

    aget-object v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 42
    .local v6, "ipFourthPart":I
    or-int/lit8 v3, v7, 0x0

    .line 43
    .local v3, "ip":I
    shl-int/lit8 v3, v3, 0x8

    .line 44
    or-int/2addr v3, v8

    .line 45
    shl-int/lit8 v3, v3, 0x8

    .line 46
    or-int/2addr v3, v6

    .line 47
    const-string/jumbo v12, "30"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 48
    const/high16 v12, 0x1000000

    or-int/2addr v3, v12

    .line 58
    :cond_0
    and-int/lit8 v12, v3, 0x1f

    invoke-static {v12}, Lali/mmpc/util/VerfCodeGenerator;->ipBlockInt2Char(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "firstStrValue":Ljava/lang/String;
    and-int/lit16 v12, v3, 0x3e0

    shr-int/lit8 v12, v12, 0x5

    .line 61
    invoke-static {v12}, Lali/mmpc/util/VerfCodeGenerator;->ipBlockInt2Char(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, "secondStrValue":Ljava/lang/String;
    and-int/lit16 v12, v3, 0x7c00

    shr-int/lit8 v12, v12, 0xa

    .line 63
    invoke-static {v12}, Lali/mmpc/util/VerfCodeGenerator;->ipBlockInt2Char(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 64
    .local v10, "thirdStrValue":Ljava/lang/String;
    const v12, 0xf8000

    and-int/2addr v12, v3

    shr-int/lit8 v12, v12, 0xf

    .line 65
    invoke-static {v12}, Lali/mmpc/util/VerfCodeGenerator;->ipBlockInt2Char(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "fourthStrValue":Ljava/lang/String;
    const/high16 v12, 0x1f00000

    and-int/2addr v12, v3

    shr-int/lit8 v12, v12, 0x14

    .line 67
    invoke-static {v12}, Lali/mmpc/util/VerfCodeGenerator;->ipBlockInt2Char(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "fiveStrValue":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 72
    .local v11, "verfCode":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method

.method private static ipBlockChar2Int(C)I
    .locals 1
    .param p0, "charValue"    # C

    .prologue
    .line 23
    const/16 v0, 0x31

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 24
    add-int/lit8 v0, p0, -0x31

    .line 30
    :goto_0
    return v0

    .line 25
    :cond_0
    const/16 v0, 0x43

    if-lt p0, v0, :cond_1

    const/16 v0, 0x4e

    if-gt p0, v0, :cond_1

    .line 26
    add-int/lit8 v0, p0, 0x9

    add-int/lit8 v0, v0, -0x43

    goto :goto_0

    .line 27
    :cond_1
    const/16 v0, 0x50

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    .line 28
    add-int/lit8 v0, p0, 0x15

    add-int/lit8 v0, v0, -0x50

    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static ipBlockInt2Char(I)C
    .locals 1
    .param p0, "byteValue"    # I

    .prologue
    .line 12
    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-gt p0, v0, :cond_0

    .line 13
    add-int/lit8 v0, p0, 0x31

    int-to-char v0, v0

    .line 19
    :goto_0
    return v0

    .line 14
    :cond_0
    const/16 v0, 0x9

    if-lt p0, v0, :cond_1

    const/16 v0, 0x14

    if-gt p0, v0, :cond_1

    .line 15
    add-int/lit8 v0, p0, -0x9

    add-int/lit8 v0, v0, 0x43

    int-to-char v0, v0

    goto :goto_0

    .line 16
    :cond_1
    const/16 v0, 0x15

    if-lt p0, v0, :cond_2

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_2

    .line 17
    add-int/lit8 v0, p0, -0x15

    add-int/lit8 v0, v0, 0x50

    int-to-char v0, v0

    goto :goto_0

    .line 19
    :cond_2
    const/16 v0, 0x20

    goto :goto_0
.end method
