.class final Lcxv$1$1;
.super Ljava/lang/Object;
.source "UserAnnounceViewHolder.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcxv$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcxv$1;


# direct methods
.method constructor <init>(Lcxv$1;)V
    .locals 0
    .param p1, "this$1"    # Lcxv$1;

    .prologue
    .line 66
    iput-object p1, p0, Lcxv$1$1;->a:Lcxv$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    iget-object v1, p0, Lcxv$1$1;->a:Lcxv$1;

    iget-object v1, v1, Lcxv$1;->a:Landroid/app/Activity;

    check-cast v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    .line 70
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_0

    .line 71
    const-string/jumbo v1, "conversation"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 73
    :cond_0
    return-object p1
.end method
