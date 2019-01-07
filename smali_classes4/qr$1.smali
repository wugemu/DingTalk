.class final Lqr$1;
.super Luv;
.source "FetchMailEmlTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqr;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

.field final synthetic b:Lqr;


# direct methods
.method constructor <init>(Lqr;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)V
    .locals 0
    .param p1, "this$0"    # Lqr;

    .prologue
    .line 114
    iput-object p1, p0, Lqr$1;->b:Lqr;

    iput-object p2, p0, Lqr$1;->a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-direct {p0}, Luv;-><init>()V

    return-void
.end method


# virtual methods
.method public final fetchEmlFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/Long;
    .param p4, "e"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Luv;->fetchEmlFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Exception;)V

    .line 119
    instance-of v1, p4, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    if-eqz v1, :cond_0

    move-object v0, p4

    .line 120
    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    .line 121
    .local v0, "messagingException":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    const-string/jumbo v1, "imap_fetch_eml"

    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lahc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v0    # "messagingException":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :goto_0
    iget-object v1, p0, Lqr$1;->b:Lqr;

    invoke-static {v1}, Lqr;->a(Lqr;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 127
    :try_start_0
    iget-object v1, p0, Lqr$1;->b:Lqr;

    invoke-static {v1}, Lqr;->a(Lqr;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 128
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 123
    :cond_0
    const-string/jumbo v1, "imap_fetch_eml"

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->Unknown:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lahc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final fetchEmlFinish(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/String;)V
    .locals 20
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p3, "emlPath"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-super/range {p0 .. p3}, Luv;->fetchEmlFinish(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/String;)V

    .line 135
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;

    if-eqz v3, :cond_2

    .line 136
    const-string/jumbo v3, "FetchMailEmlTask"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "fetchEmlFinish "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v15, 0x0

    .line 140
    .local v15, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .end local v15    # "is":Ljava/io/InputStream;
    .local v16, "is":Ljava/io/InputStream;
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;

    move-object/from16 v17, v0

    .line 145
    .local v17, "mimeMessage":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v11

    .line 147
    .local v11, "context":Landroid/content/Context;
    invoke-static {v11}, Lut;->a(Landroid/content/Context;)V

    .line 148
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->a(Ljava/io/InputStream;)V

    .line 150
    new-instance v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    invoke-direct {v10}, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;-><init>()V

    .line 151
    .local v10, "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v19, "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvs;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v9, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvs;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Lvj;->a(Lvs;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lqr$1;->a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-object/from16 v0, v19

    invoke-static {v10, v3, v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMessageBodyFromPop3Message(Lcom/alibaba/alimei/sdk/db/mail/entry/Body;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;Ljava/util/ArrayList;)Z

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lqr$1;->a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    iget-object v0, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSnippet:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 158
    .local v18, "summary":Ljava/lang/String;
    sget-boolean v3, Lzb;->b:Z

    if-eqz v3, :cond_0

    .line 159
    const-string/jumbo v3, "FetchMailEmlTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "htmlText: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string/jumbo v3, "FetchMailEmlTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "plainText: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string/jumbo v3, "FetchMailEmlTask"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "finish:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lqr$1;->b:Lqr;

    invoke-static {v6}, Lqr;->b(Lqr;)Lqr$a;

    move-result-object v6

    iget-wide v6, v6, Lqr$a;->d:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " summary = "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v18, v4, v5

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const-string/jumbo v8, "DINGTALK_EMPTY_SUMMARY"

    .line 166
    .local v8, "savedSummary":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v2

    .line 167
    .local v2, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    move-object/from16 v0, p0

    iget-object v3, v0, Lqr$1;->b:Lqr;

    invoke-static {v3}, Lqr;->b(Lqr;)Lqr$a;

    move-result-object v3

    iget-wide v3, v3, Lqr$a;->b:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lqr$1;->b:Lqr;

    iget-object v5, v5, Lqr;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lqr$1;->a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    iget-wide v6, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->updateMailSummary(JLjava/lang/String;JLjava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lqr$1;->b:Lqr;

    invoke-static {v3}, Lqr;->b(Lqr;)Lqr$a;

    move-result-object v3

    iget-wide v3, v3, Lqr$a;->b:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lqr$1;->a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    iget-object v6, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    iget-object v7, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->updateMailBody(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lqr$1;->a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailDetailModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v12

    .line 172
    .local v12, "detalModel":Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    invoke-static {v11, v12, v9}, Laiu;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailDetailModel;Ljava/util/ArrayList;)V

    .line 175
    const-string/jumbo v3, "imap_fetch_eml"

    invoke-static {v3}, Lahc;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 197
    invoke-static/range {v16 .. v16}, Lcom/alibaba/alimei/restfulapi/support/IOUtils;->close(Ljava/io/Closeable;)V

    .line 201
    .end local v2    # "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .end local v8    # "savedSummary":Ljava/lang/String;
    .end local v9    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvs;>;"
    .end local v10    # "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .end local v11    # "context":Landroid/content/Context;
    .end local v12    # "detalModel":Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .end local v16    # "is":Ljava/io/InputStream;
    .end local v17    # "mimeMessage":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    .end local v18    # "summary":Ljava/lang/String;
    .end local v19    # "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvs;>;"
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lqr$1;->b:Lqr;

    invoke-static {v3}, Lqr;->a(Lqr;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 202
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lqr$1;->b:Lqr;

    invoke-static {v3}, Lqr;->a(Lqr;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 203
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .restart local v9    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvs;>;"
    .restart local v10    # "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .restart local v11    # "context":Landroid/content/Context;
    .restart local v16    # "is":Ljava/io/InputStream;
    .restart local v17    # "mimeMessage":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    .restart local v18    # "summary":Ljava/lang/String;
    .restart local v19    # "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvs;>;"
    :cond_3
    move-object/from16 v8, v18

    .line 164
    goto :goto_0

    .line 176
    .end local v9    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvs;>;"
    .end local v10    # "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .end local v11    # "context":Landroid/content/Context;
    .end local v16    # "is":Ljava/io/InputStream;
    .end local v17    # "mimeMessage":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    .end local v18    # "summary":Ljava/lang/String;
    .end local v19    # "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvs;>;"
    .restart local v15    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v13

    .line 177
    .local v13, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    sget-boolean v3, Lzb;->b:Z

    if-eqz v3, :cond_4

    .line 178
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    :cond_4
    invoke-static {v15}, Lcom/alibaba/alimei/restfulapi/support/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_1

    .line 181
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v13

    .line 182
    .local v13, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :goto_3
    :try_start_4
    sget-boolean v3, Lzb;->b:Z

    if-eqz v3, :cond_5

    .line 183
    invoke-virtual {v13}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 186
    :cond_5
    const-string/jumbo v3, "fetchMailEML"

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/Account;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/Account;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string/jumbo v3, "imap_fetch_eml"

    invoke-virtual {v13}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lahc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string/jumbo v3, "FetchMailEmlTask"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "fetchMailSummaryFromEML exception "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v13}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 197
    invoke-static {v15}, Lcom/alibaba/alimei/restfulapi/support/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_1

    .line 191
    .end local v13    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :catch_2
    move-exception v14

    .line 192
    .local v14, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_5
    sget-boolean v3, Lzb;->b:Z

    if-eqz v3, :cond_6

    .line 193
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 197
    :cond_6
    invoke-static {v15}, Lcom/alibaba/alimei/restfulapi/support/IOUtils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .end local v14    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_5
    invoke-static {v15}, Lcom/alibaba/alimei/restfulapi/support/IOUtils;->close(Ljava/io/Closeable;)V

    throw v3

    .line 203
    .end local v15    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 197
    .restart local v16    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v3

    move-object/from16 v15, v16

    .end local v16    # "is":Ljava/io/InputStream;
    .restart local v15    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 191
    .end local v15    # "is":Ljava/io/InputStream;
    .restart local v16    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v14

    move-object/from16 v15, v16

    .end local v16    # "is":Ljava/io/InputStream;
    .restart local v15    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 181
    .end local v15    # "is":Ljava/io/InputStream;
    .restart local v16    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v13

    move-object/from16 v15, v16

    .end local v16    # "is":Ljava/io/InputStream;
    .restart local v15    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 176
    .end local v15    # "is":Ljava/io/InputStream;
    .restart local v16    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v13

    move-object/from16 v15, v16

    .end local v16    # "is":Ljava/io/InputStream;
    .restart local v15    # "is":Ljava/io/InputStream;
    goto/16 :goto_2
.end method
