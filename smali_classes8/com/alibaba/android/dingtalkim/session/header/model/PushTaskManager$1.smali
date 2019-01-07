.class public final Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskManager$1;
.super Landroid/content/BroadcastReceiver;
.source "PushTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Leal;


# direct methods
.method public constructor <init>(Leal;)V
    .locals 0
    .param p1, "this$0"    # Leal;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskManager$1;->a:Leal;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "action_close_push_task_banner"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskManager$1;->a:Leal;

    invoke-virtual {v1}, Leal;->c()V

    .line 129
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskManager$1;->a:Leal;

    invoke-virtual {v1}, Leal;->d()V

    .line 131
    :cond_0
    return-void
.end method
