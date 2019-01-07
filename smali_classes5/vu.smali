.class public abstract Lvu;
.super Ljava/lang/Object;
.source "Transport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 51
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 53
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "UTF-8 not found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized a(Lcom/alibaba/alimei/emailcommon/Account;)Lvu;
    .locals 8
    .param p0, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 22
    const-class v4, Lvu;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/Account;->b()Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "uri":Ljava/lang/String;
    const-string/jumbo v3, "smtp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1489
    iget-boolean v0, p0, Lcom/alibaba/alimei/emailcommon/Account;->b:Z

    .line 26
    .local v0, "enableSasl":Z
    new-instance v1, Lwu;

    invoke-direct {v1, v2}, Lwu;-><init>(Ljava/lang/String;)V

    .line 27
    .local v1, "smtpTransport":Lwu;
    if-eqz v0, :cond_1

    .line 2213
    const/4 v3, 0x1

    iput-boolean v3, v1, Lwu;->k:Z

    .line 2214
    iget-boolean v3, v1, Lwu;->k:Z

    if-eqz v3, :cond_0

    .line 2215
    const-string/jumbo v3, ""

    iput-object v3, v1, Lwu;->d:Ljava/lang/String;

    .line 2497
    :cond_0
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/Account;->c:Ljava/lang/String;

    .line 3205
    iput-object v3, v1, Lwu;->l:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .end local v0    # "enableSasl":Z
    .end local v1    # "smtpTransport":Lwu;
    :cond_1
    :goto_0
    monitor-exit v4

    return-object v1

    .line 33
    :cond_2
    :try_start_1
    const-string/jumbo v3, "webdav"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 35
    new-instance v1, Lww;

    invoke-direct {v1, p0}, Lww;-><init>(Lcom/alibaba/alimei/emailcommon/Account;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 22
    .end local v2    # "uri":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 39
    .restart local v2    # "uri":Ljava/lang/String;
    :cond_3
    :try_start_2
    new-instance v3, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v5, Lcom/alibaba/alimei/framework/SDKError;->LOCATE_TRANSPORT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unable to locate an applicable Transport for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract a(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method
