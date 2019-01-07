.class final Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "TeleVoipFailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

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
    .line 426
    if-eqz p2, :cond_0

    .line 427
    const-string/jumbo v1, "call_type"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 428
    .local v0, "confType":I
    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->finish()V

    .line 434
    .end local v0    # "confType":I
    :cond_0
    return-void
.end method
