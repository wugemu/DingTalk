.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$11;
.super Landroid/content/BroadcastReceiver;
.source "SessionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$11;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

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
    .line 1098
    if-eqz p2, :cond_0

    const-string/jumbo v0, "action_disturb_conv_switch_change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$11;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 1116
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 1098
    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$11;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    const/4 v1, 0x1

    .line 2116
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Z)V

    .line 1101
    :cond_0
    return-void
.end method
