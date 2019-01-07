.class public final Lcom/alipay/ma/util/b;
.super Ljava/lang/Object;
.source "StringEncodeUtils.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-string/jumbo v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/ma/util/b;->a:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "SJIS"

    sget-object v1, Lcom/alipay/ma/util/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "EUC_JP"

    sget-object v1, Lcom/alipay/ma/util/b;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/ma/util/b;->b:Z

    .line 28
    return-void

    .line 29
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static a([BZ)Ljava/lang/String;
    .locals 25
    .param p0, "needGuessEncodeData"    # [B
    .param p1, "useOldEncodeGuess"    # Z

    .prologue
    .line 157
    const/4 v3, 0x0

    .line 159
    .local v3, "encodeString":Ljava/lang/String;
    if-eqz p0, :cond_1a

    :try_start_0
    move-object/from16 v0, p0

    array-length v4, v0

    if-lez v4, :cond_1a

    .line 1042
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    .line 1043
    const/16 v16, 0x0

    .line 1044
    const/4 v15, 0x0

    .line 1045
    const/4 v14, 0x0

    .line 1046
    const/4 v11, 0x0

    .line 1047
    const/4 v10, 0x0

    .line 1048
    const/4 v9, 0x0

    .line 1049
    const/4 v12, 0x0

    .line 1050
    const/4 v8, 0x1

    .line 1051
    const/4 v7, 0x1

    .line 1204
    const/4 v6, 0x1

    .line 1205
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    array-length v4, v0

    .line 1207
    :goto_0
    const/4 v5, 0x0

    move/from16 v17, v5

    move/from16 v18, v6

    :goto_1
    move/from16 v0, v17

    if-ge v0, v4, :cond_8

    if-eqz v18, :cond_8

    .line 1208
    sub-int v20, v4, v17

    .line 1209
    aget-byte v5, p0, v17

    and-int/lit16 v0, v5, 0xff

    move/from16 v21, v0

    .line 1210
    const/4 v5, 0x1

    move/from16 v0, v20

    if-le v0, v5, :cond_1

    add-int/lit8 v5, v17, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    move v13, v5

    .line 1211
    :goto_2
    const/4 v5, 0x2

    move/from16 v0, v20

    if-le v0, v5, :cond_2

    add-int/lit8 v5, v17, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    move v6, v5

    .line 1212
    :goto_3
    const/4 v5, 0x3

    move/from16 v0, v20

    if-le v0, v5, :cond_3

    add-int/lit8 v5, v17, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 1213
    :goto_4
    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xf8

    move/from16 v20, v0

    const/16 v22, 0xf0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    and-int/lit16 v0, v13, 0xc0

    move/from16 v20, v0

    const/16 v22, 0x80

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    and-int/lit16 v0, v6, 0xc0

    move/from16 v20, v0

    const/16 v22, 0x80

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    and-int/lit16 v5, v5, 0xc0

    const/16 v20, 0x80

    move/from16 v0, v20

    if-ne v5, v0, :cond_4

    .line 1217
    add-int/lit8 v5, v17, 0x4

    move/from16 v17, v5

    goto :goto_1

    .line 1205
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1210
    :cond_1
    const/4 v5, 0x0

    move v13, v5

    goto :goto_2

    .line 1211
    :cond_2
    const/4 v5, 0x0

    move v6, v5

    goto :goto_3

    .line 1212
    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    .line 1218
    :cond_4
    move/from16 v0, v21

    and-int/lit16 v5, v0, 0xf0

    const/16 v20, 0xe0

    move/from16 v0, v20

    if-ne v5, v0, :cond_5

    and-int/lit16 v5, v13, 0xc0

    const/16 v20, 0x80

    move/from16 v0, v20

    if-ne v5, v0, :cond_5

    and-int/lit16 v5, v6, 0xc0

    const/16 v6, 0x80

    if-ne v5, v6, :cond_5

    .line 1221
    add-int/lit8 v5, v17, 0x3

    move/from16 v17, v5

    goto/16 :goto_1

    .line 1222
    :cond_5
    move/from16 v0, v21

    and-int/lit16 v5, v0, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_6

    and-int/lit16 v5, v13, 0xc0

    const/16 v6, 0x80

    if-ne v5, v6, :cond_6

    .line 1224
    add-int/lit8 v5, v17, 0x2

    move/from16 v17, v5

    goto/16 :goto_1

    .line 1225
    :cond_6
    move/from16 v0, v21

    and-int/lit16 v5, v0, 0x80

    if-nez v5, :cond_7

    .line 1226
    add-int/lit8 v5, v17, 0x1

    move/from16 v17, v5

    goto/16 :goto_1

    .line 1228
    :cond_7
    const/4 v5, 0x0

    move/from16 v18, v5

    goto/16 :goto_1

    .line 1054
    :cond_8
    if-nez p1, :cond_f

    .line 2169
    const/4 v6, 0x0

    .line 2170
    const/4 v13, 0x1

    .line 2171
    const/4 v5, 0x0

    .line 2172
    const/4 v4, 0x0

    move/from16 v17, v4

    move v4, v5

    :goto_5
    move-object/from16 v0, p0

    array-length v5, v0

    move/from16 v0, v17

    if-ge v0, v5, :cond_2c

    .line 2173
    aget-byte v5, p0, v17

    and-int/lit16 v5, v5, 0xff

    .line 2174
    if-nez v4, :cond_9

    .line 2175
    and-int/lit16 v0, v5, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_2b

    .line 2179
    const/4 v4, 0x1

    .line 2172
    :goto_6
    add-int/lit8 v6, v17, 0x1

    move/from16 v17, v6

    move v6, v5

    goto :goto_5

    .line 2182
    :cond_9
    and-int/lit16 v4, v6, 0xff

    shl-int/lit8 v4, v4, 0x8

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 2183
    const v5, 0xa1a1

    if-lt v4, v5, :cond_a

    const v5, 0xfefe

    if-gt v4, v5, :cond_a

    .line 2184
    const/4 v4, 0x0

    .line 2185
    const/4 v5, 0x0

    goto :goto_6

    .line 2187
    :cond_a
    const/4 v4, 0x0

    .line 2192
    :goto_7
    if-eqz v6, :cond_b

    .line 2193
    const/4 v4, 0x0

    :cond_b
    move v13, v4

    .line 1059
    :goto_8
    const-string/jumbo v4, "StringEncodeUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "The value of useOldEncodeGuess is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", The value is canBeGB2312 is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3029
    sget-object v4, Liir;->a:Liir$a;

    .line 1061
    const/4 v4, 0x0

    move v5, v9

    move v6, v11

    move v9, v14

    move/from16 v11, v16

    move/from16 v23, v7

    move v7, v10

    move v10, v15

    move v15, v4

    move/from16 v4, v23

    :goto_9
    move/from16 v0, v19

    if-ge v15, v0, :cond_19

    if-eqz p1, :cond_c

    if-nez v13, :cond_d

    :cond_c
    if-nez v8, :cond_d

    if-eqz v4, :cond_19

    .line 1062
    :cond_d
    aget-byte v14, p0, v15

    and-int/lit16 v0, v14, 0xff

    move/from16 v16, v0

    .line 1063
    if-eqz p1, :cond_2a

    if-eqz v13, :cond_2a

    .line 1064
    const/16 v14, 0x7f

    move/from16 v0, v16

    if-le v0, v14, :cond_2a

    .line 1066
    const/16 v14, 0xb0

    move/from16 v0, v16

    if-le v0, v14, :cond_2a

    const/16 v14, 0xf7

    move/from16 v0, v16

    if-gt v0, v14, :cond_2a

    add-int/lit8 v14, v15, 0x1

    move/from16 v0, v19

    if-ge v14, v0, :cond_2a

    .line 1068
    add-int/lit8 v13, v15, 0x1

    aget-byte v13, p0, v13

    and-int/lit16 v13, v13, 0xff

    .line 1069
    const/16 v14, 0xa0

    if-le v13, v14, :cond_10

    const/16 v14, 0xf7

    if-gt v13, v14, :cond_10

    .line 1070
    const/4 v13, 0x1

    move v14, v13

    .line 1078
    :goto_a
    if-eqz v8, :cond_29

    .line 1079
    const/16 v13, 0x7f

    move/from16 v0, v16

    if-le v0, v13, :cond_11

    const/16 v13, 0xa0

    move/from16 v0, v16

    if-ge v0, v13, :cond_11

    .line 1080
    const/4 v8, 0x0

    move v13, v12

    move v12, v8

    .line 1088
    :goto_b
    if-eqz v4, :cond_28

    .line 1089
    if-lez v11, :cond_14

    .line 1090
    const/16 v8, 0x40

    move/from16 v0, v16

    if-lt v0, v8, :cond_e

    const/16 v8, 0x7f

    move/from16 v0, v16

    if-eq v0, v8, :cond_e

    const/16 v8, 0xfc

    move/from16 v0, v16

    if-le v0, v8, :cond_13

    .line 1091
    :cond_e
    const/4 v4, 0x0

    move v8, v9

    move v9, v10

    move v10, v11

    move/from16 v23, v6

    move v6, v7

    move/from16 v7, v23

    .line 1061
    :goto_c
    add-int/lit8 v11, v15, 0x1

    move v15, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v12

    move v12, v13

    move v13, v14

    move/from16 v23, v6

    move v6, v7

    move/from16 v7, v23

    goto :goto_9

    .line 1057
    :cond_f
    const/4 v13, 0x1

    goto/16 :goto_8

    .line 1072
    :cond_10
    const/4 v13, 0x0

    move v14, v13

    goto :goto_a

    .line 1081
    :cond_11
    const/16 v13, 0x9f

    move/from16 v0, v16

    if-le v0, v13, :cond_29

    .line 1082
    const/16 v13, 0xc0

    move/from16 v0, v16

    if-lt v0, v13, :cond_12

    const/16 v13, 0xd7

    move/from16 v0, v16

    if-eq v0, v13, :cond_12

    const/16 v13, 0xf7

    move/from16 v0, v16

    if-ne v0, v13, :cond_29

    .line 1083
    :cond_12
    add-int/lit8 v12, v12, 0x1

    move v13, v12

    move v12, v8

    goto :goto_b

    .line 1093
    :cond_13
    add-int/lit8 v8, v11, -0x1

    move/from16 v23, v7

    move v7, v6

    move/from16 v6, v23

    move/from16 v24, v9

    move v9, v10

    move v10, v8

    move/from16 v8, v24

    goto :goto_c

    .line 1095
    :cond_14
    const/16 v8, 0x80

    move/from16 v0, v16

    if-eq v0, v8, :cond_15

    const/16 v8, 0xa0

    move/from16 v0, v16

    if-eq v0, v8, :cond_15

    const/16 v8, 0xef

    move/from16 v0, v16

    if-le v0, v8, :cond_16

    .line 1096
    :cond_15
    const/4 v4, 0x0

    move v8, v9

    move v9, v10

    move v10, v11

    move/from16 v23, v6

    move v6, v7

    move/from16 v7, v23

    goto :goto_c

    .line 1097
    :cond_16
    const/16 v8, 0xa0

    move/from16 v0, v16

    if-le v0, v8, :cond_17

    const/16 v8, 0xe0

    move/from16 v0, v16

    if-ge v0, v8, :cond_17

    .line 1098
    add-int/lit8 v10, v10, 0x1

    .line 1099
    const/4 v8, 0x0

    .line 1100
    add-int/lit8 v6, v9, 0x1

    .line 1101
    if-le v6, v7, :cond_27

    move v7, v8

    move v9, v10

    move v8, v6

    move v10, v11

    .line 1102
    goto :goto_c

    .line 1104
    :cond_17
    const/16 v8, 0x7f

    move/from16 v0, v16

    if-le v0, v8, :cond_18

    .line 1105
    add-int/lit8 v9, v11, 0x1

    .line 1106
    const/4 v8, 0x0

    .line 1107
    add-int/lit8 v6, v6, 0x1

    .line 1108
    if-le v6, v5, :cond_26

    move v5, v6

    move/from16 v23, v7

    move v7, v6

    move/from16 v6, v23

    move/from16 v24, v10

    move v10, v9

    move/from16 v9, v24

    .line 1109
    goto/16 :goto_c

    .line 1112
    :cond_18
    const/4 v8, 0x0

    .line 1113
    const/4 v6, 0x0

    move v9, v10

    move v10, v11

    move/from16 v23, v7

    move v7, v6

    move/from16 v6, v23

    goto/16 :goto_c

    .line 1119
    :cond_19
    if-eqz v18, :cond_1b

    .line 1120
    const-string/jumbo v3, "UTF8"

    .line 165
    :cond_1a
    :goto_d
    return-object v3

    .line 1122
    :cond_1b
    if-eqz v4, :cond_1c

    if-lez v11, :cond_1c

    .line 1123
    const/4 v4, 0x0

    .line 1125
    :cond_1c
    if-eqz v13, :cond_1d

    .line 1126
    const-string/jumbo v3, "GB2312"

    goto :goto_d

    .line 1130
    :cond_1d
    if-eqz v4, :cond_1f

    sget-boolean v6, Lcom/alipay/ma/util/b;->b:Z

    if-nez v6, :cond_1e

    const/4 v6, 0x3

    if-ge v7, v6, :cond_1e

    const/4 v6, 0x3

    if-lt v5, v6, :cond_1f

    .line 1131
    :cond_1e
    const-string/jumbo v3, "SJIS"

    goto :goto_d

    .line 1140
    :cond_1f
    if-eqz v8, :cond_23

    if-eqz v4, :cond_23

    .line 1141
    const/4 v4, 0x2

    if-ne v7, v4, :cond_20

    const/4 v4, 0x2

    if-eq v10, v4, :cond_21

    :cond_20
    mul-int/lit8 v4, v12, 0xa

    move/from16 v0, v19

    if-lt v4, v0, :cond_22

    :cond_21
    const-string/jumbo v3, "SJIS"

    goto :goto_d

    :cond_22
    const-string/jumbo v3, "ISO8859_1"

    goto :goto_d

    .line 1146
    :cond_23
    if-eqz v8, :cond_24

    .line 1147
    const-string/jumbo v3, "ISO8859_1"

    goto :goto_d

    .line 1149
    :cond_24
    if-eqz v4, :cond_25

    .line 1150
    const-string/jumbo v3, "SJIS"

    goto :goto_d

    .line 1153
    :cond_25
    sget-object v3, Lcom/alipay/ma/util/b;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    .line 162
    :catch_0
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "StringEncodeUtil"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 3047
    sget-object v4, Liir;->a:Liir$a;

    goto :goto_d

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_26
    move/from16 v23, v7

    move v7, v6

    move/from16 v6, v23

    move/from16 v24, v10

    move v10, v9

    move/from16 v9, v24

    goto/16 :goto_c

    :cond_27
    move v9, v10

    move v10, v11

    move/from16 v23, v6

    move v6, v7

    move v7, v8

    move/from16 v8, v23

    goto/16 :goto_c

    :cond_28
    move v8, v9

    move v9, v10

    move v10, v11

    move/from16 v23, v6

    move v6, v7

    move/from16 v7, v23

    goto/16 :goto_c

    :cond_29
    move v13, v12

    move v12, v8

    goto/16 :goto_b

    :cond_2a
    move v14, v13

    goto/16 :goto_a

    :cond_2b
    move v5, v6

    goto/16 :goto_6

    :cond_2c
    move v4, v13

    goto/16 :goto_7
.end method
