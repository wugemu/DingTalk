.class public Lcom/ali/user/open/a/e;
.super Ljava/lang/Object;
.source "LoginCookieUtils.java"


# static fields
.field private static final a:I

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x6

    sput v0, Lcom/ali/user/open/a/e;->a:I

    .line 43
    const/16 v0, 0x8

    sput v0, Lcom/ali/user/open/a/e;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/ali/user/open/a/d;
    .locals 15

    .prologue
    const/16 v14, 0x3d

    const/16 v13, 0x3b

    const/16 v12, 0x22

    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 69
    :goto_0
    if-ltz v2, :cond_1a

    if-ge v2, v1, :cond_1a

    .line 74
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0, v13, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 88
    invoke-virtual {p0, v14, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 89
    new-instance v3, Lcom/ali/user/open/a/d;

    invoke-direct {v3}, Lcom/ali/user/open/a/d;-><init>()V

    .line 97
    if-eq v0, v10, :cond_1

    if-lt v0, v4, :cond_2

    :cond_1
    if-ne v4, v10, :cond_6

    .line 99
    :cond_2
    if-ne v0, v10, :cond_3

    move v0, v1

    .line 102
    :cond_3
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/ali/user/open/a/d;->c:Ljava/lang/String;

    .line 103
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/ali/user/open/a/d;->d:Ljava/lang/String;

    .line 135
    :cond_4
    :goto_1
    if-ltz v0, :cond_19

    if-ge v0, v1, :cond_19

    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x20

    if-eq v2, v4, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v13, :cond_b

    .line 141
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 142
    goto :goto_1

    .line 105
    :cond_6
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/ali/user/open/a/d;->c:Ljava/lang/String;

    .line 108
    add-int/lit8 v0, v1, -0x1

    if-ge v4, v0, :cond_1b

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_1b

    .line 109
    add-int/lit8 v0, v4, 0x2

    invoke-virtual {p0, v12, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 110
    if-eq v0, v10, :cond_1a

    .line 117
    :goto_2
    invoke-virtual {p0, v13, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 118
    if-ne v0, v10, :cond_7

    move v0, v1

    .line 121
    :cond_7
    sub-int v2, v0, v4

    const/16 v5, 0x1000

    if-le v2, v5, :cond_8

    .line 123
    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit16 v4, v4, 0x1000

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/ali/user/open/a/d;->d:Ljava/lang/String;

    goto :goto_1

    .line 124
    :cond_8
    add-int/lit8 v2, v4, 0x1

    if-eq v2, v0, :cond_9

    if-ge v0, v4, :cond_a

    .line 126
    :cond_9
    const-string/jumbo v2, ""

    iput-object v2, v3, Lcom/ali/user/open/a/d;->d:Ljava/lang/String;

    goto :goto_1

    .line 128
    :cond_a
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/ali/user/open/a/d;->d:Ljava/lang/String;

    goto :goto_1

    .line 146
    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_19

    .line 153
    sub-int v2, v1, v0

    sget v4, Lcom/ali/user/open/a/e;->a:I

    if-lt v2, v4, :cond_c

    sget v2, Lcom/ali/user/open/a/e;->a:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "secure"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 154
    sget v2, Lcom/ali/user/open/a/e;->a:I

    add-int/2addr v0, v2

    .line 155
    iput-boolean v11, v3, Lcom/ali/user/open/a/d;->f:Z

    .line 156
    if-eq v0, v1, :cond_19

    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v14, :cond_4

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 165
    :cond_c
    sub-int v2, v1, v0

    sget v4, Lcom/ali/user/open/a/e;->b:I

    if-lt v2, v4, :cond_d

    sget v2, Lcom/ali/user/open/a/e;->b:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "httponly"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 166
    sget v2, Lcom/ali/user/open/a/e;->b:I

    add-int/2addr v0, v2

    .line 167
    iput-boolean v11, v3, Lcom/ali/user/open/a/d;->g:Z

    .line 168
    if-eq v0, v1, :cond_19

    .line 170
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v14, :cond_4

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 175
    :cond_d
    invoke-virtual {p0, v14, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 176
    if-lez v4, :cond_18

    .line 177
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 178
    const-string/jumbo v2, "expires"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 179
    const/16 v2, 0x2c

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 184
    if-eq v2, v10, :cond_e

    sub-int v6, v2, v4

    const/16 v7, 0xa

    if-gt v6, v7, :cond_e

    .line 185
    add-int/lit8 v0, v2, 0x1

    .line 188
    :cond_e
    invoke-virtual {p0, v13, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 189
    const/16 v6, 0x2c

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 190
    if-ne v2, v10, :cond_11

    if-ne v0, v10, :cond_11

    move v0, v1

    .line 199
    :cond_f
    :goto_3
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x2

    if-le v4, v6, :cond_10

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v12, :cond_10

    .line 203
    invoke-virtual {v2, v12, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 204
    if-lez v4, :cond_10

    .line 205
    invoke-virtual {v2, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 208
    :cond_10
    const-string/jumbo v4, "expires"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 210
    :try_start_0
    invoke-static {v2}, Lcom/ali/user/open/a/c;->a(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/ali/user/open/a/d;->e:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 211
    :catch_0
    move-exception v4

    .line 212
    const-string/jumbo v5, "login.LoginCookieUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "illegal format for expires: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v4}, Lcom/ali/user/open/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 192
    :cond_11
    if-eq v2, v10, :cond_f

    .line 194
    if-ne v0, v10, :cond_12

    move v0, v2

    .line 195
    goto :goto_3

    .line 197
    :cond_12
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    .line 214
    :cond_13
    const-string/jumbo v4, "max-age"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 216
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/ali/user/open/a/d;->e:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 217
    :catch_1
    move-exception v4

    .line 218
    const-string/jumbo v5, "login.LoginCookieUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "illegal format for max-age: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v4}, Lcom/ali/user/open/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 220
    :cond_14
    const-string/jumbo v4, "path"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 222
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 223
    iput-object v2, v3, Lcom/ali/user/open/a/d;->b:Ljava/lang/String;

    goto/16 :goto_1

    .line 225
    :cond_15
    const-string/jumbo v4, "domain"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 226
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 227
    if-nez v4, :cond_16

    .line 229
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/ali/user/open/a/d;->a:Ljava/lang/String;

    goto/16 :goto_1

    .line 233
    :cond_16
    add-int/lit8 v4, v4, 0x1

    :try_start_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 238
    :catch_2
    move-exception v4

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 239
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_17

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    :cond_17
    iput-object v2, v3, Lcom/ali/user/open/a/d;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_18
    move v0, v1

    .line 249
    goto/16 :goto_1

    :cond_19
    move-object v0, v3

    .line 255
    :goto_4
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_4

    :cond_1b
    move v0, v2

    goto/16 :goto_2
.end method

.method public static a(Lcom/ali/user/open/a/d;)V
    .locals 2

    .prologue
    .line 260
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ali/user/open/a/d;->e:J

    .line 261
    return-void
.end method

.method public static b(Lcom/ali/user/open/a/d;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/ali/user/open/a/d;->a:Ljava/lang/String;

    .line 265
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
