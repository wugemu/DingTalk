.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcts$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 4526
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 4
    .param p1, "data"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4530
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aa(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aa(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4531
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->n()V

    .line 4533
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x2bc

    if-ne v0, v1, :cond_1

    .line 4534
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;J)V

    .line 4536
    :cond_1
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;Lcts$a;)V
    .locals 6
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "clickedItem"    # Lcts$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 4555
    iget-object v1, p2, Lcts$a;->e:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .line 4556
    .local v1, "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailId:Ljava/lang/String;

    .line 4557
    invoke-static {p1, v1}, Lddq;->a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;)V

    .line 4558
    iget v2, p2, Lcts$a;->d:I

    sget v3, Lcts$a;->c:I

    if-ne v2, v3, :cond_1

    .line 4560
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "mail_chat_transmit_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 4561
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v1, v4}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;I)V

    .line 4577
    :cond_0
    :goto_0
    return-void

    .line 4562
    :cond_1
    iget v2, p2, Lcts$a;->d:I

    if-nez v2, :cond_4

    .line 4563
    const/4 v0, 0x0

    .line 4564
    .local v0, "isChat":Z
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 4565
    const/4 v0, 0x1

    .line 4568
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "mail_chat_reply_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 4570
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 4571
    .end local v0    # "isChat":Z
    :cond_4
    iget v2, p2, Lcts$a;->d:I

    sget v3, Lcts$a;->b:I

    if-ne v2, v3, :cond_0

    .line 4572
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "mail_chat_replyall_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 4574
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;I)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;Lcts$c;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "onProcessingListener"    # Lcts$c;

    .prologue
    .line 4592
    const-string/jumbo v0, "chat_file_like_click"

    invoke-static {p1, v0}, Lddq;->b(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)V

    .line 4593
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lddq;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcts$c;)V

    .line 4594
    return-void
.end method

.method public final b(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 4540
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->D(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4541
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->D(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldey;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldey;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 4543
    :cond_0
    return-void
.end method

.method public final b(Lcom/alibaba/wukong/im/Message;Lcts$c;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "onProcessingListener"    # Lcts$c;

    .prologue
    .line 4598
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lddq;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcts$c;)V

    .line 4599
    return-void
.end method

.method public final c(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 4547
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->D(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4548
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->D(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldey;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldey;->e(Lcom/alibaba/wukong/im/Message;)V

    .line 4550
    :cond_0
    return-void
.end method

.method public final d(Lcom/alibaba/wukong/im/Message;)V
    .locals 4
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4581
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0xca

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    if-eqz v0, :cond_1

    .line 4582
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    invoke-virtual {v0}, Lcug;->notifyDataSetChanged()V

    .line 4584
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 4585
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "retail_im_msglist_detail_resend"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 4587
    :cond_2
    return-void
.end method

.method public final e(Lcom/alibaba/wukong/im/Message;)V
    .locals 7
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4604
    const-string/jumbo v1, "chat_file_comment_click"

    invoke-static {p1, v1}, Lddq;->b(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)V

    .line 4606
    if-eqz p1, :cond_1

    const-string/jumbo v1, "dingId"

    invoke-interface {p1, v1}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4607
    const-string/jumbo v1, "ding_card_fast_comment_click"

    invoke-static {v1}, Lcps;->a(Ljava/lang/String;)V

    .line 4612
    :cond_0
    :goto_0
    new-instance v0, Ldos;

    invoke-direct {v0}, Ldos;-><init>()V

    .line 4613
    .local v0, "menuCommentReplyHandler":Ldos;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->J:J

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Ldos;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V

    .line 4614
    return-void

    .line 4608
    .end local v0    # "menuCommentReplyHandler":Ldos;
    :cond_1
    invoke-static {p1}, Ldkc;->E(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4610
    const-string/jumbo v1, "cloud_report_chat_reply"

    invoke-static {v1}, Lcps;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f(Lcom/alibaba/wukong/im/Message;)V
    .locals 7
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4618
    if-nez p1, :cond_1

    .line 4628
    :cond_0
    :goto_0
    return-void

    .line 4621
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->K(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldjx;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4622
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->K(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldjx;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ldjx;->a(Z)V

    .line 4624
    :cond_2
    invoke-static {}, Ldoo;->a()Ldoo;

    move-result-object v1

    sget-object v2, Ldoq$a;->t:Lcng;

    invoke-virtual {v1, v2}, Ldoo;->a(Lcng;)Ldon;

    move-result-object v0

    .line 4625
    .local v0, "handler":Ldon;
    if-eqz v0, :cond_0

    .line 4626
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->J:J

    const/4 v6, 0x0

    move-object v3, p1

    invoke-interface/range {v0 .. v6}, Ldon;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V

    goto :goto_0
.end method

.method public final g(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 4632
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldev;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4633
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldev;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldev;->e(Lcom/alibaba/wukong/im/Message;)V

    .line 4635
    :cond_0
    return-void
.end method

.method public final h(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 4639
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Lcom/alibaba/wukong/im/Message;)V

    .line 4640
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->p(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 4641
    return-void
.end method
