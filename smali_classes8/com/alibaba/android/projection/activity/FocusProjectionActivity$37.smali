.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$37;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(ZLcom/alibaba/android/projection/data/FocusDeviceObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/android/projection/data/FocusDeviceObject;

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Lcom/alibaba/android/projection/data/FocusDeviceObject;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 2481
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$37;->d:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iput-object p2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$37;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-object p3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$37;->b:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iput-boolean p4, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$37;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2483
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$37;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 2484
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$37;->b:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    if-nez v1, :cond_0

    .line 2485
    const-string/jumbo v1, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Invalid warning device"

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    :goto_0
    return-void

    .line 2489
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$37;->c:Z

    if-eqz v1, :cond_1

    .line 2490
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "focus_local_share_retry_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2491
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$37;->d:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$37;->b:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;Z)V

    .line 2497
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2498
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "_field_event_id"

    const-string/jumbo v2, "2101"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2499
    const-string/jumbo v1, "log_ding_version"

    const-string/jumbo v2, "1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2500
    const-string/jumbo v1, "device_type"

    const-string/jumbo v2, "focus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2501
    const-string/jumbo v2, "beLocal"

    iget-boolean v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$37;->c:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "1"

    :goto_2
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2502
    const/4 v1, 0x0

    const-string/jumbo v2, "relink"

    const-string/jumbo v3, "a2q0r.11900331.1.relink"

    invoke-static {v1, v2, v0, v3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 2493
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "focus_remote_share_retry_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2494
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$37;->d:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$37;->b:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-static {v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;)V

    goto :goto_1

    .line 2501
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v1, "0"

    goto :goto_2
.end method
