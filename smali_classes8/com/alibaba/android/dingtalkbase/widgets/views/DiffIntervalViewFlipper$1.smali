.class final Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$1;
.super Landroid/content/BroadcastReceiver;
.source "DiffIntervalViewFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;

    invoke-static {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;Z)Z

    .line 48
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;Z)Z

    .line 51
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;

    invoke-static {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;Z)V

    goto :goto_0
.end method
