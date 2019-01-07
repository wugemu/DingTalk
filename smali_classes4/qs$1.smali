.class final Lqs$1;
.super Luv;
.source "FetchMailSummaryTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqs;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

.field final synthetic b:Lqs;


# direct methods
.method constructor <init>(Lqs;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)V
    .locals 0
    .param p1, "this$0"    # Lqs;

    .prologue
    .line 115
    iput-object p1, p0, Lqs$1;->b:Lqs;

    iput-object p2, p0, Lqs$1;->a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-direct {p0}, Luv;-><init>()V

    return-void
.end method


# virtual methods
.method public final fetchMailSummaryFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 7
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v5, 0x0

    .line 172
    invoke-super/range {p0 .. p5}, Luv;->fetchMailSummaryFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/Exception;)V

    .line 174
    const-string/jumbo v0, "fetchPart failure"

    .line 175
    .local v0, "errorCode":Ljava/lang/String;
    instance-of v1, p5, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    if-eqz v1, :cond_0

    move-object v1, p5

    .line 176
    check-cast v1, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    invoke-virtual {v1}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_0
    const-string/jumbo v1, "imap_fetch_body_by_part"

    invoke-virtual {p5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lahc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string/jumbo v1, "fetchMailSummary"

    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/Account;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/Account;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v0, v4}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string/jumbo v1, "FetchMailSummaryTask"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "fetchMailSummaryFailed exception "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-boolean v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "FetchMailSummaryTaskfetchMailDetail failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzb;->g(Ljava/lang/String;)I

    .line 187
    :cond_1
    iget-object v1, p0, Lqs$1;->b:Lqs;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v5, v4}, Lqs;->a(Lqs;JZLjava/lang/String;)V

    .line 189
    iget-object v1, p0, Lqs$1;->b:Lqs;

    invoke-static {v1}, Lqs;->b(Lqs;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 190
    :try_start_0
    iget-object v1, p0, Lqs$1;->b:Lqs;

    invoke-static {v1}, Lqs;->b(Lqs;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 191
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final fetchMailSummaryFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 17
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "part"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    .line 124
    invoke-super/range {p0 .. p5}, Luv;->fetchMailSummaryFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLcom/alibaba/alimei/emailcommon/mail/Message;)V

    .line 126
    const/4 v7, 0x0

    .line 127
    .local v7, "html":Ljava/lang/String;
    const/4 v8, 0x0

    .line 130
    .local v8, "text":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-static {v4, v0}, Lvj;->a(Landroid/content/Context;Lcom/alibaba/alimei/emailcommon/mail/Message;)Lvj$i;

    move-result-object v12

    .line 132
    .local v12, "viewableContainer":Lvj$i;
    iget-object v7, v12, Lvj$i;->c:Ljava/lang/String;

    .line 133
    iget-object v8, v12, Lvj$i;->a:Ljava/lang/String;

    .line 135
    invoke-static {v7, v8}, Lair;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 137
    .local v11, "summary":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    const-string/jumbo v10, "DINGTALK_EMPTY_SUMMARY"

    .line 139
    .local v10, "savedSummary":Ljava/lang/String;
    :goto_0
    sget-boolean v4, Lzb;->b:Z

    if-eqz v4, :cond_1

    .line 140
    const-string/jumbo v4, "FetchMailSummaryTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "htmlText: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string/jumbo v4, "FetchMailSummaryTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "plainText: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string/jumbo v4, "FetchMailSummaryTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "finish:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " text = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lqs$1;->b:Lqs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lqs$1;->a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    iget-wide v14, v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    const/4 v5, 0x1

    invoke-static {v4, v14, v15, v5, v10}, Lqs;->a(Lqs;JZLjava/lang/String;)V

    .line 146
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 147
    :cond_2
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v3

    .line 148
    .local v3, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    move-object/from16 v0, p0

    iget-object v4, v0, Lqs$1;->b:Lqs;

    invoke-static {v4}, Lqs;->a(Lqs;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lqs$1;->a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->updateMailBody(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .end local v3    # "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    :cond_3
    const-string/jumbo v4, "imap_fetch_body_by_part"

    invoke-static {v4}, Lahc;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lqs$1;->b:Lqs;

    invoke-static {v4}, Lqs;->b(Lqs;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 165
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lqs$1;->b:Lqs;

    invoke-static {v4}, Lqs;->b(Lqs;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 166
    monitor-exit v5

    .line 168
    .end local v10    # "savedSummary":Ljava/lang/String;
    .end local v11    # "summary":Ljava/lang/String;
    .end local v12    # "viewableContainer":Lvj$i;
    :goto_1
    return-void

    .restart local v11    # "summary":Ljava/lang/String;
    .restart local v12    # "viewableContainer":Lvj$i;
    :cond_4
    move-object v10, v11

    .line 137
    goto/16 :goto_0

    .line 166
    .restart local v10    # "savedSummary":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 153
    .end local v10    # "savedSummary":Ljava/lang/String;
    .end local v11    # "summary":Ljava/lang/String;
    .end local v12    # "viewableContainer":Lvj$i;
    :catch_0
    move-exception v9

    .line 154
    .local v9, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lqs$1;->b:Lqs;

    const-wide/16 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v14, v15, v5, v6}, Lqs;->a(Lqs;JZLjava/lang/String;)V

    .line 156
    invoke-virtual {v9}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v9}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "code":Ljava/lang/String;
    :goto_2
    const-string/jumbo v4, "imap_fetch_body_by_part"

    invoke-virtual {v9}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lahc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v4, "fetchMailSummary"

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/Account;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/Account;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v5, v6, v13, v14}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string/jumbo v4, "FetchMailSummaryTask"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v13, "fetchMailSummaryFinished exception "

    aput-object v13, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v9}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v6

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lqs$1;->b:Lqs;

    invoke-static {v4}, Lqs;->b(Lqs;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 165
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lqs$1;->b:Lqs;

    invoke-static {v4}, Lqs;->b(Lqs;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 166
    monitor-exit v5

    goto :goto_1

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 156
    .end local v2    # "code":Ljava/lang/String;
    :cond_5
    :try_start_4
    const-string/jumbo v2, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 164
    .end local v9    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :catchall_2
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lqs$1;->b:Lqs;

    invoke-static {v5}, Lqs;->b(Lqs;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 165
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lqs$1;->b:Lqs;

    invoke-static {v6}, Lqs;->b(Lqs;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 166
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v4

    :catchall_3
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v4
.end method

.method public final fetchMailSummaryStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "partId"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-super/range {p0 .. p5}, Luv;->fetchMailSummaryStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;)V

    .line 120
    return-void
.end method
