.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;
.super Ljava/lang/Object;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Lcts$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 1819
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

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
    .line 1823
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->Y(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->Y(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b()V

    .line 1826
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x2bc

    if-ne v0, v1, :cond_1

    .line 1827
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lddq;->a(Lcom/alibaba/wukong/im/Conversation;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1828
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->supportInvalidateOptionsMenu()V

    .line 1831
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

    .line 1850
    iget-object v1, p2, Lcts$a;->e:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .line 1851
    .local v1, "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailId:Ljava/lang/String;

    .line 1852
    iget v2, p2, Lcts$a;->d:I

    sget v3, Lcts$a;->c:I

    if-ne v2, v3, :cond_1

    .line 1854
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "mail_chat_transmit_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1855
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v1, v4}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;I)V

    .line 1871
    :cond_0
    :goto_0
    return-void

    .line 1856
    :cond_1
    iget v2, p2, Lcts$a;->d:I

    if-nez v2, :cond_4

    .line 1857
    const/4 v0, 0x0

    .line 1858
    .local v0, "isChat":Z
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1859
    const/4 v0, 0x1

    .line 1862
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "mail_chat_reply_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1864
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 1865
    .end local v0    # "isChat":Z
    :cond_4
    iget v2, p2, Lcts$a;->d:I

    sget v3, Lcts$a;->b:I

    if-ne v2, v3, :cond_0

    .line 1866
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "mail_chat_replyall_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1868
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->T()Lcom/alibaba/wukong/im/Conversation;

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
    .line 1889
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lddq;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcts$c;)V

    .line 1890
    return-void
.end method

.method public final b(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->R(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1836
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->R(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldey;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldey;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 1838
    :cond_0
    return-void
.end method

.method public final b(Lcom/alibaba/wukong/im/Message;Lcts$c;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "onProcessingListener"    # Lcts$c;

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lddq;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcts$c;)V

    .line 1895
    return-void
.end method

.method public final c(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->R(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1843
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->R(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldey;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldey;->e(Lcom/alibaba/wukong/im/Message;)V

    .line 1845
    :cond_0
    return-void
.end method

.method public final d(Lcom/alibaba/wukong/im/Message;)V
    .locals 2
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1875
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
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    if-eqz v0, :cond_1

    .line 1876
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    invoke-virtual {v0}, Lcug;->notifyDataSetChanged()V

    .line 1878
    :cond_1
    return-void
.end method

.method public final e(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->y:Lcro;

    if-eqz v0, :cond_0

    .line 1883
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->y:Lcro;

    invoke-virtual {v0, p1}, Lcro;->a(Lcom/alibaba/wukong/im/Message;)V

    .line 1885
    :cond_0
    return-void
.end method

.method public final f(Lcom/alibaba/wukong/im/Message;)V
    .locals 7
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1899
    if-nez p1, :cond_1

    .line 1906
    :cond_0
    :goto_0
    return-void

    .line 1902
    :cond_1
    invoke-static {}, Ldoo;->a()Ldoo;

    move-result-object v1

    sget-object v2, Ldoq$a;->t:Lcng;

    invoke-virtual {v1, v2}, Ldoo;->a(Lcng;)Ldon;

    move-result-object v0

    .line 1903
    .local v0, "handler":Ldon;
    if-eqz v0, :cond_0

    .line 1904
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->J:J

    const/4 v6, 0x0

    move-object v3, p1

    invoke-interface/range {v0 .. v6}, Ldon;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V

    goto :goto_0
.end method

.method public final g(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->S(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldev;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1911
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->S(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldev;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldev;->e(Lcom/alibaba/wukong/im/Message;)V

    .line 1913
    :cond_0
    return-void
.end method

.method public final h(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b(Lcom/alibaba/wukong/im/Message;)V

    .line 1918
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->G(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    .line 1919
    return-void
.end method
