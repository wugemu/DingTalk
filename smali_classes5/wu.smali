.class public final Lwu;
.super Lvu;
.source "SmtpTransport.java"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:I

.field g:Z

.field h:Ljava/net/Socket;

.field i:Lwb;

.field j:Ljava/io/OutputStream;

.field public k:Z

.field public l:Ljava/lang/String;

.field private m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1, "_uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x1d1

    const/16 v7, 0x19

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 118
    invoke-direct {p0}, Lvu;-><init>()V

    .line 122
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .local v3, "uri":Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "scheme":Ljava/lang/String;
    const-string/jumbo v6, "smtp"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 135
    iput v11, p0, Lwu;->f:I

    .line 136
    iput v7, p0, Lwu;->b:I

    .line 164
    :goto_0
    const-string/jumbo v6, "SmtpTransport"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "new SmtpTransport: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " security:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lwu;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lwu;->a:Ljava/lang/String;

    .line 168
    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 170
    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v6

    iput v6, p0, Lwu;->b:I

    .line 173
    :cond_0
    invoke-virtual {v3}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 177
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "userInfoParts":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lwu;->c:Ljava/lang/String;

    .line 179
    array-length v6, v5

    if-le v6, v9, :cond_1

    .line 181
    const/4 v6, 0x1

    aget-object v6, v5, v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lwu;->d:Ljava/lang/String;

    .line 183
    :cond_1
    array-length v6, v5

    if-le v6, v10, :cond_2

    .line 185
    const/4 v6, 0x2

    aget-object v6, v5, v6

    iput-object v6, p0, Lwu;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    .end local v5    # "userInfoParts":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 124
    .end local v2    # "scheme":Ljava/lang/String;
    .end local v3    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v4

    .line 126
    .local v4, "use":Ljava/net/URISyntaxException;
    new-array v6, v10, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    const-string/jumbo v7, ", Invalid SmtpTransport URI"

    aput-object v7, v6, v9

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "errorMsg":Ljava/lang/String;
    const-string/jumbo v6, "SmtpTransport"

    invoke-static {v6, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v6, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v7, Lcom/alibaba/alimei/framework/SDKError;->INVALID_SMTP_URI_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v6, v7, v1, v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 138
    .end local v1    # "errorMsg":Ljava/lang/String;
    .end local v4    # "use":Ljava/net/URISyntaxException;
    .restart local v2    # "scheme":Ljava/lang/String;
    .restart local v3    # "uri":Ljava/net/URI;
    :cond_3
    const-string/jumbo v6, "smtp+tls"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 140
    iput v9, p0, Lwu;->f:I

    .line 141
    iput v7, p0, Lwu;->b:I

    goto/16 :goto_0

    .line 143
    :cond_4
    const-string/jumbo v6, "smtp+tls+"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 145
    iput v10, p0, Lwu;->f:I

    .line 146
    iput v7, p0, Lwu;->b:I

    goto/16 :goto_0

    .line 148
    :cond_5
    const-string/jumbo v6, "smtp+ssl+"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 150
    const/4 v6, 0x3

    iput v6, p0, Lwu;->f:I

    .line 151
    iput v8, p0, Lwu;->b:I

    goto/16 :goto_0

    .line 153
    :cond_6
    const-string/jumbo v6, "smtp+ssl"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 155
    const/4 v6, 0x4

    iput v6, p0, Lwu;->f:I

    .line 156
    iput v8, p0, Lwu;->b:I

    goto/16 :goto_0

    .line 160
    :cond_7
    const-string/jumbo v6, "SmtpTransport"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unsupported protocol:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v6, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v7, Lcom/alibaba/alimei/framework/SDKError;->UNSUPPORED_PROTOCOL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Unsupported protocol:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v6

    .line 188
    :catch_1
    move-exception v0

    .line 190
    .local v0, "enc":Ljava/io/UnsupportedEncodingException;
    new-array v6, v10, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    const-string/jumbo v7, "Couldn\'t urldecode username or password."

    aput-object v7, v6, v9

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .restart local v1    # "errorMsg":Ljava/lang/String;
    const-string/jumbo v6, "SmtpTransport"

    invoke-static {v6, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-boolean v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 194
    sget-object v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public static a(Lcom/alibaba/alimei/emailcommon/CommonAccount;)Ljava/lang/String;
    .locals 13
    .param p0, "commonAccount"    # Lcom/alibaba/alimei/emailcommon/CommonAccount;

    .prologue
    .line 792
    if-eqz p0, :cond_b

    .line 793
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getMail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getMail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lwu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 795
    .local v12, "userEnc":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 796
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lwu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 799
    .local v10, "passwordEnc":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getSmtpSecurityType()I

    move-result v0

    if-eqz v0, :cond_5

    .line 801
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getSmtpSecurityType()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 802
    const-string/jumbo v1, "smtp+ssl+"

    .line 814
    .local v1, "scheme":Ljava/lang/String;
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 815
    .local v11, "sbUserInfo":Ljava/lang/StringBuilder;
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    const-string/jumbo v0, ":"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    const-string/jumbo v0, ":"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    const-string/jumbo v0, "PLAIN"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    const/4 v4, 0x0

    .line 822
    .local v4, "port":I
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getSmtpPort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 842
    :goto_3
    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getSmtpServer()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 849
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v10    # "passwordEnc":Ljava/lang/String;
    .end local v11    # "sbUserInfo":Ljava/lang/StringBuilder;
    .end local v12    # "userEnc":Ljava/lang/String;
    :goto_4
    return-object v0

    .line 794
    :cond_0
    const-string/jumbo v12, ""

    goto :goto_0

    .line 796
    .restart local v12    # "userEnc":Ljava/lang/String;
    :cond_1
    const-string/jumbo v10, ""

    goto :goto_1

    .line 803
    .restart local v10    # "passwordEnc":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getSmtpSecurityType()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 804
    const-string/jumbo v1, "smtp+tls+"

    .restart local v1    # "scheme":Ljava/lang/String;
    goto :goto_2

    .line 805
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getSmtpSecurityType()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 806
    const-string/jumbo v1, "smtp+ssl"

    .restart local v1    # "scheme":Ljava/lang/String;
    goto :goto_2

    .line 807
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getSmtpSecurityType()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 808
    const-string/jumbo v1, "smtp+tls"

    .restart local v1    # "scheme":Ljava/lang/String;
    goto :goto_2

    .line 810
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_5
    const-string/jumbo v1, "smtp"

    .restart local v1    # "scheme":Ljava/lang/String;
    goto :goto_2

    .line 825
    .restart local v4    # "port":I
    .restart local v11    # "sbUserInfo":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getSmtpSecurityType()I

    move-result v0

    if-nez v0, :cond_6

    .line 826
    const/16 v4, 0x19

    goto :goto_3

    .line 827
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getSmtpSecurityType()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 828
    const/16 v4, 0x1d1

    goto :goto_3

    .line 829
    :cond_7
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getSmtpSecurityType()I

    move-result v2

    if-ne v0, v2, :cond_8

    .line 830
    const/16 v4, 0x24b

    goto :goto_3

    .line 831
    :cond_8
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getSmtpSecurityType()I

    move-result v2

    if-ne v0, v2, :cond_9

    .line 832
    const/16 v4, 0x1d1

    goto :goto_3

    .line 833
    :cond_9
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getSmtpSecurityType()I

    move-result v2

    if-ne v0, v2, :cond_a

    .line 834
    const/16 v4, 0x24b

    goto/16 :goto_3

    .line 836
    :cond_a
    const/16 v4, 0x19

    goto/16 :goto_3

    .line 843
    :catch_1
    move-exception v8

    .line 844
    .local v8, "e":Ljava/net/URISyntaxException;
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v8}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {v8}, Ljava/net/URISyntaxException;->getReason()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", Can\'t create SmtpTransport URI"

    aput-object v3, v0, v2

    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 845
    .local v9, "errorMsg":Ljava/lang/String;
    const-string/jumbo v0, "SmtpTransport"

    invoke-static {v0, v9}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 849
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v8    # "e":Ljava/net/URISyntaxException;
    .end local v9    # "errorMsg":Ljava/lang/String;
    .end local v10    # "passwordEnc":Ljava/lang/String;
    .end local v11    # "sbUserInfo":Ljava/lang/StringBuilder;
    .end local v12    # "userEnc":Ljava/lang/String;
    :cond_b
    const-string/jumbo v0, ""

    goto/16 :goto_4
.end method

.method private a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 8
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sensitive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 623
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 624
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    .line 5562
    sget-boolean v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 5565
    if-eqz p2, :cond_0

    sget-boolean v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 5571
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SMTP >>> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5573
    :cond_1
    sget-object v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    .line 5581
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 5582
    add-int/lit8 v3, v2, 0x2

    new-array v3, v3, [B

    .line 5583
    invoke-virtual {p1, v6, v2, v3, v6}, Ljava/lang/String;->getBytes(II[BI)V

    .line 5584
    add-int/lit8 v4, v2, 0x0

    const/16 v5, 0xd

    aput-byte v5, v3, v4

    .line 5585
    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0xa

    aput-byte v4, v3, v2

    .line 5593
    iget-object v2, p0, Lwu;->j:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 5594
    iget-object v2, p0, Lwu;->j:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 634
    :cond_3
    invoke-direct {p0}, Lwu;->b()Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v7, :cond_5

    .line 637
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_4

    .line 640
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    :cond_4
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_5

    .line 648
    invoke-direct {p0}, Lwu;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5599
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_6

    .line 5601
    new-instance v2, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->SMTP_RESPONSE_FORMAT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v4, "SMTP response is 0 length."

    invoke-direct {v2, v3, v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v2

    .line 5603
    :cond_6
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 5604
    const/16 v3, 0x34

    if-eq v2, v3, :cond_7

    const/16 v3, 0x35

    if-ne v2, v3, :cond_a

    .line 5607
    :cond_7
    const-string/jumbo v2, "authentication failed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "535"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5608
    :cond_8
    new-instance v2, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->USERNAME_OR_PASSWORD_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v2, v3, v0}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v2

    .line 5610
    :cond_9
    new-instance v2, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->SMTP_BAD_RESPONSE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v2, v3, v0}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v2

    .line 654
    :cond_a
    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;,
            Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 741
    const-string/jumbo v20, "AUTH CRAM-MD5"

    .line 5617
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lwu;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v17

    .line 742
    .local v17, "respList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    new-instance v20, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->c:Ljava/lang/String;

    move-object/from16 v21, v0

    sget-object v22, Lcom/alibaba/alimei/framework/SDKError;->NEOGOTIATING_CRAM_MD5_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v23, "Unable to negotiate CRAM-MD5"

    invoke-direct/range {v20 .. v23}, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v20

    .line 743
    :cond_0
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 744
    .local v6, "b64Nonce":Ljava/lang/String;
    const-string/jumbo v20, "US-ASCII"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lvv;->c([B)[B

    move-result-object v13

    .line 745
    .local v13, "nonce":[B
    const/16 v20, 0x40

    move/from16 v0, v20

    new-array v10, v0, [B

    .line 746
    .local v10, "ipad":[B
    const/16 v20, 0x40

    move/from16 v0, v20

    new-array v15, v0, [B

    .line 747
    .local v15, "opad":[B
    const-string/jumbo v20, "US-ASCII"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    .line 751
    .local v19, "secretBytes":[B
    :try_start_0
    const-string/jumbo v20, "MD5"

    invoke-static/range {v20 .. v20}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 759
    .local v11, "md":Ljava/security/MessageDigest;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x40

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 761
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v19

    .line 763
    :cond_1
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 764
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v15, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 765
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/16 v20, 0x40

    move/from16 v0, v20

    if-ge v9, v0, :cond_2

    aget-byte v20, v10, v9

    xor-int/lit8 v20, v20, 0x36

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 753
    .end local v9    # "i":I
    .end local v11    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v14

    .line 755
    .local v14, "nsae":Ljava/security/NoSuchAlgorithmException;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v14}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string/jumbo v22, ", MD5 Not Available."

    aput-object v22, v20, v21

    invoke-static/range {v20 .. v20}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 756
    .local v7, "errorMsg":Ljava/lang/String;
    const-string/jumbo v20, "SmtpTransport"

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    new-instance v20, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->c:Ljava/lang/String;

    move-object/from16 v21, v0

    sget-object v22, Lcom/alibaba/alimei/framework/SDKError;->NO_SUCH_ALGORITHM_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v7}, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v20

    .line 766
    .end local v7    # "errorMsg":Ljava/lang/String;
    .end local v14    # "nsae":Ljava/security/NoSuchAlgorithmException;
    .restart local v9    # "i":I
    .restart local v11    # "md":Ljava/security/MessageDigest;
    :cond_2
    const/4 v9, 0x0

    :goto_1
    const/16 v20, 0x40

    move/from16 v0, v20

    if-ge v9, v0, :cond_3

    aget-byte v20, v15, v9

    xor-int/lit8 v20, v20, 0x5c

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v15, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 767
    :cond_3
    invoke-virtual {v11, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 768
    invoke-virtual {v11, v13}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    .line 769
    .local v8, "firstPass":[B
    invoke-virtual {v11, v15}, Ljava/security/MessageDigest;->update([B)V

    .line 770
    invoke-virtual {v11, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v18

    .line 771
    .local v18, "result":[B
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    new-instance v21, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lkps;->a([B)[C

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([C)V

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 772
    .local v16, "plainCRAM":Ljava/lang/String;
    const-string/jumbo v20, "US-ASCII"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lvv;->a([B)[B

    move-result-object v4

    .line 773
    .local v4, "b64CRAM":[B
    new-instance v5, Ljava/lang/String;

    const-string/jumbo v20, "US-ASCII"

    move-object/from16 v0, v20

    invoke-direct {v5, v4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 776
    .local v5, "b64CRAMString":Ljava/lang/String;
    const/16 v20, 0x1

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lwu;->a(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_1
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 783
    return-void

    .line 778
    :catch_1
    move-exception v12

    .line 780
    .local v12, "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v12}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string/jumbo v22, ", Unable to negotiate MD5 CRAM"

    aput-object v22, v20, v21

    invoke-static/range {v20 .. v20}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 781
    .restart local v7    # "errorMsg":Ljava/lang/String;
    const-string/jumbo v20, "SmtpTransport"

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    new-instance v20, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->c:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual {v12}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v7}, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v20
.end method

.method private a(Ljava/util/ArrayList;Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 12
    .param p2, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .local p1, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 441
    invoke-virtual {p0}, Lwu;->a()V

    .line 442
    invoke-virtual {p0, v7}, Lwu;->a(Z)V

    .line 444
    iget-boolean v7, p0, Lwu;->m:Z

    if-nez v7, :cond_0

    .line 445
    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/mail/Message;->g()V

    .line 448
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/mail/Message;->j()[Lvo;

    move-result-object v3

    .line 449
    .local v3, "from":[Lvo;
    const/4 v6, 0x0

    .line 453
    .local v6, "possibleSend":Z
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "MAIL FROM: <"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget-object v8, v3, v8

    .line 4075
    iget-object v8, v8, Lvo;->a:Ljava/lang/String;

    .line 453
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lwu;->b(Ljava/lang/String;)Ljava/util/List;

    .line 454
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 456
    .local v0, "address":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "RCPT TO: <"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lwu;->b(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 477
    .end local v0    # "address":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Ljava/lang/Exception;
    const/4 v7, 0x2

    :try_start_1
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, ", Unable to send message."

    aput-object v9, v7, v8

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "errorMsg":Ljava/lang/String;
    const-string/jumbo v7, "SmtpTransport"

    invoke-static {v7, v2}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    new-instance v4, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v7, Lcom/alibaba/alimei/framework/SDKError;->SMTP_SEND_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v4, v7, v2, v1}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 482
    .local v4, "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v4, v6}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->setPermanentFailure(Z)V

    .line 483
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "errorMsg":Ljava/lang/String;
    .end local v4    # "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lwu;->a()V

    throw v7

    .line 458
    :cond_1
    :try_start_2
    const-string/jumbo v7, "DATA"

    invoke-direct {p0, v7}, Lwu;->b(Ljava/lang/String;)Ljava/util/List;

    .line 460
    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/mail/Message;->s()I

    move-result v7

    const/16 v8, 0x2710

    if-le v7, v8, :cond_2

    .line 461
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Too many recipients. "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, " is too long."

    aput-object v9, v7, v8

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 462
    .restart local v2    # "errorMsg":Ljava/lang/String;
    const-string/jumbo v7, "SmtpTransport"

    invoke-static {v7, v2}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    new-instance v7, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v8, Lcom/alibaba/alimei/framework/SDKError;->SMTP_TOO_MANY_ADDRESS_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v7, v8, v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v7

    .line 465
    .end local v2    # "errorMsg":Ljava/lang/String;
    :cond_2
    new-instance v5, Lvy;

    new-instance v7, Lwc;

    new-instance v8, Lwa;

    new-instance v9, Ljava/io/BufferedOutputStream;

    iget-object v10, p0, Lwu;->j:Ljava/io/OutputStream;

    const/16 v11, 0x400

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 467
    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/mail/Message;->s()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lwa;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v7, v8}, Lwc;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v7}, Lvy;-><init>(Ljava/io/OutputStream;)V

    .line 469
    .local v5, "msgOut":Lvy;
    invoke-virtual {p2, v5}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Ljava/io/OutputStream;)V

    .line 472
    invoke-virtual {v5}, Lvy;->flush()V

    .line 474
    const/4 v6, 0x1

    .line 475
    const-string/jumbo v7, "\r\n."

    invoke-direct {p0, v7}, Lwu;->b(Ljava/lang/String;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 487
    invoke-virtual {p0}, Lwu;->a()V

    .line 488
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 536
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 538
    .local v2, "sb":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    iget-object v3, p0, Lwu;->i:Lwb;

    invoke-virtual {v3}, Lwb;->read()I

    move-result v0

    .local v0, "d":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 540
    int-to-char v3, v0

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    .line 544
    int-to-char v3, v0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 550
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 553
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, "ret":Ljava/lang/String;
    sget-boolean v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 555
    sget-object v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SMTP <<< "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    :cond_2
    return-object v1
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lwu;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 499
    :try_start_0
    const-string/jumbo v0, "QUIT"

    .line 4617
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lwu;->a(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 507
    :goto_0
    :try_start_1
    iget-object v0, p0, Lwu;->i:Lwb;

    invoke-virtual {v0}, Lwb;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 515
    :goto_1
    :try_start_2
    iget-object v0, p0, Lwu;->j:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 523
    :goto_2
    :try_start_3
    iget-object v0, p0, Lwu;->h:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 529
    :goto_3
    iput-object v2, p0, Lwu;->i:Lwb;

    .line 530
    iput-object v2, p0, Lwu;->j:Ljava/io/OutputStream;

    .line 531
    iput-object v2, p0, Lwu;->h:Ljava/net/Socket;

    .line 532
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 12
    .param p1, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 399
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v2, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvo;>;"
    sget-object v9, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->TO:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    invoke-virtual {p1, v9}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;)[Lvo;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 402
    sget-object v9, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->CC:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    invoke-virtual {p1, v9}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;)[Lvo;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 403
    sget-object v9, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->BCC:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    invoke-virtual {p1, v9}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;)[Lvo;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 406
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v10, 0x12c

    if-le v9, v10, :cond_0

    .line 407
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "Too many recipients. "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, " greater than 300."

    aput-object v11, v9, v10

    invoke-static {v9}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 408
    .local v8, "errorMsg":Ljava/lang/String;
    const-string/jumbo v9, "SmtpTransport"

    invoke-static {v9, v8}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    new-instance v9, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v10, Lcom/alibaba/alimei/framework/SDKError;->SMTP_TOO_MANY_ADDRESS_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v9, v10, v8}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v9

    .line 411
    .end local v8    # "errorMsg":Ljava/lang/String;
    :cond_0
    sget-object v9, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->BCC:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;[Lvo;)V

    .line 413
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 415
    .local v5, "charsetAddressesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvo;

    .line 3075
    .local v0, "address":Lvo;
    iget-object v1, v0, Lvo;->a:Ljava/lang/String;

    .line 418
    .local v1, "addressString":Ljava/lang/String;
    invoke-static {v1}, Lvj;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 419
    .local v4, "charset":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 420
    .local v3, "addressesOfCharset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 422
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "addressesOfCharset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .restart local v3    # "addressesOfCharset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 428
    .end local v0    # "address":Lvo;
    .end local v1    # "addressString":Ljava/lang/String;
    .end local v3    # "addressesOfCharset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "charset":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 429
    .local v7, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 431
    .local v6, "charsetAddressesMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 432
    .restart local v4    # "charset":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 433
    .restart local v3    # "addressesOfCharset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, v4}, Lcom/alibaba/alimei/emailcommon/mail/Message;->b(Ljava/lang/String;)V

    .line 434
    invoke-direct {p0, v3, p1}, Lwu;->a(Ljava/util/ArrayList;Lcom/alibaba/alimei/emailcommon/mail/Message;)V

    goto :goto_1

    .line 436
    .end local v3    # "addressesOfCharset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "charset":Ljava/lang/String;
    .end local v6    # "charsetAddressesMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_3
    return-void
.end method

.method public final a(Z)V
    .locals 25
    .param p1, "checkLogin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 224
    :try_start_0
    new-instance v18, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->a:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lwu;->b:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 225
    .local v18, "socketAddress":Ljava/net/SocketAddress;
    move-object/from16 v0, p0

    iget v0, v0, Lwu;->f:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lwu;->f:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 228
    :cond_0
    const-string/jumbo v20, "TLS"

    invoke-static/range {v20 .. v20}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v19

    .line 229
    .local v19, "sslContext":Ljavax/net/ssl/SSLContext;
    move-object/from16 v0, p0

    iget v0, v0, Lwu;->f:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    const/16 v17, 0x1

    .line 230
    .local v17, "secure":Z
    :goto_0
    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->a:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 232
    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-static {v0, v1}, Lwg;->a(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;

    move-result-object v23

    aput-object v23, v21, v22

    new-instance v22, Ljava/security/SecureRandom;

    invoke-direct/range {v22 .. v22}, Ljava/security/SecureRandom;-><init>()V

    .line 230
    invoke-virtual/range {v19 .. v22}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 234
    invoke-virtual/range {v19 .. v19}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lwu;->h:Ljava/net/Socket;

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->h:Ljava/net/Socket;

    move-object/from16 v20, v0

    const/16 v21, 0x7530

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 236
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lwu;->g:Z

    .line 245
    .end local v17    # "secure":Z
    .end local v19    # "sslContext":Ljavax/net/ssl/SSLContext;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->h:Ljava/net/Socket;

    move-object/from16 v21, v0

    if-eqz p1, :cond_a

    const/16 v20, 0x7530

    :goto_2
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 247
    new-instance v20, Lwb;

    new-instance v21, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->h:Ljava/net/Socket;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    const/16 v23, 0x400

    invoke-direct/range {v21 .. v23}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct/range {v20 .. v21}, Lwb;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lwu;->i:Lwb;

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->h:Ljava/net/Socket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lwu;->j:Ljava/io/OutputStream;

    .line 251
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lwu;->b(Ljava/lang/String;)Ljava/util/List;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->h:Ljava/net/Socket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v13

    .line 254
    .local v13, "localAddress":Ljava/net/InetAddress;
    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v14

    .line 255
    .local v14, "localHost":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    .line 257
    .local v12, "ipAddr":Ljava/lang/String;
    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    const-string/jumbo v20, "_"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 261
    :cond_1
    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 263
    instance-of v0, v13, Ljava/net/Inet6Address;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 265
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "[IPV6:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 279
    :cond_2
    :goto_3
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "EHLO "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lwu;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 281
    .local v16, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v20, "8BITMIME"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lwu;->m:Z

    .line 291
    move-object/from16 v0, p0

    iget v0, v0, Lwu;->f:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lwu;->f:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lwu;->k:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 294
    :cond_3
    const-string/jumbo v20, "STARTTLS"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 296
    const-string/jumbo v20, "STARTTLS"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lwu;->b(Ljava/lang/String;)Ljava/util/List;

    .line 298
    const-string/jumbo v20, "TLS"

    invoke-static/range {v20 .. v20}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v19

    .line 299
    .restart local v19    # "sslContext":Ljavax/net/ssl/SSLContext;
    move-object/from16 v0, p0

    iget v0, v0, Lwu;->f:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/16 v17, 0x1

    .line 300
    .restart local v17    # "secure":Z
    :goto_4
    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->a:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 302
    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-static {v0, v1}, Lwg;->a(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;

    move-result-object v23

    aput-object v23, v21, v22

    new-instance v22, Ljava/security/SecureRandom;

    invoke-direct/range {v22 .. v22}, Ljava/security/SecureRandom;-><init>()V

    .line 300
    invoke-virtual/range {v19 .. v22}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 304
    invoke-virtual/range {v19 .. v19}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->h:Ljava/net/Socket;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->a:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lwu;->b:I

    move/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v20 .. v24}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lwu;->h:Ljava/net/Socket;

    .line 306
    new-instance v20, Lwb;

    new-instance v21, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->h:Ljava/net/Socket;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    const/16 v23, 0x400

    invoke-direct/range {v21 .. v23}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct/range {v20 .. v21}, Lwb;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lwu;->i:Lwb;

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->h:Ljava/net/Socket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lwu;->j:Ljava/io/OutputStream;

    .line 309
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lwu;->g:Z

    .line 314
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "EHLO "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lwu;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 327
    .end local v17    # "secure":Z
    .end local v19    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_4
    const/4 v5, 0x0

    .line 328
    .local v5, "authLoginSupported":Z
    const/4 v6, 0x0

    .line 329
    .local v6, "authPlainSupported":Z
    const/4 v4, 0x0

    .line 330
    .local v4, "authCramMD5Supported":Z
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_5
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_f

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 332
    .local v15, "result":Ljava/lang/String;
    const-string/jumbo v21, ".*AUTH.*LOGIN.*$"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 334
    const/4 v5, 0x1

    .line 336
    :cond_6
    const-string/jumbo v21, ".*AUTH.*PLAIN.*$"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 338
    const/4 v6, 0x1

    .line 340
    :cond_7
    const-string/jumbo v21, ".*AUTH.*CRAM-MD5.*$"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->e:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->e:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "CRAM_MD5"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 342
    const/4 v4, 0x1

    goto :goto_5

    .line 229
    .end local v4    # "authCramMD5Supported":Z
    .end local v5    # "authLoginSupported":Z
    .end local v6    # "authPlainSupported":Z
    .end local v12    # "ipAddr":Ljava/lang/String;
    .end local v13    # "localAddress":Ljava/net/InetAddress;
    .end local v14    # "localHost":Ljava/lang/String;
    .end local v15    # "result":Ljava/lang/String;
    .end local v16    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 240
    .end local v19    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_9
    new-instance v20, Ljava/net/Socket;

    invoke-direct/range {v20 .. v20}, Ljava/net/Socket;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lwu;->h:Ljava/net/Socket;

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->h:Ljava/net/Socket;

    move-object/from16 v20, v0

    const/16 v21, 0x7530

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_1

    .line 371
    .end local v18    # "socketAddress":Ljava/net/SocketAddress;
    :catch_0
    move-exception v8

    .line 373
    .local v8, "e":Ljavax/net/ssl/SSLException;
    const-string/jumbo v20, "SmtpTransport"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v8}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string/jumbo v23, ", SSLException CertificateValidationException."

    aput-object v23, v21, v22

    invoke-static/range {v21 .. v21}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {v8}, Ljavax/net/ssl/SSLException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    .line 376
    .local v7, "casue":Ljava/lang/Throwable;
    instance-of v0, v7, Ljava/security/cert/CertificateException;

    move/from16 v20, v0

    if-eqz v20, :cond_18

    .line 377
    new-instance v20, Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;

    sget-object v21, Lcom/alibaba/alimei/framework/SDKError;->CERTIFICATE_VALIDATE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v8}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v8}, Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 245
    .end local v7    # "casue":Ljava/lang/Throwable;
    .end local v8    # "e":Ljavax/net/ssl/SSLException;
    .restart local v18    # "socketAddress":Ljava/net/SocketAddress;
    :cond_a
    const v20, 0x493e0

    goto/16 :goto_2

    .line 269
    .restart local v12    # "ipAddr":Ljava/lang/String;
    .restart local v13    # "localAddress":Ljava/net/InetAddress;
    .restart local v14    # "localHost":Ljava/lang/String;
    :cond_b
    :try_start_1
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_3

    .line 275
    :cond_c
    const-string/jumbo v14, "android"

    goto/16 :goto_3

    .line 299
    .restart local v16    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 316
    .end local v19    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lwu;->f:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 318
    const-string/jumbo v9, "TLS not supported but required"

    .line 319
    .local v9, "errorMsg":Ljava/lang/String;
    const-string/jumbo v20, "SmtpTransport"

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v20, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v21, Lcom/alibaba/alimei/framework/SDKError;->TLS_NOT_SUPPORT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v20
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 382
    .end local v9    # "errorMsg":Ljava/lang/String;
    .end local v12    # "ipAddr":Ljava/lang/String;
    .end local v13    # "localAddress":Ljava/net/InetAddress;
    .end local v14    # "localHost":Ljava/lang/String;
    .end local v16    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "socketAddress":Ljava/net/SocketAddress;
    :catch_1
    move-exception v10

    .line 384
    .local v10, "gse":Ljava/security/GeneralSecurityException;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v10}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string/jumbo v22, ", Unable to open connection to SMTP server due to security error."

    aput-object v22, v20, v21

    invoke-static/range {v20 .. v20}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 385
    .restart local v9    # "errorMsg":Ljava/lang/String;
    const-string/jumbo v20, "SmtpTransport"

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v20, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v21, Lcom/alibaba/alimei/framework/SDKError;->GENERNAL_SECURITY_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9, v10}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 346
    .end local v9    # "errorMsg":Ljava/lang/String;
    .end local v10    # "gse":Ljava/security/GeneralSecurityException;
    .restart local v4    # "authCramMD5Supported":Z
    .restart local v5    # "authLoginSupported":Z
    .restart local v6    # "authPlainSupported":Z
    .restart local v12    # "ipAddr":Ljava/lang/String;
    .restart local v13    # "localAddress":Ljava/net/InetAddress;
    .restart local v14    # "localHost":Ljava/lang/String;
    .restart local v16    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "socketAddress":Ljava/net/SocketAddress;
    :cond_f
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->c:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->c:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->d:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->d:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 347
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_16

    .line 349
    if-eqz v4, :cond_11

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->c:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->d:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lwu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_10
    :goto_6
    return-void

    .line 353
    :cond_11
    if-eqz v6, :cond_13

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->c:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->d:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1720
    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "\u0000"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, "\u0000"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    .line 1721
    new-instance v21, Lvv;

    invoke-direct/range {v21 .. v21}, Lvv;-><init>()V

    invoke-static/range {v20 .. v20}, Lvv;->d([B)[B
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v20

    .line 1724
    :try_start_3
    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "AUTH PLAIN "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lwu;->a(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_3
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    .line 1726
    :catch_2
    move-exception v20

    .line 1728
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_12

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x33

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 1730
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string/jumbo v23, ", AUTH PLAIN failed."

    aput-object v23, v21, v22

    invoke-static/range {v21 .. v21}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1731
    const-string/jumbo v22, "SmtpTransport"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    new-instance v22, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->c:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v22
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 388
    .end local v4    # "authCramMD5Supported":Z
    .end local v5    # "authLoginSupported":Z
    .end local v6    # "authPlainSupported":Z
    .end local v12    # "ipAddr":Ljava/lang/String;
    .end local v13    # "localAddress":Ljava/net/InetAddress;
    .end local v14    # "localHost":Ljava/lang/String;
    .end local v16    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "socketAddress":Ljava/net/SocketAddress;
    :catch_3
    move-exception v11

    .line 390
    .local v11, "ioe":Ljava/io/IOException;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string/jumbo v22, ", IOException Unable to open connection to SMTP server."

    aput-object v22, v20, v21

    invoke-static/range {v20 .. v20}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 391
    .restart local v9    # "errorMsg":Ljava/lang/String;
    const-string/jumbo v20, "SmtpTransport"

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    new-instance v20, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v21, Lcom/alibaba/alimei/framework/SDKError;->OUTING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9, v11}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 1734
    .end local v9    # "errorMsg":Ljava/lang/String;
    .end local v11    # "ioe":Ljava/io/IOException;
    .restart local v4    # "authCramMD5Supported":Z
    .restart local v5    # "authLoginSupported":Z
    .restart local v6    # "authPlainSupported":Z
    .restart local v12    # "ipAddr":Ljava/lang/String;
    .restart local v13    # "localAddress":Ljava/net/InetAddress;
    .restart local v14    # "localHost":Ljava/lang/String;
    .restart local v16    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "socketAddress":Ljava/net/SocketAddress;
    :cond_12
    :try_start_5
    throw v20

    .line 357
    :cond_13
    if-eqz v5, :cond_15

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->c:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->d:Ljava/lang/String;

    move-object/from16 v21, v0
    :try_end_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2680
    :try_start_6
    const-string/jumbo v22, "AUTH LOGIN"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lwu;->b(Ljava/lang/String;)Ljava/util/List;

    .line 2681
    new-instance v22, Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lvv;->a([B)[B

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lwu;->a(Ljava/lang/String;Z)Ljava/util/List;

    .line 2682
    new-instance v20, Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lvv;->a([B)[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>([B)V

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lwu;->a(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_6
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_6

    .line 2684
    :catch_4
    move-exception v20

    .line 2686
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_14

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x33

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 2688
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string/jumbo v23, ", AUTH LOGIN failed."

    aput-object v23, v21, v22

    invoke-static/range {v21 .. v21}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2689
    const-string/jumbo v22, "SmtpTransport"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2690
    new-instance v22, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->c:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v22

    .line 2692
    :cond_14
    throw v20

    .line 363
    :cond_15
    const-string/jumbo v9, "No valid authentication mechanism found."

    .line 364
    .restart local v9    # "errorMsg":Ljava/lang/String;
    const-string/jumbo v20, "SmtpTransport"

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    new-instance v20, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v21, Lcom/alibaba/alimei/framework/SDKError;->SMTP_NO_AUTHENTICATE_FOUND_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v20

    .line 367
    .end local v9    # "errorMsg":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lwu;->k:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->c:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2699
    const-string/jumbo v21, "user=%s\u0001auth=Bearer %s\u0001\u0001"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v20, v22, v23

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->l:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v22, v20

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 2700
    invoke-static/range {v20 .. v20}, Lvv;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v20

    .line 2703
    :try_start_8
    const-string/jumbo v21, "AUTH XOAUTH2 %s"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v20, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lwu;->a(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_8
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_6

    .line 2705
    :catch_5
    move-exception v20

    .line 2707
    :try_start_9
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_17

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x33

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    .line 2709
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string/jumbo v23, ", AUTH XOAUTH2 failed."

    aput-object v23, v21, v22

    invoke-static/range {v21 .. v21}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2710
    const-string/jumbo v22, "SmtpTransport"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2711
    new-instance v22, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lwu;->c:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v22

    .line 2713
    :cond_17
    throw v20
    :try_end_9
    .catch Ljavax/net/ssl/SSLException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 379
    .end local v4    # "authCramMD5Supported":Z
    .end local v5    # "authLoginSupported":Z
    .end local v6    # "authPlainSupported":Z
    .end local v12    # "ipAddr":Ljava/lang/String;
    .end local v13    # "localAddress":Ljava/net/InetAddress;
    .end local v14    # "localHost":Ljava/lang/String;
    .end local v16    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "socketAddress":Ljava/net/SocketAddress;
    .restart local v7    # "casue":Ljava/lang/Throwable;
    .restart local v8    # "e":Ljavax/net/ssl/SSLException;
    :cond_18
    new-instance v20, Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;

    sget-object v21, Lcom/alibaba/alimei/framework/SDKError;->SSL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v8}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v8}, Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20
.end method
