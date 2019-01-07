.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$23;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 416
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$23;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 419
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$23;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v1, v2, :cond_4

    .line 420
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "focus_start_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 422
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "resolution"

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$23;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->h(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    move-result-object v1

    sget-object v3, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->FLUENCY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    if-ne v1, v3, :cond_2

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string/jumbo v1, "_field_event_id"

    const-string/jumbo v2, "2101"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string/jumbo v1, "log_ding_version"

    const-string/jumbo v2, "1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const/4 v1, 0x0

    const-string/jumbo v2, "submit_click"

    const-string/jumbo v3, "a2q0r.11900331.1.submit_click"

    invoke-static {v1, v2, v0, v3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$23;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$23;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$23;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .line 427
    invoke-static {v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 428
    :cond_0
    const-string/jumbo v1, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Invalid cast code warn"

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$23;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->i(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    .line 438
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-void

    .line 422
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v1, "2"

    goto :goto_0

    .line 432
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$23;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$23;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;Z)V

    goto :goto_1

    .line 433
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$23;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$23;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .line 434
    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v1, v2, :cond_1

    .line 435
    :cond_5
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "focus_end_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$23;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->j(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    goto :goto_1
.end method
