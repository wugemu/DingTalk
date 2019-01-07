.class public Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;
.super Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;
.source "CommonMailApiImpl.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mSupportCopySentMails:[Ljava/lang/String;


# instance fields
.field private mCopySendMail2SentFolder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const-string/jumbo v0, "CommonMailApiImpl "

    sput-object v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->TAG:Ljava/lang/String;

    .line 76
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "qq.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "163.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "gmail.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "sina.com"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "foxmail.com"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "alibaba-inc.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "aliyun.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "263.net"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "sohu.net"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "126.com"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "yeah.net"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "outlook.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->mSupportCopySentMails:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-object v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->mCopySendMail2SentFolder:Z

    .line 86
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "x2"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .param p3, "x3"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->setCopySendMailResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;Z)V

    return-void
.end method

.method static synthetic access$1400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->mSupportCopySentMails:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->mCopySendMail2SentFolder:Z

    return v0
.end method

.method static synthetic access$602(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->mCopySendMail2SentFolder:Z

    return p1
.end method

.method static synthetic access$700(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs checkArguments([Ljava/lang/String;)V
    .locals 2
    .param p1, "serverIds"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 872
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 873
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid argument, mailServerIds cannot be empty!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 875
    :cond_1
    return-void
.end method

.method private notSupportException(Ljava/lang/String;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1172
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Not support "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    :catch_0
    move-exception v0

    .line 1174
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1176
    return-void
.end method

.method private setCopySendMailResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;Z)V
    .locals 7
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .param p3, "value"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x5

    .line 1155
    iput-boolean p3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->mCopySendMail2SentFolder:Z

    .line 1157
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v0

    .line 1158
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p3}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->setIsCopySentMail(Ljava/lang/String;Z)Z

    .line 1160
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    .line 1161
    .local v1, "mds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-interface {v1, v4, v5, v6}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v2

    .line 1163
    .local v2, "sentFolder":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez v2, :cond_0

    .line 1164
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v6, v4}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->setFolderTypeSync2Server(Ljava/lang/String;IZ)Z

    .line 1167
    :cond_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1168
    return-void
.end method


# virtual methods
.method public autoSetCopySendMail2SentFolder(Lxv;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1064
    .local p1, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v0

    .line 1066
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getCopySentMailHasSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1067
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getIsCopySentMail(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->mCopySendMail2SentFolder:Z

    .line 1069
    sget-object v2, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "copy sent mail has set, current value = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->mCopySendMail2SentFolder:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    if-eqz p1, :cond_0

    .line 1072
    iget-boolean v2, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->mCopySendMail2SentFolder:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$16;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$16;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;)V

    .line 1134
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method

.method public cancelAutoDownloadMailDetailTask()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1145
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/CommonDownloadMailDetailCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/adpater/task/cmmd/CommonDownloadMailDetailCommand;-><init>(Ljava/lang/String;)V

    .line 1146
    .local v0, "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->cancelCommand()V

    .line 1147
    return-void
.end method

.method public cancelOutgoingMail(JILxv;)V
    .locals 1
    .param p1, "messageId"    # J
    .param p3, "cancelType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 765
    .local p4, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->cancelOutgoingMail(JILxv;)V

    .line 766
    return-void
.end method

.method public changeCalendarStatus(Ljava/lang/String;Ljava/lang/String;IILxv;)V
    .locals 1
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "calendarSerId"    # Ljava/lang/String;
    .param p3, "oldStatus"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1151
    .local p5, "listener":Lxv;, "Lxv<Lxv$a;>;"
    const-string/jumbo v0, "Common account changeCalendarStatus"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->notSupportException(Ljava/lang/String;)V

    .line 1152
    return-void
.end method

.method public changeMailAllReadStatus(JZLjava/lang/String;Lxv;)V
    .locals 7
    .param p1, "mailboxId"    # J
    .param p3, "readStatus"    # Z
    .param p4, "oldestSerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 993
    .local p5, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "changeMailAllReadStatus readStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->g(Ljava/lang/String;)I

    .line 994
    new-instance v1, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$13;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$13;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;JZ)V

    .line 1013
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v1, p5}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1014
    return-void
