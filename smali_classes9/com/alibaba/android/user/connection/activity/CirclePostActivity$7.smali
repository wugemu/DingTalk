.class final Lcom/alibaba/android/user/connection/activity/CirclePostActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "CirclePostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/CirclePostActivity;
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
    .line 755
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$7;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 758
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 760
    const-string/jumbo v1, "no action"

    .line 1060
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lffe;->a(ZLjava/lang/String;)V

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    const-string/jumbo v1, "com.workapp.action.poi_info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$7;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-static {v1, p2}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->a(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;Landroid/content/Intent;)V

    goto :goto_0
.end method
