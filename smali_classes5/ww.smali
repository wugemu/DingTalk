.class public final Lww;
.super Lvu;
.source "WebDavTransport.java"


# instance fields
.field private a:Lwh;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/emailcommon/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lvu;-><init>()V

    .line 1762
    invoke-static {p1}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;)Lvt;

    move-result-object v0

    .line 19
    instance-of v0, v0, Lwh;

    if-eqz v0, :cond_1

    .line 2762
    invoke-static {p1}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;)Lvt;

    move-result-object v0

    .line 21
    check-cast v0, Lwh;

    iput-object v0, p0, Lww;->a:Lwh;

    .line 28
    :goto_0
    sget-boolean v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    .line 30
    :cond_0
    return-void

    .line 25
    :cond_1
    new-instance v0, Lwh;

    invoke-direct {v0, p1}, Lwh;-><init>(Lcom/alibaba/alimei/emailcommon/Account;)V

    iput-object v0, p0, Lww;->a:Lwh;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 4
    .param p1, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 49
    iget-object v1, p0, Lww;->a:Lwh;

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    .line 3164
    const-string/jumbo v0, "drafts"

    invoke-virtual {v1, v0}, Lwh;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v0

    check-cast v0, Lwh$e;

    .line 3167
    :try_start_0
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v0, v3}, Lwh$e;->a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V

    .line 3168
    invoke-virtual {v0, v2}, Lwh$e;->b([Lcom/alibaba/alimei/emailcommon/mail/Message;)[Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v2

    .line 3390
    const-string/jumbo v3, "##DavMailSubmissionURI##"

    invoke-virtual {v1, v3}, Lwh;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v1

    .line 3170
    invoke-virtual {v0, v2, v1}, Lwh$e;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/emailcommon/mail/Folder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3174
    if-eqz v0, :cond_0

    .line 3176
    invoke-virtual {v0}, Lwh$e;->i()V

    :cond_0
    return-void

    .line 3174
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 3176
    invoke-virtual {v0}, Lwh$e;->i()V

    :cond_1
    throw v1
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "checkLogin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 35
    sget-boolean v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    .line 38
    :cond_0
    iget-object v0, p0, Lww;->a:Lwh;

    invoke-virtual {v0}, Lwh;->d()Lwh$g;

    .line 39
    return-void
.end method