.end method

.method public varargs changeMailFavorite(ZLxv;[Ljava/lang/String;)V
    .locals 1
    .param p1, "isFavorite"    # Z
    .param p3, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 906
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    const-string/jumbo v0, "changeMailFavorite"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->notSupportException(Ljava/lang/String;)V

    .line 907
    return-void
.end method

.method public varargs changeMailReadStatus(ZLxv;[Ljava/lang/String;)V
    .locals 3
    .param p1, "readStatus"    # Z
    .param p3, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 880
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    if-eqz p3, :cond_0

    array-length v1, p3

    if-nez v1, :cond_2

    .line 881
    :cond_0
    if-eqz p2, :cond_1

    .line 882
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v1

    invoke-interface {p2, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 902
    :cond_1
    :goto_0
    return-void

    .line 887
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "changeMailReadStatus mailServerIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzb;->g(Ljava/lang/String;)I

    .line 888
    new-instance v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$11;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p3}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$11;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 901
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method

.method public changeMailReadStatusByTag(Ljava/lang/String;ZLxv;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "readStatus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1018
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    const-string/jumbo v0, "changeMailReadStatusByTag"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->notSupportException(Ljava/lang/String;)V

    .line 1019
    return-void
.end method

.method public changeMailReadTimestamp(Lxv;Ljava/lang/String;J)V
    .locals 1
    .param p2, "mailServerId"    # Ljava/lang/String;
    .param p3, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 780
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->changeMailReadTimestamp(Lxv;Ljava/lang/String;J)V

    .line 781
    return-void
.end method

.method public varargs changeMailReminder(ZLxv;[Ljava/lang/String;)V
    .locals 0
    .param p1, "isReminder"    # Z
    .param p3, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 775
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->changeMailReminder(ZLxv;[Ljava/lang/String;)V

    .line 776
    return-void
.end method

.method public varargs deleteMailByServerId(Lxv;[Ljava/lang/String;)V
    .locals 2
    .param p2, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 785
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_2

    .line 786
    :cond_0
    if-eqz p1, :cond_1

    .line 787
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v1

    invoke-interface {p1, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 869
    :cond_1
    :goto_0
    return-void

    .line 792
    :cond_2
    new-instance v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$10;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$10;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;[Ljava/lang/String;Lxv;)V

    .line 868
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method

.method public fetchSearchMailFromServer(Ljava/lang/String;Lxv;)V
    .locals 1
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 956
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    const-string/jumbo v0, "fetchSearchMailFromServer"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->notSupportException(Ljava/lang/String;)V

    .line 957
    return-void
.end method

.method public getOnlinePreviewUrl(Lcom/alibaba/alimei/sdk/model/AttachmentModel;Lxv;)V
    .locals 1
    .param p1, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            "Lxv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 971
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/String;>;"
    const-string/jumbo v0, "getOnlinePreviewUrl"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->notSupportException(Ljava/lang/String;)V

    .line 972
    return-void
.end method

.method public hasLocalTagMail(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->hasLocalTagMail(Ljava/lang/String;Lxv;)V

    .line 310
    return-void
.end method

.method public hasMoreHistoryMails(JILxv;)V
    .locals 1
    .param p1, "folderId"    # J
    .param p3, "folderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p4, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->hasMoreHistoryMails(JILxv;)V

    .line 153
    return-void
.end method

.method public hasMoreHistoryMails(JI)Z
    .locals 1
    .param p1, "folderId"    # J
    .param p3, "folderType"    # I

    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->hasMoreHistoryMails(JI)Z

    move-result v0

    return v0
.end method

.method public loadHistoryMails(JILjava/lang/String;Lxv;)V
    .locals 9
    .param p1, "folderId"    # J
    .param p3, "folderType"    # I
    .param p4, "oldestSerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p5, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    sget-object v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "loadMultipleHistoryMails"

    invoke-static {v0, v1}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "accountName":Ljava/lang/String;
    invoke-static {}, Laif;->a()Laie;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$1;

    move-object v2, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$1;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;JILxv;)V

    invoke-interface {v0, v1}, Laie;->a(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method public declared-synchronized loadHistoryMails(JLjava/lang/String;JILxv;)V
    .locals 16
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "folderId"    # J
    .param p6, "folderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "JI",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p7, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-interface {v2, v0, v1}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByIdForSyncKey(J)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v6

    .line 186
    .local v6, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez v6, :cond_1

    .line 188
    sget-object v2, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->TAG:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Mailbox do not exist for folderId --> "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-eqz p7, :cond_0

    .line 190
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-interface {v0, v2}, Lxv;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 195
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v7

    .line 196
    .local v7, "messageDatasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    iget-wide v2, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-wide/from16 v0, p1

    invoke-interface {v7, v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMinImapUid(JJ)J

    move-result-wide v12

    .line 200
    .local v12, "minUid":J
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v2, v0}, Lpq;->getAccountByMail(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v15

    .line 201
    .local v15, "account":Lcom/alibaba/alimei/emailcommon/Account;
    invoke-static {}, Lpw;->a()Lpw;

    move-result-object v14

    iget-object v10, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    const/4 v11, 0x2

    new-instance v2, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$2;

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$2;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;JLcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;Ljava/lang/String;Lxv;)V

    move-object v8, v14

    move-object v9, v15

    move-object v14, v2

    invoke-virtual/range {v8 .. v14}, Lpw;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;IJLuv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 181
    .end local v6    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .end local v7    # "messageDatasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .end local v12    # "minUid":J
    .end local v15    # "account":Lcom/alibaba/alimei/emailcommon/Account;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public loadMailBodyFromServer(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 459
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    invoke-static {}, Laif;->a()Laie;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Lxv;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Laie;->a(Ljava/lang/Runnable;)V

    .line 577
    return-void
.end method

.method public loadMailHistoryByTag(Ljava/lang/String;JJLxv;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 981
    .local p6, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    const-string/jumbo v0, "loadMailHistoryByTag"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->notSupportException(Ljava/lang/String;)V

    .line 982
    return-void
.end method

.method public loadMailHtmlBodyFromServer(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 337
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/String;>;"
    invoke-static {}, Laif;->a()Laie;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$4;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Lxv;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Laie;->a(Ljava/lang/Runnable;)V

    .line 453
    return-void
.end method

.method public loadMultipleHistoryMails([J[I[Ljava/lang/String;Lxv;)V
    .locals 7
    .param p1, "folderIds"    # [J
    .param p2, "folderTypes"    # [I
    .param p3, "oldestSerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J[I[",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 254
    .local p4, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    sget-object v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "loadMultipleHistoryMails"

    invoke-static {v0, v1}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "accountName":Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 257
    invoke-static {}, Laif;->a()Laie;

    move-result-object v6

    new-instance v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$3;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$3;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;[J[ILxv;)V

    invoke-interface {v6, v0}, Laie;->a(Ljava/lang/Runnable;)V

    .line 265
    :cond_0
    return-void
.end method

.method public loadSearchMailFromServer(Ljava/lang/String;Lxv;)V
    .locals 1
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 581
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    const-string/jumbo v0, "loadSearchMailFromServer"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->notSupportException(Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method public varargs moveMailToNewFolder(JLxv;[Ljava/lang/String;)V
    .locals 7
    .param p1, "targetFolderId"    # J
    .param p4, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 911
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    if-eqz p4, :cond_0

    array-length v0, p4

    if-nez v0, :cond_2

    .line 912
    :cond_0
    if-eqz p3, :cond_1

    .line 913
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v0

    invoke-interface {p3, v0}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 936
    :cond_1
    :goto_0
    return-void

    .line 918
    :cond_2
    new-instance v1, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$12;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$12;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;J[Ljava/lang/String;)V

    .line 935
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v1, p3}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method

.method public queryAllLocalFavoriteMails(Lxv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryAllLocalFavoriteMails(Lxv;)V

    .line 290
    return-void
.end method

.method public queryAllLocalMails(JLxv;)V
    .locals 1
    .param p1, "folderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p3, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryAllLocalMails(JLxv;)V

    .line 270
    return-void
.end method

.method public queryAllLocalMails(Lxv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryAllLocalMails(Lxv;)V

    .line 285
    return-void
.end method

.method public queryAllLocalMailsByTag(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryAllLocalMailsByTag(Ljava/lang/String;Lxv;)V

    .line 300
    return-void
.end method

.method public queryAllLocalRecentReadMails(Lxv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryAllLocalRecentReadMails(Lxv;)V

    .line 295
    return-void
.end method

.method public queryAllUnloadedMails(Lxv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryAllUnloadedMails(Lxv;)V

    .line 280
    return-void
.end method

.method public queryAttachmentByContentUri(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .locals 1
    .param p1, "contentUri"    # Ljava/lang/String;

    .prologue
    .line 619
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryAttachmentByContentUri(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    move-result-object v0

    return-object v0
.end method

.method public queryAttachmentByContentUri(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "contentUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryAttachmentByContentUri(Ljava/lang/String;Lxv;)V

    .line 629
    return-void
.end method

.method public queryLocalCommunicateEmails(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "targetEmail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 961
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryLocalCommunicateEmails(Ljava/lang/String;Lxv;)V

    .line 962
    return-void
.end method

.method public queryLocalMails(ILxv;)V
    .locals 0
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryLocalMails(ILxv;)V

    .line 275
    return-void
.end method

.method public queryLocalMailsByConversationId(JLjava/lang/String;Lxv;)V
    .locals 1
    .param p1, "folderId"    # J
    .param p3, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p4, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryLocalMailsByConversationId(JLjava/lang/String;Lxv;)V

    .line 316
    return-void
.end method

.method public queryLocalMailsByTag(JLjava/lang/String;Lxv;)V
    .locals 1
    .param p1, "folderId"    # J
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p4, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryLocalMailsByTag(JLjava/lang/String;Lxv;)V

    .line 305
    return-void
.end method

.method public queryMailAttachmentNumber(Ljava/lang/String;Z)I
    .locals 1
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "includeResourceAttachment"    # Z

    .prologue
    .line 610
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailAttachmentNumber(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public queryMailAttachmentNumber(Ljava/lang/String;ZLxv;)V
    .locals 0
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "includeResourceAttachment"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 604
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Integer;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailAttachmentNumber(Ljava/lang/String;ZLxv;)V

    .line 605
    return-void
.end method

.method public queryMailAttachments(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 586
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailAttachments(Ljava/lang/String;Lxv;)V

    .line 587
    return-void
.end method

.method public queryMailById(J)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .locals 1
    .param p1, "mailId"    # J

    .prologue
    .line 326
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailById(J)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v0

    return-object v0
.end method

.method public queryMailById(JLxv;)V
    .locals 1
    .param p1, "mailId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailById(JLxv;)V

    .line 332
    return-void
.end method

.method public queryMailByTagFromServer(Ljava/lang/String;JJLxv;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 976
    .local p6, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;>;"
    const-string/jumbo v0, "queryMailByTagFromServer"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->notSupportException(Ljava/lang/String;)V

    .line 977
    return-void
.end method

.method public queryMailDetail(Landroid/content/Context;Landroid/net/Uri;Lxv;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "emailUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 655
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailDetail(Landroid/content/Context;Landroid/net/Uri;Lxv;)V

    .line 656
    return-void
.end method

.method public queryMailDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLxv;)V
    .locals 1
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "fromAddress"    # Ljava/lang/String;
    .param p3, "messageId"    # Ljava/lang/String;
    .param p4, "forceLoadFromServer"    # Z
    .param p5, "shouldStoreIntoLocal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 650
    .local p6, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    const-string/jumbo v0, "queryMailDetail"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->notSupportException(Ljava/lang/String;)V

    .line 651
    return-void
.end method

.method public queryMailDetail(Ljava/lang/String;Ljava/lang/String;ZZLxv;)V
    .locals 1
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "fromAddress"    # Ljava/lang/String;
    .param p3, "forceLoadFromServer"    # Z
    .param p4, "shouldStoreIntoLocal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 645
    .local p5, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    const-string/jumbo v0, "queryMailDetail"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->notSupportException(Ljava/lang/String;)V

    .line 646
    return-void
.end method

.method public queryMailDetail(Ljava/lang/String;ZLxv;)V
    .locals 2
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "forceLoadFromServer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 633
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    new-instance v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$6;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$6;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 641
    return-void
.end method

.method public queryMailDetailById(JLxv;)V
    .locals 1
    .param p1, "mailId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailDetailById(JLxv;)V

    .line 321
    return-void
.end method

.method public queryMailDraft(JLxv;)V
    .locals 1
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lagz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 770
    .local p3, "listener":Lxv;, "Lxv<Lagz;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailDraft(JLxv;)V

    .line 771
    return-void
.end method

.method public queryMailNormalAttachments(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 592
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailNormalAttachments(Ljava/lang/String;Lxv;)V

    .line 593
    return-void
.end method

.method public queryMailResourceAttachments(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 598
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailResourceAttachments(Ljava/lang/String;Lxv;)V

    .line 599
    return-void
.end method

.method public queryRelatedMails(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "targetEmail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 966
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryRelatedMails(Ljava/lang/String;Lxv;)V

    .line 967
    return-void
.end method

.method public refreshMails(JILxv;)V
    .locals 1
    .param p1, "folderId"    # J
    .param p3, "folderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailGroupModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p4, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailGroupModel;>;"
    const-string/jumbo v0, "refreshMails"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->notSupportException(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public refreshMailsAndQueryAllLocal(JILxv;)V
    .locals 1
    .param p1, "folderId"    # J
    .param p3, "folderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p4, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    const-string/jumbo v0, "refreshMailsAndQueryALlLocal"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->notSupportException(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public resetFoldersSyncStatus(Lxv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1023
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$14;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$14;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Lxv;)V

    .line 1044
    .local v0, "firstCallback":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    new-instance v1, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$15;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$15;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;)V

    .line 1059
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1060
    return-void
.end method

.method public saveMailDraft(Lagz;ZLxv;)V
    .locals 6
    .param p1, "newMail"    # Lagz;
    .param p2, "isSyncToServer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagz;",
            "Z",
            "Lxv",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 724
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lagz;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lagz;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 725
    invoke-virtual {p1}, Lagz;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lagz;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 726
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid Argument: Cannot save an completely empty email as draft!!"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 728
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, "accountName":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$9;

    move-object v1, p0

    move-object v3, v2

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$9;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;Ljava/lang/String;Lagz;Z)V

    .line 753
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Long;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 754
    return-void
.end method

.method public searchAttachmentFromServer(Ljava/lang/String;IILxv;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "length"    # I
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lxv",
            "<",
            "Lagu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 951
    .local p4, "listener":Lxv;, "Lxv<Lagu;>;"
    const-string/jumbo v0, "searchAttachmentFromServer"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->notSupportException(Ljava/lang/String;)V

    .line 952
    return-void
.end method

.method public searchLocalMail(Ljava/lang/String;ILxv;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "searchType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 940
    .local p3, "listener":Lxv;, "Lxv<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->searchLocalMail(Ljava/lang/String;ILxv;)V

    .line 941
    return-void
.end method

.method public searchMailFromServer(Ljava/lang/String;IIILxv;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "searchType"    # I
    .param p3, "length"    # I
    .param p4, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 946
    .local p5, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;>;"
    const-string/jumbo v0, "searchMailFromServer"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->notSupportException(Ljava/lang/String;)V

    .line 947
    return-void
.end method

.method public sendMail(Lagz;)V
    .locals 1
    .param p1, "newMail"    # Lagz;

    .prologue
    .line 680
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->sendMail(Lagz;Lxv;)V

    .line 681
    return-void
.end method

.method public sendMail(Lagz;Lxv;)V
    .locals 4
    .param p1, "newMail"    # Lagz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagz;",
            "Lxv",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 685
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Long;>;"
    sget-object v2, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMail"

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-virtual {p1}, Lagz;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 688
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid Argument: NewMailModel must have a recipient at least"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 690
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "accountName":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$8;

    invoke-direct {v1, p0, v0, v0, p1}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$8;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;Ljava/lang/String;Lagz;)V

    .line 719
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Long;>;"
    invoke-virtual {p0, v1, p2}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 720
    return-void
.end method

.method public sendMailById(J)V
    .locals 3
    .param p1, "mailId"    # J

    .prologue
    .line 660
    new-instance v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$7;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$7;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;J)V

    .line 675
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 676
    return-void
.end method

.method public startAutoDownloadMailDetailTask()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1139
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/CommonDownloadMailDetailCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/adpater/task/cmmd/CommonDownloadMailDetailCommand;-><init>(Ljava/lang/String;)V

    .line 1140
    .local v0, "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->executeCommand()V

    .line 1141
    return-void
.end method

.method public startSyncHistoryMails(JI)V
    .locals 1
    .param p1, "folderId"    # J
    .param p3, "folderType"    # I

    .prologue
    .line 132
    const-string/jumbo v0, "startSyncHistoryMails"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->notSupportException(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public startSyncHistoryMails([J[I)V
    .locals 1
    .param p1, "folderIds"    # [J
    .param p2, "folderTypes"    # [I

    .prologue
    .line 137
    const-string/jumbo v0, "startSyncHistoryMails"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->notSupportException(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public startSyncMailByTagFromServer(Ljava/lang/String;JJ)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J

    .prologue
    .line 142
    const-string/jumbo v0, "startSyncMailByTagFromServer"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->notSupportException(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public startSyncMails(JIZ)V
    .locals 5
    .param p1, "folderId"    # J
    .param p3, "folderType"    # I
    .param p4, "isIncrementSync"    # Z

    .prologue
    .line 91
    sget-object v1, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startSyncMails "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {p3}, Laja;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;-><init>(Ljava/lang/String;J)V

    .line 97
    .local v0, "command":Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;
    invoke-virtual {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;->executeCommand()V

    goto :goto_0
.end method

.method public startSyncNewMails(JI)V
    .locals 5
    .param p1, "folderId"    # J
    .param p3, "folderType"    # I

    .prologue
    .line 103
    sget-object v1, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startSyncNewMails "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {p3}, Laja;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;-><init>(Ljava/lang/String;J)V

    .line 109
    .local v0, "command":Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;
    invoke-virtual {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;->executeCommand()V

    goto :goto_0
.end method

.method public startSyncNewMails([J[I)V
    .locals 6
    .param p1, "folderIds"    # [J
    .param p2, "folderTypes"    # [I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 115
    sget-object v2, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startSyncNewMails"

    invoke-static {v2, v3}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    if-nez p1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    array-length v1, p1

    .line 120
    .local v1, "length":I
    if-lez v1, :cond_0

    .line 121
    aget v2, p2, v4

    invoke-static {v2}, Laja;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    aget-wide v4, p1, v4

    invoke-direct {v0, v2, v4, v5}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;-><init>(Ljava/lang/String;J)V

    .line 125
    .local v0, "command":Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;
    invoke-virtual {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;->executeCommand()V

    goto :goto_0
.end method

.method public updateImapMailStatus(Ljava/lang/String;JJJ)V
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "folderId"    # J
    .param p4, "startUid"    # J
    .param p6, "endUid"    # J

    .prologue
    .line 986
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;-><init>(Ljava/lang/String;JJJ)V

    .line 987
    .local v0, "command":Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->executeCommand()V

    .line 988
    return-void
.end method
