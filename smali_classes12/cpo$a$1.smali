.class final Lcpo$a$1;
.super Landroid/content/BroadcastReceiver;
.source "RollbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcpo$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcpo$a;


# direct methods
.method constructor <init>(Lcpo$a;)V
    .locals 0
    .param p1, "this$0"    # Lcpo$a;

    .prologue
    .line 66
    iput-object p1, p0, Lcpo$a$1;->a:Lcpo$a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 69
    if-eqz p2, :cond_0

    const-string/jumbo v0, "intent_action_rollback"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcpo$a$1;->a:Lcpo$a;

    .line 1062
    iget-object v0, v0, Lcpo$a;->a:Landroid/view/View;

    .line 70
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcpo$a$1;->a:Lcpo$a;

    .line 2062
    iget-object v0, v0, Lcpo$a;->a:Landroid/view/View;

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcpo$a$1;->a:Lcpo$a;

    .line 3062
    iget-object v0, v0, Lcpo$a;->a:Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcpo$a$1;->a:Lcpo$a;

    .line 4062
    iget-object v1, v1, Lcpo$a;->b:Landroid/graphics/Rect;

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcpo$a$1;->a:Lcpo$a;

    .line 5062
    iget-object v0, v0, Lcpo$a;->a:Landroid/view/View;

    .line 71
    instance-of v0, v0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcpo$a$1;->a:Lcpo$a;

    .line 6062
    iget-object v0, v0, Lcpo$a;->a:Landroid/view/View;

    .line 72
    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcpo$a$1;->a:Lcpo$a;

    .line 7062
    iget-object v0, v0, Lcpo$a;->a:Landroid/view/View;

    .line 73
    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcpo$a$1;->a:Lcpo$a;

    .line 8062
    iget-object v0, v0, Lcpo$a;->a:Landroid/view/View;

    .line 74
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcpo$a$1;->a:Lcpo$a;

    .line 9062
    iget-object v0, v0, Lcpo$a;->a:Landroid/view/View;

    .line 75
    instance-of v0, v0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcpo$a$1;->a:Lcpo$a;

    .line 10062
    iget-object v0, v0, Lcpo$a;->a:Landroid/view/View;

    .line 76
    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method
