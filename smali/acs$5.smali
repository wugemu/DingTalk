.class final Lacs$5;
.super Ljava/lang/Object;
.source "MailNotificationManager.java"

# interfaces
.implements Lyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacs;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lacs;


# direct methods
.method constructor <init>(Lacs;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lacs;

    .prologue
    .line 441
    iput-object p1, p0, Lacs$5;->b:Lacs;

    iput-object p2, p0, Lacs$5;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lyc;)V
    .locals 14
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v2, 0x1

    .line 444
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v0

    iget-object v3, p1, Lyc;->b:Ljava/lang/String;

    invoke-interface {v0, v3}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v6

    .line 446
    .local v6, "isAgentEmail":Z
    const-string/jumbo v0, "basic_SyncMail"

    iget-object v3, p1, Lyc;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 447
    iget v0, p1, Lyc;->c:I

    if-nez v0, :cond_1

    .line 448
    iget-object v0, p0, Lacs$5;->b:Lacs;

    invoke-virtual {v0, v2}, Lacs;->a(Z)V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iget v0, p1, Lyc;->c:I

    if-ne v0, v2, :cond_3

    .line 450
    iget-object v0, p0, Lacs$5;->b:Lacs;

    invoke-virtual {v0, v12}, Lacs;->a(Z)V

    .line 1647
    const-string/jumbo v0, "mail_receive_success_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 452
    if-eqz v6, :cond_2

    .line 453
    const-string/jumbo v0, "mail.syncMail.imap"

    const-string/jumbo v2, "MailNotificationManager"

    invoke-static {v0, v2}, Lafe;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_2
    const-string/jumbo v0, "mail.syncMail"

    const-string/jumbo v2, "MailNotificationManager"

    invoke-static {v0, v2}, Lafe;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_3
    iget v0, p1, Lyc;->c:I

    if-ne v0, v13, :cond_0

    .line 458
    const-string/jumbo v0, "MailNotificationManager"

    iget-object v2, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 459
    const-string/jumbo v0, "registerMailSendNotification"

    iget-object v2, p1, Lyc;->f:Ljava/lang/String;

    iget-object v3, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v0, v2, v3}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 460
    const-string/jumbo v0, "mail.syncMail"

    iget-object v2, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v0, v2}, Lafe;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 461
    iget-object v0, p0, Lacs$5;->b:Lacs;

    invoke-virtual {v0, v12}, Lacs;->a(Z)V

    goto :goto_0

    .line 463
    :cond_4
    const-string/jumbo v0, "basic_SendMail"

    iget-object v3, p1, Lyc;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 464
    iget-object v0, p0, Lacs$5;->b:Lacs;

    invoke-static {v0}, Lacs;->c(Lacs;)Lfp;

    move-result-object v0

    iget-wide v10, p1, Lyc;->e:J

    iget v3, p1, Lyc;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v10, v11, v3}, Lfp;->b(JLjava/lang/Object;)V

    .line 465
    iget-object v0, p0, Lacs$5;->a:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v7

    .line 466
    .local v7, "msg":Landroid/os/Message;
    iget-object v1, p1, Lyc;->g:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 467
    .local v1, "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget v0, p1, Lyc;->c:I

    if-nez v0, :cond_7

    .line 468
    iget-object v0, p0, Lacs$5;->b:Lacs;

    invoke-static {v0}, Lacs;->d(Lacs;)Lfp;

    move-result-object v0

    iget-wide v2, p1, Lyc;->e:J

    iget v10, p1, Lyc;->c:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v2, v3, v10}, Lfp;->b(JLjava/lang/Object;)V

    .line 469
    iget-object v0, p0, Lacs$5;->b:Lacs;

    invoke-static {v0}, Lacs;->e(Lacs;)Lfp;

    move-result-object v0

    iget-wide v2, p1, Lyc;->e:J

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v3, v10}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 470
    iget-object v0, p0, Lacs$5;->b:Lacs;

    invoke-static {v0}, Lacs;->e(Lacs;)Lfp;

    move-result-object v0

    iget-wide v2, p1, Lyc;->e:J

    iget-object v10, p0, Lacs$5;->b:Lacs;

    invoke-static {v10}, Lacs;->c(Lacs;)Lfp;

    move-result-object v10

    invoke-virtual {v10}, Lfp;->a()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v2, v3, v10}, Lfp;->b(JLjava/lang/Object;)V

    .line 472
    :cond_5
    const/16 v0, 0x65

    iput v0, v7, Landroid/os/Message;->what:I

    .line 501
    :cond_6
    :goto_1
    iput-object p1, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 502
    iget-object v0, p0, Lacs$5;->a:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 473
    :cond_7
    iget v0, p1, Lyc;->c:I

    if-ne v0, v2, :cond_9

    .line 474
    iget-object v0, p0, Lacs$5;->b:Lacs;

    invoke-static {v0}, Lacs;->d(Lacs;)Lfp;

    move-result-object v0

    iget-wide v10, p1, Lyc;->e:J

    .line 2132
    invoke-virtual {v0, v10, v11}, Lfp;->b(J)V

    .line 475
    const/16 v0, 0x66

    iput v0, v7, Landroid/os/Message;->what:I

    .line 477
    iget-object v0, p0, Lacs$5;->b:Lacs;

    iget-object v3, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Lacs;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    if-eqz v6, :cond_8

    .line 480
    const-string/jumbo v0, "mail.sendMail.imap"

    const-string/jumbo v2, "MailNotificationManager"

    invoke-static {v0, v2}, Lafe;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 482
    :cond_8
    const-string/jumbo v0, "mail.sendMail"

    const-string/jumbo v2, "MailNotificationManager"

    invoke-static {v0, v2}, Lafe;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lacs$5;->b:Lacs;

    iget-object v2, p1, Lyc;->f:Ljava/lang/String;

    invoke-static {v0, v2}, Lacs;->a(Lacs;Ljava/lang/String;)V

    goto :goto_1

    .line 485
    :cond_9
    iget v0, p1, Lyc;->c:I

    if-ne v0, v13, :cond_6

    .line 486
    iget-object v0, p0, Lacs$5;->b:Lacs;

    invoke-static {v0}, Lacs;->d(Lacs;)Lfp;

    move-result-object v0

    iget-wide v2, p1, Lyc;->e:J

    .line 3132
    invoke-virtual {v0, v2, v3}, Lfp;->b(J)V

    .line 487
    const/16 v0, 0x67

    iput v0, v7, Landroid/os/Message;->what:I

    .line 489
    iget-object v0, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 490
    .local v4, "errCode":Ljava/lang/String;
    iget-object v0, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultMsg()Ljava/lang/String;

    move-result-object v5

    .line 492
    .local v5, "errMsg":Ljava/lang/String;
    iget-object v0, p0, Lacs$5;->b:Lacs;

    const-string/jumbo v3, ""

    move v2, v12

    invoke-virtual/range {v0 .. v5}, Lacs;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->isCommonProtocolError()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 495
    const-string/jumbo v0, "sendMail"

    iget-object v2, p1, Lyc;->f:Ljava/lang/String;

    iget-object v3, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v0, v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 496
    const-string/jumbo v0, "mail.sendMail"

    iget-object v2, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v0, v2}, Lafe;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    goto/16 :goto_1

    .line 498
    :cond_a
    const-string/jumbo v0, "MailNotificationManager"

    iget-object v2, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    goto/16 :goto_1

    .line 503
    .end local v1    # "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v4    # "errCode":Ljava/lang/String;
    .end local v5    # "errMsg":Ljava/lang/String;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_b
    const-string/jumbo v0, "SendMail1202ErrorCode"

    iget-object v2, p1, Lyc;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget v0, p1, Lyc;->c:I

    if-ne v0, v13, :cond_0

    .line 505
    const-string/jumbo v0, "MailNotificationManager"

    iget-object v2, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 506
    iget v0, p1, Lyc;->d:I

    const/16 v2, 0x13

    if-ne v0, v2, :cond_0

    .line 507
    iget-object v0, p0, Lacs$5;->b:Lacs;

    invoke-static {v0}, Lacs;->f(Lacs;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_c

    .line 508
    iget-object v0, p0, Lacs$5;->b:Lacs;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v2}, Lacs;->a(Lacs;Ljava/util/Map;)Ljava/util/Map;

    .line 510
    :cond_c
    iget-wide v8, p1, Lyc;->e:J

    .line 511
    .local v8, "mailId":J
    iget-object v0, p0, Lacs$5;->b:Lacs;

    invoke-static {v0, v8, v9}, Lacs;->a(Lacs;J)V

    goto/16 :goto_0
.end method
