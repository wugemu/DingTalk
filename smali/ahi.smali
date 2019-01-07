.class public final Lahi;
.super Lyq;
.source "SyncFoldersTask.java"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isForceFullSync"    # Z
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Lyq;-><init>()V

    .line 46
    iput-object p2, p0, Lahi;->b:Ljava/lang/String;

    .line 47
    iput-boolean p1, p0, Lahi;->c:Z

    .line 48
    return-void
.end method

.method static synthetic a(Lahi;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lahi;

    .prologue
    .line 33
    iget-object v0, p0, Lahi;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lahi;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 0
    .param p0, "x0"    # Lahi;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lahi;->a(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    return-void
.end method

.method private a(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 4
    .param p1, "exception"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 157
    new-instance v0, Lyc;

    const-string/jumbo v1, "basic_SyncFolder"

    iget-object v2, p0, Lahi;->b:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    .local v0, "eventMessage":Lyc;
    iput-object p1, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 159
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    invoke-interface {v1, v0}, Lya;->a(Lyc;)V

    .line 160
    const-string/jumbo v1, "SyncFoldersTask"

    const-string/jumbo v2, "handleSyncFolderError"

    invoke-static {v1, v2, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    return-void
.end method

.method static synthetic b(Lahi;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lahi;

    .prologue
    .line 33
    iget-object v0, p0, Lahi;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string/jumbo v0, "SyncFoldersTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 53
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    const-string/jumbo v1, "basic_SyncFolder"

    iget-object v9, p0, Lahi;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v9, v10}, Lya;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v0

    iget-object v1, p0, Lahi;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v6

    .line 56
    .local v6, "account":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-nez v6, :cond_0

    .line 57
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    invoke-direct {p0, v0}, Lahi;->a(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 58
    const-string/jumbo v0, "SyncFoldersTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Sync user basic folder but "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lahi;->b:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v9, " is not login or has logout"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lzd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string/jumbo v0, "SyncFoldersTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Sync user basic folder but "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lahi;->b:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v9, " is not login or has logout"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return v11

    .line 63
    :cond_0
    invoke-virtual {v6}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    .line 66
    .local v2, "accountId":J
    iget-boolean v0, p0, Lahi;->c:Z

    if-eqz v0, :cond_1

    .line 67
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lahi;->a:Ljava/lang/String;

    .line 68
    const/4 v4, 0x1

    .line 81
    .local v4, "isFullSync":Z
    :goto_1
    iget-object v5, p0, Lahi;->a:Ljava/lang/String;

    .line 82
    .local v5, "currentSyncKey":Ljava/lang/String;
    const-string/jumbo v0, "SyncFoldersTask"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v9, "start syncFoldersTask syncKey: "

    aput-object v9, v1, v10

    aput-object v5, v1, v11

    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lahi;->b:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v9

    new-instance v0, Lahi$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lahi$1;-><init>(Lahi;JZLjava/lang/String;)V

    invoke-interface {v9, v5, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncFolders(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    goto :goto_0

    .line 70
    .end local v4    # "isFullSync":Z
    .end local v5    # "currentSyncKey":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v8

    .line 71
    .local v8, "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    invoke-interface {v8, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->getFolderSyncKey(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lahi;->a:Ljava/lang/String;

    .line 72
    invoke-interface {v8, v2, v3, v10}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v7

    .line 73
    .local v7, "inbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    iget-object v0, p0, Lahi;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lahi;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    if-nez v7, :cond_3

    .line 74
    :cond_2
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lahi;->a:Ljava/lang/String;

    .line 75
    const/4 v4, 0x1

    .restart local v4    # "isFullSync":Z
    goto :goto_1

    .line 77
    .end local v4    # "isFullSync":Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "isFullSync":Z
    goto :goto_1
.end method
