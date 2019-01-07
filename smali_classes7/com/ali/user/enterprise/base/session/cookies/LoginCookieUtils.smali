.class public Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;
.super Ljava/lang/Object;
.source "LoginCookieUtils.java"


# static fields
.field private static final COMMA:C = ','

.field private static final DOMAIN:Ljava/lang/String; = "domain"

.field private static final EQUAL:C = '='

.field private static final EXPIRES:Ljava/lang/String; = "expires"

.field private static final HTTPS:Ljava/lang/String; = "https"

.field private static final HTTP_ONLY:Ljava/lang/String; = "httponly"

.field private static final HTTP_ONLY_LENGTH:I

.field private static final MAX_AGE:Ljava/lang/String; = "max-age"

.field private static final MAX_COOKIE_LENGTH:I = 0x1000

.field private static final PATH:Ljava/lang/String; = "path"

.field private static final PATH_DELIM:C = '/'

.field private static final PERIOD:C = '.'

.field private static final QUESTION_MARK:C = '?'

.field private static final QUOTATION:C = '\"'

.field private static final SECURE:Ljava/lang/String; = "secure"

.field private static final SECURE_LENGTH:I

.field private static final SEMICOLON:C = ';'

.field private static final TAG:Ljava/lang/String; = "login.LoginCookieUtils"

.field private static final WHITE_SPACE:C = ' '


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x6

    sput v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->SECURE_LENGTH:I

    .line 42
    const/16 v0, 0x8

    sput v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->HTTP_ONLY_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expiresCookies(Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;)V
    .locals 2
    .param p0, "cookie"    # Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;

    .prologue
    .line 259
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->expires:J

    .line 260
    return-void
.end method

