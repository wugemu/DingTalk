.class public final Lqz;
.super Lqj;
.source "SyncImapMailsTask.java"


# instance fields
.field private final d:I

.field private e:J

.field private f:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

.field private g:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "folderId"    # J

    .prologue
    .line 48
    invoke-direct {p0}, Lqj;-><init>()V

    .line 40
    const/16 v0, 0x32

    iput v0, p0, Lqz;->d:I

    .line 49
    iput-object p1, p0, Lqz;->a:Ljava/lang/String;

    .line 50
    iput-wide p2, p0, Lqz;->e:J

    .line 51
    return-void
.end method

.method static synthetic a(Lqz;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .locals 1
    .param p0, "x0"    # Lqz;

    .prologue
    .line 35
    iget-object v0, p0, Lqz;->f:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 192
    new-instance v0, Lyc;

    iget-object v1, p0, Lqz;->a:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 193
    .local v0, "eventMessage":Lyc;
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 194
    iget-wide v2, p0, Lqz;->e:J

    iput-wide v2, v0, Lyc;->e:J

    .line 195
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    invoke-interface {v1, v0}, Lya;->a(Lyc;)V

    .line 196
    return-void
.end method

.method static synthetic b(Lqz;)Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .locals 1
    .param p0, "x0"    # Lqz;

    .prologue
    .line 35
    iget-object v0, p0, Lqz;->g:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    return-object v0
.end method


# virtual methods
.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const-string/jumbo v0, "SyncImapMailsTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 55
    const-string/jumbo v0, "SyncImapMailsTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "execute folderId --> "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, p0, Lqz;->e:J

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v3

    .line 57
    .local v3, "eventCenter":Lya;
    invoke-virtual {p0}, Lqz;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-string/jumbo v0, "basic_SyncNewMail"

    invoke-direct {p0, v0}, Lqz;->a(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v0, "basic_SyncMail"

    invoke-direct {p0, v0}, Lqz;->a(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    .line 63
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v0

    iget-wide v10, p0, Lqz;->e:J

    invoke-interface {v0, v10, v11}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByIdForSyncKey(J)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v0

    iput-object v0, p0, Lqz;->f:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 64
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v0

    iput-object v0, p0, Lqz;->g:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    .line 66
    iget-object v6, p0, Lqz;->g:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    iget-object v0, p0, Lqz;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 67
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v10

    iget-object v0, p0, Lqz;->f:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 66
    :goto_1
    invoke-interface {v6, v10, v11, v0, v1}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMaxImapUid(JJ)J

    move-result-wide v4

    .line 71
    .local v4, "maxUid":J
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_2

    .line 72
    const/4 v9, 0x0

    .line 73
    .local v9, "syncType":I
    const-string/jumbo v13, "basic_SyncMail"

    .line 79
    .local v13, "messageType":Ljava/lang/String;
    :goto_2
    new-instance v2, Lyc;

    iget-object v0, p0, Lqz;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v2, v13, v0, v1}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    .local v2, "eventMessage":Lyc;
    iget-wide v0, p0, Lqz;->e:J

    iput-wide v0, v2, Lyc;->e:J

    .line 83
    invoke-interface {v3, v2}, Lya;->a(Lyc;)V

    .line 88
    iget-object v0, p0, Lqz;->f:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    if-nez v0, :cond_3

    .line 89
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->FolderNotFound:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, v2, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 90
    const/4 v0, 0x2

    iput v0, v2, Lyc;->c:I

    .line 91
    invoke-interface {v3, v2}, Lya;->a(Lyc;)V

    .line 92
    const-string/jumbo v0, "SyncImapMailsTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Mailbox do not exist for folderId --> "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, p0, Lqz;->e:J

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    .end local v2    # "eventMessage":Lyc;
    .end local v4    # "maxUid":J
    .end local v9    # "syncType":I
    .end local v13    # "messageType":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lqz;->f:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    goto :goto_1

    .line 75
    .restart local v4    # "maxUid":J
    :cond_2
    const/4 v9, 0x1

    .line 76
    .restart local v9    # "syncType":I
    const-string/jumbo v13, "basic_SyncNewMail"

    .restart local v13    # "messageType":Ljava/lang/String;
    goto :goto_2

    .line 96
    .restart local v2    # "eventMessage":Lyc;
    :cond_3
    const-string/jumbo v0, "SyncImapMailsTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "MessageController synchronizeMailbox, syncType:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " maxUid:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v0

    iget-object v1, p0, Lqz;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lpq;->getAccountByMail(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v7

    .line 98
    .local v7, "account":Lcom/alibaba/alimei/emailcommon/Account;
    invoke-static {}, Lpw;->a()Lpw;

    move-result-object v6

    iget-object v0, p0, Lqz;->f:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    new-instance v0, Lqz$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lqz$1;-><init>(Lqz;Lyc;Lya;J)V

    move-wide v10, v4

    move-object v12, v0

    invoke-virtual/range {v6 .. v12}, Lpw;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;IJLuv;)V

    .line 183
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
