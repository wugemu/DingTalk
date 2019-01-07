.class final Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    const-string/jumbo v2, "CALL_STATE_RINGING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a(Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;Z)Z

    .line 66
    :cond_0
    return-void
.end method