.method public static getHttpDomin(Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;)Ljava/lang/String;
    .locals 3
    .param p0, "cookie"    # Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->domain:Ljava/lang/String;

    .line 264
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseCookie(Ljava/lang/String;)Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;
    .locals 20
    .param p0, "cookieString"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v8, 0x0

    .line 63
    .local v8, "index":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    .line 68
    .local v10, "length":I
    :goto_0
    if-ltz v8, :cond_1a

    if-ge v8, v10, :cond_1a

    .line 73
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_0

    .line 74
    add-int/lit8 v8, v8, 0x1

    .line 75
    goto :goto_0

    .line 86
    :cond_0
    const/16 v14, 0x3b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 87
    .local v12, "semicolonIndex":I
    const/16 v14, 0x3d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 88
    .local v6, "equalIndex":I
    new-instance v4, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;

    invoke-direct {v4}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;-><init>()V

    .line 96
    .local v4, "cookie":Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;
    const/4 v14, -0x1

    if-eq v12, v14, :cond_1

    if-lt v12, v6, :cond_2

    :cond_1
    const/4 v14, -0x1

    if-ne v6, v14, :cond_6

    .line 98
    :cond_2
    const/4 v14, -0x1

    if-ne v12, v14, :cond_3

    .line 99
    move v12, v10

    .line 101
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->name:Ljava/lang/String;

    .line 102
    const/4 v14, 0x0

    iput-object v14, v4, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->value:Ljava/lang/String;

    .line 131
    :goto_1
    move v8, v12

    .line 134
    :cond_4
    :goto_2
    if-ltz v8, :cond_1b

    if-ge v8, v10, :cond_1b

    .line 139
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-eq v14, v15, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x3b

    if-ne v14, v15, :cond_c

    .line 140
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 141
    goto :goto_2

    .line 104
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->name:Ljava/lang/String;

    .line 107
    add-int/lit8 v14, v10, -0x1

    if-ge v6, v14, :cond_7

    add-int/lit8 v14, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x22

    if-ne v14, v15, :cond_7

    .line 108
    const/16 v14, 0x22

    add-int/lit8 v15, v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 109
    const/4 v14, -0x1

    if-eq v8, v14, :cond_1a

    .line 116
    :cond_7
    const/16 v14, 0x3b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 117
    const/4 v14, -0x1

    if-ne v12, v14, :cond_8

    .line 118
    move v12, v10

    .line 120
    :cond_8
    sub-int v14, v12, v6

    const/16 v15, 0x1000

    if-le v14, v15, :cond_9

    .line 122
    add-int/lit8 v14, v6, 0x1

    add-int/lit8 v15, v6, 0x1

    add-int/lit16 v15, v15, 0x1000

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->value:Ljava/lang/String;

    goto :goto_1

    .line 123
    :cond_9
    add-int/lit8 v14, v6, 0x1

    if-eq v14, v12, :cond_a

    if-ge v12, v6, :cond_b

    .line 125
    :cond_a
    const-string/jumbo v14, ""

    iput-object v14, v4, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->value:Ljava/lang/String;

    goto :goto_1

    .line 127
    :cond_b
    add-int/lit8 v14, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->value:Ljava/lang/String;

    goto :goto_1

    .line 145
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2c

    if-eq v14, v15, :cond_1b

    .line 152
    sub-int v14, v10, v8

    sget v15, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->SECURE_LENGTH:I

    if-lt v14, v15, :cond_d

    sget v14, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->SECURE_LENGTH:I

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "secure"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 153
    sget v14, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->SECURE_LENGTH:I

    add-int/2addr v8, v14

    .line 154
    const/4 v14, 0x1

    iput-boolean v14, v4, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->secure:Z

    .line 155
    if-eq v8, v10, :cond_1b

    .line 157
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x3d

    if-ne v14, v15, :cond_4

    .line 158
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 164
    :cond_d
    sub-int v14, v10, v8

    sget v15, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->HTTP_ONLY_LENGTH:I

    if-lt v14, v15, :cond_e

    sget v14, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->HTTP_ONLY_LENGTH:I

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "httponly"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 165
    sget v14, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->HTTP_ONLY_LENGTH:I

    add-int/2addr v8, v14

    .line 166
    const/4 v14, 0x1

    iput-boolean v14, v4, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->httpOnly:Z

    .line 167
    if-eq v8, v10, :cond_1b

    .line 169
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x3d

    if-ne v14, v15, :cond_4

    .line 170
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 174
    :cond_e
    const/16 v14, 0x3d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 175
    if-lez v6, :cond_19

    .line 176
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 177
    .local v11, "name":Ljava/lang/String;
    const-string/jumbo v14, "expires"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 178
    const/16 v14, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 183
    .local v2, "comaIndex":I
    const/4 v14, -0x1

    if-eq v2, v14, :cond_f

    sub-int v14, v2, v6

    const/16 v15, 0xa

    if-gt v14, v15, :cond_f

    .line 184
    add-int/lit8 v8, v2, 0x1

    .line 187
    .end local v2    # "comaIndex":I
    :cond_f
    const/16 v14, 0x3b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 188
    const/16 v14, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 189
    .local v3, "commaIndex":I
    const/4 v14, -0x1

    if-ne v12, v14, :cond_11

    const/4 v14, -0x1

    if-ne v3, v14, :cond_11

    .line 190
    move v8, v10

    .line 198
    :goto_3
    add-int/lit8 v14, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 201
    .local v13, "value":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x2

    if-le v14, v15, :cond_10

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x22

    if-ne v14, v15, :cond_10

    .line 202
    const/16 v14, 0x22

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 203
    .local v5, "endQuote":I
    if-lez v5, :cond_10

    .line 204
    const/4 v14, 0x1

    invoke-virtual {v13, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 207
    .end local v5    # "endQuote":I
    :cond_10
    const-string/jumbo v14, "expires"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 209
    :try_start_0
    invoke-static {v13}, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime;->parse(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v4, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->expires:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 210
    :catch_0
    move-exception v7

    .line 211
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v14, "login.LoginCookieUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "illegal format for expires: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v7}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 191
    .end local v7    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v13    # "value":Ljava/lang/String;
    :cond_11
    const/4 v14, -0x1

    if-ne v12, v14, :cond_12

    .line 192
    move v8, v3

    goto :goto_3

    .line 193
    :cond_12
    const/4 v14, -0x1

    if-ne v3, v14, :cond_13

    .line 194
    move v8, v12

    goto :goto_3

    .line 196
    :cond_13
    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_3

    .line 213
    .restart local v13    # "value":Ljava/lang/String;
    :cond_14
    const-string/jumbo v14, "max-age"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 215
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    mul-long v16, v16, v18

    add-long v14, v14, v16

    iput-wide v14, v4, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->expires:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 216
    :catch_1
    move-exception v7

    .line 217
    .local v7, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v14, "login.LoginCookieUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "illegal format for max-age: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v7}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 219
    .end local v7    # "ex":Ljava/lang/NumberFormatException;
    :cond_15
    const-string/jumbo v14, "path"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 221
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_4

    .line 222
    iput-object v13, v4, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->path:Ljava/lang/String;

    goto/16 :goto_2

    .line 224
    :cond_16
    const-string/jumbo v14, "domain"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 225
    const/16 v14, 0x2e

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 226
    .local v9, "lastPeriod":I
    if-nez v9, :cond_17

    .line 228
    const/4 v14, 0x0

    iput-object v14, v4, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->domain:Ljava/lang/String;

    goto/16 :goto_2

    .line 232
    :cond_17
    add-int/lit8 v14, v9, 0x1

    :try_start_2
    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 237
    :catch_2
    move-exception v14

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 238
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2e

    if-eq v14, v15, :cond_18

    .line 240
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "."

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 244
    :cond_18
    iput-object v13, v4, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->domain:Ljava/lang/String;

    goto/16 :goto_2

    .line 248
    .end local v3    # "commaIndex":I
    .end local v9    # "lastPeriod":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_19
    move v8, v10

    goto/16 :goto_2

    .line 254
    .end local v4    # "cookie":Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;
    .end local v6    # "equalIndex":I
    .end local v12    # "semicolonIndex":I
    :cond_1a
    const/4 v4, 0x0

    :cond_1b
    return-object v4
.end method
