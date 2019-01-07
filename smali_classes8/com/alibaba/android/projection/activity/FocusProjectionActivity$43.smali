.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$43;
.super Landroid/content/BroadcastReceiver;
.source "FocusProjectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$43;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 461
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 462
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$43;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)V

    .line 463
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$43;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcms;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_focus_projection_ping_enable"

    invoke-virtual {v1, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$43;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->l(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    .line 467
    :cond_0
    const-string/jumbo v1, "networkInfo"

    .line 468
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 469
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 470
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 471
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$43;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->m(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$43;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$43;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$43;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .line 472
    invoke-static {v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->n(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$43;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->o(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$43;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .line 473
    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->o(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$43;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->p(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 474
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$43;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1, v4}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 475
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$43;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1, v4}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "focus_auto_change_wifi_projection"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$43;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$43;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;Z)V

    .line 482
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$43;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)Z

    .line 485
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_2
    return-void

    .line 478
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$43;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->m(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "focus_auto_change_wifi_fail"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0
.end method
