.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$5;
.super Ljava/lang/Object;
.source "StaticIpFragment.java"

# interfaces
.implements Lbsy$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Z
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 382
    const-string/jumbo v0, "StaticIpFragment"

    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "wifiStateListener result:"

    .line 383
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Z)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    if-eqz p1, :cond_4

    .line 385
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "StaticIpFragment"

    const-string/jumbo v2, "oa_bravo_attendance_wifi_success_click"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 386
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;I)V

    .line 390
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 391
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$5$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$5$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$5;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    sget v0, Lbrx$g;->dt_device_config_reset_wifi_success:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 403
    :cond_3
    sget v0, Lbrx$g;->dt_smart_device_config_wire_net_connect_success:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 407
    :cond_4
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "StaticIpFragment"

    const-string/jumbo v2, "oa_bravo_attendance_wifi_fail_click"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 408
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 412
    invoke-static {p3}, Lcms;->a(Ljava/lang/String;)V

    .line 414
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;I)V

    goto :goto_0
.end method
