.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;
.super Ljava/lang/Object;
.source "WifiFragment.java"

# interfaces
.implements Lbsy$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Z
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 356
    if-eqz p1, :cond_4

    .line 357
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 358
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "_field_event_id"

    const-string/jumbo v2, "2101"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string/jumbo v1, "log_ding_version"

    const-string/jumbo v2, "1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2q0r.11900330.1.succ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 362
    const-string/jumbo v1, "device_type"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v2

    invoke-interface {v2}, Lbsw$b;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string/jumbo v1, "device_server"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v2

    invoke-interface {v2}, Lbsw$b;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Page_Smart_Device_Set_Network"

    const-string/jumbo v3, "Page_Smart_Device_Set_Network_Button-succ"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 367
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "WifiFragment"

    const-string/jumbo v3, "oa_bravo_attendance_wifi_success_click"

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 369
    sget v1, Lbrx$g;->dt_device_config_reset_wifi_success:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 370
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 428
    :cond_1
    :goto_0
    return-void

    .line 373
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;I)V

    .line 374
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->h()Z

    move-result v1

    if-nez v1, :cond_3

    .line 375
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 427
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-static {v1, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;Z)Z

    goto :goto_0

    .line 384
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const-string/jumbo v1, "-22"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 386
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "_field_event_id"

    const-string/jumbo v2, "2101"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string/jumbo v1, "log_ding_version"

    const-string/jumbo v2, "1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string/jumbo v1, "error"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2q0r.11900330.1.failed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 391
    const-string/jumbo v1, "device_type"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v2

    invoke-interface {v2}, Lbsw$b;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string/jumbo v1, "device_server"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v2

    invoke-interface {v2}, Lbsw$b;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_5
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Page_Smart_Device_Set_Network"

    const-string/jumbo v3, "Page_Smart_Device_Set_Network_Button-failed"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 396
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "WifiFragment"

    const-string/jumbo v3, "oa_bravo_attendance_wifi_net_unavailable_click"

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 397
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-static {v1, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;I)V

    .line 401
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    .line 1154
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->n()Lbsw$e;

    move-result-object v1

    .line 1155
    if-eqz v1, :cond_3

    .line 1156
    invoke-interface {v1}, Lbsw$e;->n()V

    goto/16 :goto_1

    .line 403
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 404
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "_field_event_id"

    const-string/jumbo v2, "2101"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string/jumbo v1, "log_ding_version"

    const-string/jumbo v2, "1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string/jumbo v1, "error"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2q0r.11900330.1.failed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 409
    const-string/jumbo v1, "device_type"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v2

    invoke-interface {v2}, Lbsw$b;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string/jumbo v1, "device_server"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v2

    invoke-interface {v2}, Lbsw$b;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_7
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Page_Smart_Device_Set_Network"

    const-string/jumbo v3, "Page_Smart_Device_Set_Network_Button-failed"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 415
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "WifiFragment"

    const-string/jumbo v3, "oa_bravo_attendance_wifi_fail_click"

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 416
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 420
    invoke-static {p3}, Lcms;->a(Ljava/lang/String;)V

    .line 422
    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-static {v1, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;I)V

    .line 423
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->g(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 424
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->h(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)V

    goto/16 :goto_1
.end method
