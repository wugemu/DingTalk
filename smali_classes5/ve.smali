.class public final Lve;
.super Ljava/lang/Object;
.source "DecoderUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;IILcom/alibaba/alimei/emailcommon/mail/Message;)Ljava/lang/String;
    .locals 10
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "begin"    # I
    .param p2, "end"    # I
    .param p3, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    const/16 v8, 0x3f

    const/4 v6, 0x0

    .line 196
    add-int/lit8 v7, p1, 0x2

    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 197
    .local v4, "qm1":I
    add-int/lit8 v7, p2, -0x2

    if-ne v4, v7, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-object v6

    .line 200
    :cond_1
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 201
    .local v5, "qm2":I
    add-int/lit8 v7, p2, -0x2

    if-eq v5, v7, :cond_0

    .line 204
    add-int/lit8 v7, p1, 0x2

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "mimeCharset":Ljava/lang/String;
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "encoding":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, p2, -0x2

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "encodedText":Ljava/lang/String;
    if-eqz v3, :cond_2

    :try_start_0
    const-string/jumbo v7, "0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 212
    :cond_2
    invoke-static {v1}, Lxd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "charset":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_3

    .line 219
    const-string/jumbo v7, " "

    const-string/jumbo v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 227
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 229
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 230
    sget-object v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Missing encoded text in encoded word: \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    .end local v0    # "charset":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {v3, p3}, Lvj;->b(Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "charset":Ljava/lang/String;
    goto :goto_1

    .line 235
    :cond_5
    const-string/jumbo v7, "Q"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 237
    invoke-static {v1, v0}, Lve;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 239
    :cond_6
    const-string/jumbo v7, "B"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 241
    invoke-static {v1, v0}, Lve;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 245
    :cond_7
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 246
    sget-object v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Warning: Unknown encoding in encoded word \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 224
    .end local v0    # "charset":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "encodedWord"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 42
    :try_start_0
    const-string/jumbo v3, "US-ASCII"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 49
    .local v0, "bytes":[B
    new-instance v1, Lkpy;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Lkpy;-><init>(Ljava/io/InputStream;)V

    .line 52
    .local v1, "is":Lkpy;
    :try_start_1
    invoke-static {v1, p1}, Lvj;->b(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 56
    .end local v0    # "bytes":[B
    .end local v1    # "is":Lkpy;
    :goto_0
    return-object v2

    .restart local v0    # "bytes":[B
    .restart local v1    # "is":Lkpy;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 46
    .end local v0    # "bytes":[B
    .end local v1    # "is":Lkpy;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "encodedWord"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 74
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 77
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 78
    .local v1, "c":C
    const/16 v6, 0x5f

    if-ne v1, v6, :cond_0

    .line 80
    const-string/jumbo v6, "=20"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 91
    .end local v1    # "c":C
    :cond_1
    :try_start_0
    const-string/jumbo v6, "US-ASCII"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 98
    .local v0, "bytes":[B
    new-instance v3, Lkqc;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v6}, Lkqc;-><init>(Ljava/io/InputStream;)V

    .line 101
    .local v3, "is":Lkqc;
    :try_start_1
    invoke-static {v3, p1}, Lvj;->b(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 105
    .end local v0    # "bytes":[B
    .end local v3    # "is":Lkqc;
    :goto_2
    return-object v5

    .restart local v0    # "bytes":[B
    .restart local v3    # "is":Lkqc;
    :catch_0
    move-exception v6

    goto :goto_2

    .line 95
    .end local v0    # "bytes":[B
    .end local v3    # "is":Lkqc;
    :catch_1
    move-exception v6

    goto :goto_2
.end method
