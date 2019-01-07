.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$5;
.super Ljava/lang/Object;
.source "WifiUnavailableFragment.java"

# interfaces
.implements Lbsy$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

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

    .line 161
    if-eqz p1, :cond_3

    .line 162
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "WifiUnavailableFragment"

    const-string/jumbo v2, "oa_bravo_attendance_wifi_success_click"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;I)V

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$5$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$5$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$5;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 177
    :cond_2
    sget v0, Lbrx$g;->dt_smart_device_config_wire_net_connect_success:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 180
    :cond_3
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "WifiUnavailableFragment"

    const-string/jumbo v2, "oa_bravo_attendance_wifi_fail_click"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 185
    invoke-static {p3}, Lcms;->a(Ljava/lang/String;)V

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;I)V

    goto :goto_0
.end method
