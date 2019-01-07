.class final Lcvl$1$1;
.super Ljava/lang/Object;
.source "ForwardCombineViewHolder.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcvl$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcvl$1;


# direct methods
.method constructor <init>(Lcvl$1;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$1"    # Lcvl$1;

    .prologue
    .line 43
    iput-object p1, p0, Lcvl$1$1;->c:Lcvl$1;

    iput-object p2, p0, Lcvl$1$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcvl$1$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcvl$1$1;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string/jumbo v0, "intent_key_time_stamp"

    iget-wide v2, p0, Lcvl$1$1;->b:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 48
    const-string/jumbo v0, "message"

    iget-object v1, p0, Lcvl$1$1;->c:Lcvl$1;

    iget-object v1, v1, Lcvl$1;->a:Lcvl;

    iget-object v1, v1, Lcvl;->X:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 49
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Lcvl$1$1;->c:Lcvl$1;

    iget-object v1, v1, Lcvl$1;->a:Lcvl;

    iget-object v1, v1, Lcvl;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 50
    const-string/jumbo v0, "intent_key_chat_list_can_forward"

    iget-object v1, p0, Lcvl$1$1;->c:Lcvl$1;

    iget-object v1, v1, Lcvl$1;->a:Lcvl;

    iget-object v1, v1, Lcvl;->X:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1}, Ldkc;->f(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    const-string/jumbo v0, "intent_key_chat_list_can_to_task"

    iget-object v1, p0, Lcvl$1$1;->c:Lcvl$1;

    iget-object v1, v1, Lcvl$1;->a:Lcvl;

    iget-object v1, v1, Lcvl;->X:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    iget-object v0, p0, Lcvl$1$1;->c:Lcvl$1;

    iget-object v0, v0, Lcvl$1;->a:Lcvl;

    iget-object v0, v0, Lcvl;->d:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v0, :cond_0

    .line 53
    const-string/jumbo v1, "intent_key_menu_seed"

    iget-object v0, p0, Lcvl$1$1;->c:Lcvl$1;

    iget-object v0, v0, Lcvl$1;->a:Lcvl;

    iget-object v0, v0, Lcvl;->d:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->Y()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 55
    :cond_0
    return-object p1
.end method
