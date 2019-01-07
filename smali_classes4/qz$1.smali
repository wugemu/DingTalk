.class final Lqz$1;
.super Luv;
.source "SyncImapMailsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqz;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lyc;

.field final synthetic b:Lya;

.field final synthetic c:J

.field final synthetic d:Lqz;


# direct methods
.method constructor <init>(Lqz;Lyc;Lya;J)V
    .locals 0
    .param p1, "this$0"    # Lqz;

    .prologue
    .line 98
    iput-object p1, p0, Lqz$1;->d:Lqz;

    iput-object p2, p0, Lqz$1;->a:Lyc;

    iput-object p3, p0, Lqz$1;->b:Lya;

    iput-wide p4, p0, Lqz$1;->c:J

    invoke-direct {p0}, Luv;-><init>()V

    return-void
.end method


# virtual methods
.method public final synchronizeMailboxFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 165
    instance-of v1, p3, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    if-eqz v1, :cond_1

    move-object v1, p3

    .line 166
    check-cast v1, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    invoke-static {v1}, Lrb;->a(Lcom/alibaba/alimei/emailcommon/mail/MessagingException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    .line 172
    .local v0, "sdkException":Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    :goto_0
    iget-object v1, p0, Lqz$1;->a:Lyc;

    iput-object v0, v1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 173
    iget-object v1, p0, Lqz$1;->a:Lyc;

    const/4 v2, 0x2

    iput v2, v1, Lyc;->c:I

    .line 175
    if-eqz p1, :cond_0

    .line 176
    iget-object v1, p0, Lqz$1;->a:Lyc;

    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/Account;->o()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lyc;->f:Ljava/lang/String;

    .line 178
    :cond_0
    iget-object v1, p0, Lqz$1;->b:Lya;

    iget-object v2, p0, Lqz$1;->a:Lyc;

    invoke-interface {v1, v2}, Lya;->a(Lyc;)V

    .line 180
    const-string/jumbo v1, "SyncImapMailsTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "synchronizeMailboxFailed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void

    .line 168
    .end local v0    # "sdkException":Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    :cond_1
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->Unknown:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v1, p3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    .line 169
    .restart local v0    # "sdkException":Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->setIsCommonProtocolError(Z)V

    goto :goto_0
.end method

.method public final synchronizeMailboxFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;II)V
    .locals 14
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "totalMessagesInMailbox"    # I
    .param p4, "numNewMessages"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 150
    const-string/jumbo v0, "SyncImapMailsTask"

    const-string/jumbo v1, "synchronizeMailboxFinished"

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v8, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    invoke-direct {v8}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;-><init>()V

    .line 153
    .local v8, "syncMailResult":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    iget-object v0, p0, Lqz$1;->d:Lqz;

    invoke-static {v0}, Lqz;->b(Lqz;)Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v0

    iget-object v1, p0, Lqz$1;->d:Lqz;

    iget-object v1, v1, Lqz;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lqz$1;->d:Lqz;

    iget-object v3, v3, Lqz;->a:Ljava/lang/String;

    iget-object v4, p0, Lqz$1;->d:Lqz;

    invoke-static {v4}, Lqz;->a(Lqz;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v4

    iget-wide v4, v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    iget-object v13, p0, Lqz$1;->d:Lqz;

    iget-object v13, v13, Lqz;->a:Ljava/lang/String;

    .line 154
    invoke-static {v13}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v13

    .line 153
    invoke-interface/range {v0 .. v13}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleMailSyncResults(JLjava/lang/String;JZZLcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;ZZZILcom/alibaba/alimei/sdk/api/MailApi;)Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    .line 155
    iget-object v0, p0, Lqz$1;->a:Lyc;

    const/4 v1, 0x1

    iput v1, v0, Lyc;->c:I

    .line 156
    iget-object v0, p0, Lqz$1;->b:Lya;

    iget-object v1, p0, Lqz$1;->a:Lyc;

    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 157
    return-void
.end method

.method public final synchronizeMailboxHeadersFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;II)V
    .locals 2
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "totalMessagesInMailbox"    # I
    .param p4, "numNewMessages"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 143
    const-string/jumbo v0, "SyncImapMailsTask"

    const-string/jumbo v1, "synchronizeMailboxHeadersFinished"

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public final synchronizeMailboxHeadersProgress(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;II)V
    .locals 5
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "total"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x3

    .line 114
    const-string/jumbo v0, "SyncImapMailsTask"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "download message "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 115
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "/"

    aput-object v3, v1, v2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 114
    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lqz$1;->a:Lyc;

    iput v4, v0, Lyc;->c:I

    .line 118
    iget-object v0, p0, Lqz$1;->a:Lyc;

    iput p3, v0, Lyc;->d:I

    .line 119
    iget-object v0, p0, Lqz$1;->a:Lyc;

    int-to-long v2, p4

    iput-wide v2, v0, Lyc;->e:J

    .line 120
    iget-object v0, p0, Lqz$1;->b:Lya;

    iget-object v1, p0, Lqz$1;->a:Lyc;

    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 121
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
    .line 125
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    const-string/jumbo v1, "SyncImapMailsTask"

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "maxUid"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-wide v4, p0, Lqz$1;->c:J

    .line 126
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, "synchronizeMailboxHeadersProgress, folder:"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object p2, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v3, ", messages.size:"

    aput-object v3, v2, v0

    const/4 v3, 0x5

    if-nez p3, :cond_0

    const-string/jumbo v0, "null"

    .line 128
    :goto_0
    aput-object v0, v2, v3

    .line 125
    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lqz$1;->d:Lqz;

    iget-object v0, v0, Lqz;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 131
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lqz$1;->d:Lqz;

    invoke-static {v2}, Lqz;->a(Lqz;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    iget-object v4, p0, Lqz$1;->d:Lqz;

    invoke-static {v4}, Lqz;->b(Lqz;)Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v5

    move-object/from16 v4, p3

    .line 130
    invoke-static/range {v0 .. v5}, Lrc;->a(JJLjava/util/List;Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;)Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    move-result-object v8

    .line 133
    .local v8, "syncMailResult":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    const-string/jumbo v0, "basic_SyncMail"

    iget-object v1, p0, Lqz$1;->a:Lyc;

    iget-object v1, v1, Lyc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 135
    .local v9, "saveOldestItemId":Z
    iget-object v0, p0, Lqz$1;->d:Lqz;

    invoke-static {v0}, Lqz;->b(Lqz;)Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v0

    iget-object v1, p0, Lqz$1;->d:Lqz;

    iget-object v1, v1, Lqz;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lqz$1;->d:Lqz;

    iget-object v3, v3, Lqz;->a:Ljava/lang/String;

    iget-object v4, p0, Lqz$1;->d:Lqz;

    .line 136
    invoke-static {v4}, Lqz;->a(Lqz;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v4

    iget-wide v4, v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x5

    iget-object v13, p0, Lqz$1;->d:Lqz;

    iget-object v13, v13, Lqz;->a:Ljava/lang/String;

    invoke-static {v13}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v13

    .line 135
    invoke-interface/range {v0 .. v13}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleMailSyncResults(JLjava/lang/String;JZZLcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;ZZZILcom/alibaba/alimei/sdk/api/MailApi;)Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    .line 137
    return-void

    .line 128
    .end local v8    # "syncMailResult":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    .end local v9    # "saveOldestItemId":Z
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final synchronizeMailboxHeadersStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 108
    const-string/jumbo v0, "SyncImapMailsTask"

    const-string/jumbo v1, "synchronizeMailboxHeadersStarted"

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public final synchronizeMailboxStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 102
    const-string/jumbo v0, "SyncImapMailsTask"

    const-string/jumbo v1, "synchronizeMailboxStarted"

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method
