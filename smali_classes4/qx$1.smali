.class final Lqx$1;
.super Luv;
.source "SyncImapFlagsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqx;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lqx;


# direct methods
.method constructor <init>(Lqx;)V
    .locals 0
    .param p1, "this$0"    # Lqx;

    .prologue
    .line 90
    iput-object p1, p0, Lqx$1;->a:Lqx;

    invoke-direct {p0}, Luv;-><init>()V

    return-void
.end method


# virtual methods
.method public final synchronizeMailFlagFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 100
    sget-boolean v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    .line 103
    const-string/jumbo v0, "SyncImapFlagsTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " synchronizeMailFlagFailed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public final synchronizeMailFlagFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JJ[Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 17
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "startUid"    # J
    .param p5, "endUir"    # J
    .param p7, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    .line 108
    sget-boolean v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    .line 111
    const-string/jumbo v3, "SyncImapFlagsTask"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "synchronizeMailFlagFinished: messages.length:"

    aput-object v5, v4, v2

    const/4 v5, 0x1

    if-nez p7, :cond_0

    const-string/jumbo v2, "0"

    .line 113
    :goto_0
    aput-object v2, v4, v5

    .line 111
    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lqx$1;->a:Lqx;

    iget-object v2, v2, Lqx;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lqx$1;->a:Lqx;

    invoke-static {v4}, Lqx;->a(Lqx;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v4

    iget-wide v4, v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lqx$1;->a:Lqx;

    invoke-static {v6}, Lqx;->b(Lqx;)Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v7

    .line 1074
    new-instance v16, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;-><init>()V

    .line 1075
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1076
    if-eqz p7, :cond_2

    .line 1077
    const/4 v6, 0x0

    move v9, v6

    :goto_1
    move-object/from16 v0, p7

    array-length v6, v0

    if-ge v9, v6, :cond_1

    .line 1078
    aget-object v6, p7, v9

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lrc;->a(JJLcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;Ljava/util/HashMap;)Lcom/alibaba/alimei/restfulapi/data/Mail;

    move-result-object v6

    .line 1079
    const/16 v8, 0x64

    invoke-virtual {v6, v8}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAction(I)V

    .line 1080
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1077
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_1

    .line 111
    :cond_0
    move-object/from16 v0, p7

    array-length v2, v0

    .line 113
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1082
    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->setMails(Ljava/util/List;)V

    .line 117
    .local v16, "syncMailResult":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lqx$1;->a:Lqx;

    iget-object v2, v2, Lqx;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lqx$1;->a:Lqx;

    .line 118
    invoke-static {v2}, Lqx;->a(Lqx;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v2

    iget-wide v6, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lqx$1;->a:Lqx;

    invoke-static {v2}, Lqx;->c(Lqx;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lqx$1;->a:Lqx;

    invoke-static {v2}, Lqx;->d(Lqx;)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lqx$1;->a:Lqx;

    invoke-static {v2}, Lqx;->b(Lqx;)Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lqx$1;->a:Lqx;

    iget-object v14, v2, Lqx;->d:Ljava/util/List;

    move-object/from16 v3, v16

    move-object/from16 v12, p7

    .line 117
    invoke-static/range {v3 .. v14}, Lrc;->a(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;JJJJ[Lcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;Ljava/util/List;)Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    move-result-object v10

    .line 120
    .end local v16    # "syncMailResult":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    .local v10, "syncMailResult":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lqx$1;->a:Lqx;

    invoke-static {v2}, Lqx;->b(Lqx;)Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lqx$1;->a:Lqx;

    iget-object v3, v3, Lqx;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lqx$1;->a:Lqx;

    iget-object v5, v5, Lqx;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lqx$1;->a:Lqx;

    invoke-static {v6}, Lqx;->a(Lqx;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v6

    iget-wide v6, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lqx$1;->a:Lqx;

    iget-object v15, v15, Lqx;->a:Ljava/lang/String;

    invoke-static {v15}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v15

    invoke-interface/range {v2 .. v15}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleMailSyncResults(JLjava/lang/String;JZZLcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;ZZZILcom/alibaba/alimei/sdk/api/MailApi;)Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    .line 121
    return-void
.end method

.method public final synchronizeMailFlagQueryUnSyncedMail(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JJ[Lcom/alibaba/alimei/emailcommon/mail/Message;)Ljava/util/List;
    .locals 5
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "startUid"    # J
    .param p5, "endUid"    # J
    .param p7, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "JJ[",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    sget-boolean v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    .line 128
    const-string/jumbo v0, "SyncImapFlagsTask"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "synchronizeMailFlagQueryUnSyncedMail: startUid:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 130
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", endUid:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 131
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 128
    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lqx$1;->a:Lqx;

    iget-object v0, v0, Lqx;->d:Ljava/util/List;

    return-object v0
.end method

.method public final synchronizeMailFlagStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JJ)V
    .locals 1
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "startUid"    # J
    .param p5, "endUid"    # J

    .prologue
    .line 93
    sget-boolean v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    .line 96
    return-void
.end method

.method public final synchronizeMailboxHeadersProgress(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;)V
    .locals 14
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 137
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    sget-boolean v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    .line 140
    iget-object v0, p0, Lqx$1;->a:Lqx;

    iget-object v0, v0, Lqx;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lqx$1;->a:Lqx;

    invoke-static {v2}, Lqx;->a(Lqx;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    iget-object v4, p0, Lqx$1;->a:Lqx;

    invoke-static {v4}, Lqx;->b(Lqx;)Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v5

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v5}, Lrc;->a(JJLjava/util/List;Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;)Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    move-result-object v8

    .line 141
    .local v8, "syncMailResult":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    iget-object v0, p0, Lqx$1;->a:Lqx;

    invoke-static {v0}, Lqx;->b(Lqx;)Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v0

    iget-object v1, p0, Lqx$1;->a:Lqx;

    iget-object v1, v1, Lqx;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lqx$1;->a:Lqx;

    iget-object v3, v3, Lqx;->a:Ljava/lang/String;

    iget-object v4, p0, Lqx$1;->a:Lqx;

    invoke-static {v4}, Lqx;->a(Lqx;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v4

    iget-wide v4, v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lqx$1;->a:Lqx;

    iget-object v13, v13, Lqx;->a:Ljava/lang/String;

    invoke-static {v13}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v13

    invoke-interface/range {v0 .. v13}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleMailSyncResults(JLjava/lang/String;JZZLcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;ZZZILcom/alibaba/alimei/sdk/api/MailApi;)Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    .line 142
    return-void
.end method
