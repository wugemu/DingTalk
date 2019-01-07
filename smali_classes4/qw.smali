.class public final Lqw;
.super Lqk;
.source "SmtpSendTask.java"


# instance fields
.field public q:Z

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lqk;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqw;->q:Z

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lqw;->z:I

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 10
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "messageId"    # J
    .param p6, "sourceId"    # J

    .prologue
    .line 52
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lqk;-><init>(Ljava/lang/String;JJJZ)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqw;->q:Z

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lqw;->z:I

    .line 53
    return-void
.end method

.method static synthetic a(Lqw;)V
    .locals 0
    .param p0, "x0"    # Lqw;

    .prologue
    .line 28
    invoke-virtual {p0}, Lqw;->j()V

    return-void
.end method

.method static synthetic a(Lqw;Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 10
    .param p0, "x0"    # Lqw;
    .param p1, "x1"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x5

    const/4 v8, 0x0

    .line 28
    .line 1111
    iget-boolean v0, p0, Lqw;->q:Z

    if-eqz v0, :cond_4

    .line 1112
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v0

    .line 1113
    iget-object v1, p0, Lqw;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getIsFolderTypeSync2Server(Ljava/lang/String;I)Z

    move-result v3

    .line 1114
    iget-object v1, p0, Lqw;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getFolderByUserDefineType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1116
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    .line 1117
    iget-wide v6, p0, Lqw;->e:J

    invoke-interface {v1, v6, v7, v5}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v2

    .line 1119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1120
    iget-wide v6, p0, Lqw;->e:J

    invoke-interface {v1, v6, v7, v0}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v0

    .line 1123
    :goto_0
    if-nez v3, :cond_3

    .line 1125
    if-nez v2, :cond_2

    .line 1126
    const-string/jumbo v0, "SmtpSendTask"

    const-string/jumbo v2, "not found sent folder, create a local folder"

    invoke-static {v0, v2}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget-wide v2, p0, Lqw;->e:J

    iget-object v4, p0, Lqw;->a:Ljava/lang/String;

    const-string/jumbo v6, "sent"

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->addLocalFolder(JLjava/lang/String;ILjava/lang/String;)J

    move-result-wide v6

    .line 1132
    :goto_1
    const-string/jumbo v0, "SmtpSendTask"

    const-string/jumbo v1, "this is a local sent folder, just save"

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    iget-object v0, p0, Lqw;->h:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    if-eqz v0, :cond_0

    .line 2094
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    .line 2095
    iget-wide v2, p0, Lqw;->e:J

    iget-object v4, p0, Lqw;->a:Ljava/lang/String;

    iget-object v5, p0, Lqw;->h:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->moveMailToLocalFolder(JLjava/lang/String;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;J)V

    .line 2097
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    iget-wide v2, p0, Lqw;->e:J

    iget-object v1, p0, Lqw;->a:Ljava/lang/String;

    const/16 v4, -0x9

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 2098
    iget-object v1, p0, Lqw;->h:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addDeletedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 2100
    new-instance v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-object v2, p0, Lqw;->h:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;-><init>(J)V

    .line 2101
    iget-object v2, p0, Lqw;->h:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {v2, v1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->copy(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 2102
    iput-wide v6, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    .line 2103
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addAddedMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 2105
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 1134
    :cond_0
    invoke-virtual {p0, v9, v8, v8}, Lqw;->a(ZLcom/alibaba/alimei/emailcommon/Account;Ljava/lang/Exception;)V

    .line 1174
    :cond_1
    :goto_2
    return-void

    .line 1129
    :cond_2
    iget-wide v6, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    goto :goto_1

    .line 1139
    :cond_3
    invoke-virtual {p0}, Lqw;->d()V

    .line 1141
    invoke-static {}, Lpy;->a()Lpy;

    move-result-object v1

    .line 1144
    if-eqz v0, :cond_5

    .line 1148
    :goto_3
    if-eqz v0, :cond_1

    .line 1149
    const-string/jumbo v2, "SmtpSendTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "copy to sent folder: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v2, p0, Lqw;->c:Lcom/alibaba/alimei/emailcommon/Account;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    new-instance v3, Lqw$2;

    invoke-direct {v3, p0}, Lqw$2;-><init>(Lqw;)V

    invoke-virtual {v1, v2, v0, p1, v3}, Lpy;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;Luv;)V

    goto :goto_2

    .line 1176
    :cond_4
    invoke-virtual {p0}, Lqw;->d()V

    .line 1178
    const-string/jumbo v0, "SmtpSendTask"

    const-string/jumbo v1, "not need copy sent mail"

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-virtual {p0, v9, v8, v8}, Lqw;->a(ZLcom/alibaba/alimei/emailcommon/Account;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_3

    :cond_6
    move-object v0, v8

    goto/16 :goto_0
.end method

.method static synthetic b(Lqw;)V
    .locals 0
    .param p0, "x0"    # Lqw;

    .prologue
    .line 28
    invoke-virtual {p0}, Lqw;->j()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 3
    .param p1, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 62
    const-string/jumbo v1, "SmtpSendTask"

    const-string/jumbo v2, "sendMail"

    invoke-static {v1, v2}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lpy;->a()Lpy;

    move-result-object v0

    .line 66
    .local v0, "sendController":Lpy;
    iget-object v1, p0, Lqw;->c:Lcom/alibaba/alimei/emailcommon/Account;

    new-instance v2, Lqw$1;

    invoke-direct {v2, p0}, Lqw$1;-><init>(Lqw;)V

    invoke-virtual {v0, v1, p1, v2}, Lpy;->a(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;Luv;)V

    .line 90
    return-void
.end method

.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "SmtpSendTask"

    return-object v0
.end method

.method public final c_()I
    .locals 1

    .prologue
    .line 190
    const/16 v0, 0xa

    return v0
.end method

.method protected final f()I
    .locals 1

    .prologue
    .line 185
    const/16 v0, 0x8

    return v0
.end method
