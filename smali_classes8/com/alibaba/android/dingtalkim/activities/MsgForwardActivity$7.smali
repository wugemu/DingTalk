.class final Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;
.super Ljava/lang/Object;
.source "MsgForwardActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 1809
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 1812
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->M:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    if-eqz v1, :cond_2

    .line 1813
    const-string/jumbo v1, "name_card_forward"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1825
    :goto_0
    const-string/jumbo v1, "choose_mode"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1826
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1827
    const-string/jumbo v1, "intent_key_message_multiple_send"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1828
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1829
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1830
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1831
    const-string/jumbo v1, "conversation"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1834
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->u(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1835
    const-string/jumbo v1, "intent_key_message_forward_handler"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->u(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1841
    :cond_1
    :goto_1
    const-string/jumbo v1, "intent_key_menu_seed"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->y:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1842
    const-string/jumbo v1, "intent_key_im_forward_mode"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->d(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1843
    const-string/jumbo v1, "count_limit"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->r(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1844
    const-string/jumbo v1, "entranceCid"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1845
    return-object p1

    .line 1815
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->q:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->t:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->N:Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    if-eqz v1, :cond_4

    .line 1816
    :cond_3
    const-string/jumbo v1, "from_share"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1817
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->o:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->p:Z

    if-nez v1, :cond_5

    .line 1818
    const-string/jumbo v1, "message_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->l:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1819
    const-string/jumbo v1, "msg_forward"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1821
    :cond_5
    const-string/jumbo v1, "from_share"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1822
    const-string/jumbo v1, "extra_share_type"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget v2, v2, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->T:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1839
    :cond_6
    const-string/jumbo v1, "intent_key_show_menu_guide"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1
.end method
