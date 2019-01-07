.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;
.super Ljava/lang/Object;
.source "BeaconFragment.java"

# interfaces
.implements Lbsy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 9
    .param p1, "result"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    .line 605
    if-eqz p1, :cond_4

    .line 606
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 607
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "_field_event_id"

    const-string/jumbo v3, "2101"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string/jumbo v1, "log_ding_version"

    const-string/jumbo v3, "1.0"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string/jumbo v1, "spm"

    const-string/jumbo v3, "a2q0r.11900336.1.succ"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m()Lbsw$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 611
    const-string/jumbo v1, "device_type"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m()Lbsw$b;

    move-result-object v3

    invoke-interface {v3}, Lbsw$b;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string/jumbo v1, "device_server"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m()Lbsw$b;

    move-result-object v3

    invoke-interface {v3}, Lbsw$b;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v3, "Page_Smart_Device_Set_Bluetooth"

    const-string/jumbo v4, "Page_Smart_Device_Set_Bluetooth_Button-succ"

    invoke-interface {v1, v3, v4, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 616
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1, v8}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;I)I

    .line 617
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->p(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    .line 619
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .line 1104
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v1

    .line 1105
    if-eqz v1, :cond_3

    .line 1106
    invoke-interface {v1}, Lbsw$a;->c()Z

    move-result v1

    .line 619
    :goto_0
    if-nez v1, :cond_1

    .line 620
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->l(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 637
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->r(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 638
    const/4 v1, 0x0

    invoke-static {v2, v1}, Lbtl;->a(ILjava/lang/String;)V

    .line 663
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v1, v2

    .line 1108
    goto :goto_0

    .line 641
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 642
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "_field_event_id"

    const-string/jumbo v3, "2101"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string/jumbo v1, "log_ding_version"

    const-string/jumbo v3, "1.0"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    const-string/jumbo v1, "spm"

    const-string/jumbo v3, "a2q0r.11900336.1.failed"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m()Lbsw$b;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 646
    const-string/jumbo v1, "device_type"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m()Lbsw$b;

    move-result-object v3

    invoke-interface {v3}, Lbsw$b;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string/jumbo v1, "device_server"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m()Lbsw$b;

    move-result-object v3

    invoke-interface {v3}, Lbsw$b;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    :cond_5
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v3, "Page_Smart_Device_Set_Bluetooth"

    const-string/jumbo v4, "Page_Smart_Device_Set_Bluetooth_Button-failed"

    invoke-interface {v1, v3, v4, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 651
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->s(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1388

    cmp-long v1, v4, v6

    if-lez v1, :cond_6

    .line 652
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;I)I

    .line 653
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->p(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    .line 654
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->r(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 655
    invoke-static {v8, p2}, Lbtl;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 658
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;I)I

    .line 659
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->g(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    .line 660
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    const/16 v2, 0x9c4

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;I)V

    goto/16 :goto_1
.end method
