.class final Lcom/alibaba/android/user/connection/activity/CirclePostActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "CirclePostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$3;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 404
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "data"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "data":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    .local v2, "newIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$3;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->startActivity(Landroid/content/Intent;)V

    .line 410
    return-void
.end method
