.class public final Lqn;
.super Lqj;
.source "ChangeImapFlagTask.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "mailServerId"    # Ljava/lang/String;
    .param p3, "flag"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Lqj;-><init>()V

    .line 35
    iput-object p1, p0, Lqn;->a:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lqn;->d:Ljava/lang/String;

    .line 37
    iput-boolean p3, p0, Lqn;->e:Z

    .line 38
    return-void
.end method

.method static synthetic a(Lqn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lqn;

    .prologue
    .line 25
    iget-object v0, p0, Lqn;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string/jumbo v0, "ChangeImapFlagTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 42
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v8

    .line 43
    .local v8, "eventCenter":Lya;
    invoke-virtual {p0}, Lqn;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    new-instance v9, Lyc;

    const-string/jumbo v1, "mailTagsUpdate"

    iget-object v2, p0, Lqn;->a:Ljava/lang/String;

    invoke-direct {v9, v1, v2, v12}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    .local v9, "eventMessage":Lyc;
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v9, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 46
    iget-object v1, p0, Lqn;->d:Ljava/lang/String;

    iput-object v1, v9, Lyc;->f:Ljava/lang/String;

    .line 47
    invoke-interface {v8, v9}, Lya;->a(Lyc;)V

    .line 109
    .end local v9    # "eventMessage":Lyc;
    :goto_0
    return v11

    .line 51
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v10

    .line 52
    .local v10, "messageDatasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    iget-object v1, p0, Lqn;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    iget-object v1, p0, Lqn;->d:Ljava/lang/String;

    invoke-interface {v10, v4, v5, v1}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMessageByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v0

    .line 54
    .local v0, "dbMessage":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-nez v0, :cond_1

    .line 55
    new-instance v9, Lyc;

    const-string/jumbo v1, "mailTagsUpdate"

    iget-object v2, p0, Lqn;->a:Ljava/lang/String;

    invoke-direct {v9, v1, v2, v12}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    .restart local v9    # "eventMessage":Lyc;
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->MailNotFoundInLocal:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v9, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 57
    iget-object v1, p0, Lqn;->d:Ljava/lang/String;

    iput-object v1, v9, Lyc;->f:Ljava/lang/String;

    .line 58
    invoke-interface {v8, v9}, Lya;->a(Lyc;)V

    goto :goto_0

    .line 62
    .end local v9    # "eventMessage":Lyc;
    :cond_1
    invoke-static {}, Lra;->a()Lra;

    move-result-object v1

    iget-object v2, p0, Lqn;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    invoke-virtual {v1, v4, v5, v6, v7}, Lra;->a(JJ)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "folderServerId":Ljava/lang/String;
    const-string/jumbo v1, "ChangeImapFlagTask"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "mail("

    aput-object v5, v2, v4

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mUid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v11

    const-string/jumbo v4, ") set flag "

    aput-object v4, v2, v12

    const/4 v4, 0x3

    iget-boolean v5, p0, Lqn;->e:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lpw;->a()Lpw;

    move-result-object v1

    iget-object v2, p0, Lqn;->c:Lcom/alibaba/alimei/emailcommon/Account;

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mUid:J

    iget-boolean v6, p0, Lqn;->e:Z

    new-instance v7, Lqn$1;

    invoke-direct {v7, p0, v8}, Lqn$1;-><init>(Lqn;Lya;)V

    invoke-virtual/range {v1 .. v7}, Lpw;->b(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLuv;)V

    goto :goto_0
.end method
