.class public abstract Lahf;
.super Lyq;
.source "AbsSyncCalendarTask.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Z

.field protected c:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "isFullSync"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Lyq;-><init>()V

    .line 36
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lahf;->d:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lahf;->e:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lahf;->a:Ljava/lang/String;

    .line 43
    iput-boolean p2, p0, Lahf;->b:Z

    .line 44
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    iput-object v0, p0, Lahf;->c:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 45
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;)V
.end method

.method protected abstract a(Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;)V
.end method

.method protected final c()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 65
    iget-object v4, p0, Lahf;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lahf;->c:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-nez v4, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v6

    .line 68
    :cond_1
    invoke-virtual {p0}, Lahf;->a()V

    .line 69
    new-instance v2, Lyc;

    const-string/jumbo v4, "basic_SyncCalendar"

    iget-object v5, p0, Lahf;->a:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v7}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    .local v2, "eventMessage":Lyc;
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    .line 74
    .local v1, "eventCenter":Lya;
    const/4 v4, 0x2

    iput v4, v2, Lyc;->c:I

    .line 75
    iget-object v4, p0, Lahf;->c:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-nez v4, :cond_2

    .line 76
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v4

    iget-object v5, p0, Lahf;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v4

    iput-object v4, p0, Lahf;->c:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 77
    iget-object v4, p0, Lahf;->c:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-nez v4, :cond_2

    .line 78
    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v4}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v4

    iput-object v4, v2, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 79
    invoke-interface {v1, v2}, Lya;->a(Lyc;)V

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Sync calendar for not exist account: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lahf;->a:Ljava/lang/String;

    invoke-static {v5}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lyx;->a(Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_2
    iget-object v4, p0, Lahf;->a:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getCalendarService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;

    move-result-object v3

    .line 87
    .local v3, "service":Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;
    invoke-virtual {p0}, Lahf;->f()Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v0

    .line 88
    .local v0, "calendarMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez v0, :cond_3

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "calendarMailBox is null: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lahf;->a:Ljava/lang/String;

    invoke-static {v5}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lyx;->a(Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :cond_3
    iget-boolean v4, p0, Lahf;->b:Z

    if-eqz v4, :cond_6

    .line 94
    const-string/jumbo v4, "0"

    iput-object v4, p0, Lahf;->d:Ljava/lang/String;

    .line 102
    :cond_4
    :goto_1
    iget-object v4, p0, Lahf;->d:Ljava/lang/String;

    iput-object v4, p0, Lahf;->e:Ljava/lang/String;

    .line 104
    iget-object v4, p0, Lahf;->f:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    if-nez v4, :cond_5

    .line 105
    new-instance v4, Lahf$1;

    invoke-direct {v4, p0, v2, v1, v3}, Lahf$1;-><init>(Lahf;Lyc;Lya;Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;)V

    iput-object v4, p0, Lahf;->f:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .line 151
    :cond_5
    invoke-virtual {p0, v3}, Lahf;->a(Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;)V

    goto/16 :goto_0

    .line 96
    :cond_6
    iget-object v4, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncKey:Ljava/lang/String;

    iput-object v4, p0, Lahf;->d:Ljava/lang/String;

    .line 97
    iget-object v4, p0, Lahf;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 98
    const-string/jumbo v4, "0"

    iput-object v4, p0, Lahf;->d:Ljava/lang/String;

    goto :goto_1
.end method

.method protected abstract f()Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
.end method

.method protected abstract g()V
.end method
