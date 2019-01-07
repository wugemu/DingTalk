.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;
.super Ljava/lang/Object;
.source "QuickConnectWifiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 479
    const-string/jumbo v0, "QuickConnectWifiActivity"

    const-string/jumbo v1, "alpha_get_dynamic_psk_click"

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 480
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->showLoadingDialog()V

    .line 482
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;Lcma;)V

    .line 503
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->b(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object v6, v2

    invoke-static/range {v1 .. v6}, Lblz;->a(Ljava/lang/String;Ljava/lang/String;IJLcma;)V

    .line 508
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->k(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)V

    goto :goto_0
.end method
