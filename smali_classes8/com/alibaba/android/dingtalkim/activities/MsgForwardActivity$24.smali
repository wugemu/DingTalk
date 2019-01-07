.class final Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;
.super Ljava/lang/Object;
.source "MsgForwardActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 1516
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

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
    const/4 v2, 0x1

    .line 1519
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->M:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    if-eqz v0, :cond_1

    .line 1520
    const-string/jumbo v0, "name_card_forward"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1537
    :goto_0
    const-string/jumbo v0, "intent_key_im_forward_mode"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->d(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1538
    const-string/jumbo v0, "intent_key_menu_seed"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->y:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1539
    const-string/jumbo v0, "count_limit"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->r(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1540
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->s(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1541
    const-string/jumbo v0, "conversation_ids"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->s(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1543
    :cond_0
    return-object p1

    .line 1522
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->q:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->t:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->N:Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    if-eqz v0, :cond_3

    .line 1523
    :cond_2
    const-string/jumbo v0, "from_share"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 1524
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->p(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1525
    const-string/jumbo v0, "key_direct_uri"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1526
    const-string/jumbo v0, "key_direct_open_conversation"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->p(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1527
    const-string/jumbo v0, "intent_direct_open_conversation_logic"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->q(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler$RemindForwarAtyLogic;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1528
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->o:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->p:Z

    if-nez v0, :cond_5

    .line 1529
    const-string/jumbo v0, "message_id"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1530
    const-string/jumbo v0, "msg_forward"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1532
    :cond_5
    const-string/jumbo v0, "from_share"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1533
    const-string/jumbo v0, "extra_share_type"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->T:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0
.end method
