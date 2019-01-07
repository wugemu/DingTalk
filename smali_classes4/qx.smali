.class public final Lqx;
.super Lqj;
.source "SyncImapFlagsTask.java"


# instance fields
.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final e:J

.field private final f:J

.field private final g:J

.field private h:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

.field private i:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "folderId"    # J
    .param p4, "startUid"    # J
    .param p6, "endUid"    # J

    .prologue
    .line 49
    invoke-direct {p0}, Lqj;-><init>()V

    .line 50
    iput-object p1, p0, Lqx;->a:Ljava/lang/String;

    .line 51
    iput-wide p2, p0, Lqx;->e:J

    .line 52
    iput-wide p4, p0, Lqx;->f:J

    .line 53
    iput-wide p6, p0, Lqx;->g:J

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqx;->d:Ljava/util/List;

    .line 55
    return-void
.end method

.method static synthetic a(Lqx;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .locals 1
    .param p0, "x0"    # Lqx;

    .prologue
    .line 35
    iget-object v0, p0, Lqx;->h:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    return-object v0
.end method

.method static synthetic b(Lqx;)Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .locals 1
    .param p0, "x0"    # Lqx;

    .prologue
    .line 35
    iget-object v0, p0, Lqx;->i:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    return-object v0
.end method

.method static synthetic c(Lqx;)J
    .locals 2
    .param p0, "x0"    # Lqx;

    .prologue
    .line 35
    iget-wide v0, p0, Lqx;->f:J

    return-wide v0
.end method

.method static synthetic d(Lqx;)J
    .locals 2
    .param p0, "x0"    # Lqx;

    .prologue
    .line 35
    iget-wide v0, p0, Lqx;->g:J

    return-wide v0
.end method


# virtual methods
.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string/jumbo v0, "SyncImapFlagsTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v11, 0x1

    .line 59
    const-string/jumbo v10, "sync_tag"

    .line 60
    .local v10, "messageType":Ljava/lang/String;
    new-instance v9, Lyc;

    iget-object v1, p0, Lqx;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v9, v10, v1, v2}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    .local v9, "eventMessage":Lyc;
    iget-wide v2, p0, Lqx;->e:J

    iput-wide v2, v9, Lyc;->e:J

    .line 63
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    .line 65
    .local v0, "eventCenter":Lya;
    invoke-interface {v0, v9}, Lya;->a(Lyc;)V

    .line 66
    invoke-virtual {p0}, Lqx;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v9, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 68
    iput v4, v9, Lyc;->c:I

    .line 69
    invoke-interface {v0, v9}, Lya;->a(Lyc;)V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Account do not exist for accountName---->>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lqx;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lyx;->a(Ljava/lang/String;)I

    .line 145
    :goto_0
    return v11

    .line 75
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    iget-wide v2, p0, Lqx;->e:J

    invoke-interface {v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByIdForSyncKey(J)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v1

    iput-object v1, p0, Lqx;->h:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 80
    iget-object v1, p0, Lqx;->h:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    if-nez v1, :cond_1

    .line 81
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->FolderNotFound:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v9, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 82
    iput v4, v9, Lyc;->c:I

    .line 83
    invoke-interface {v0, v9}, Lya;->a(Lyc;)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Mailbox do not exist for folderId---->>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lqx;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lyx;->a(Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    iput-object v1, p0, Lqx;->i:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    .line 89
    const-string/jumbo v1, "SyncImapFlagsTask"

    const-string/jumbo v2, "MessageController.getInstance().syncchronizeFlag"

    invoke-static {v1, v2}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {}, Lpw;->a()Lpw;

    move-result-object v1

    iget-object v2, p0, Lqx;->c:Lcom/alibaba/alimei/emailcommon/Account;

    iget-object v3, p0, Lqx;->h:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    iget-wide v4, p0, Lqx;->f:J

    iget-wide v6, p0, Lqx;->g:J

    new-instance v8, Lqx$1;

    invoke-direct {v8, p0}, Lqx$1;-><init>(Lqx;)V

    invoke-virtual/range {v1 .. v8}, Lpw;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JJLuv;)V

    goto :goto_0
.end method
