.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$2;
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
    .line 527
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 530
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    sget v1, Lbrx$g;->dt_alpha_reset_exclusive_psk_alert_title:I

    sget v2, Lbrx$g;->dt_alpha_reset_exclusive_psk_alert_content:I

    sget v3, Lbrx$g;->dt_alpha_reset_exclusive_psk_alert_confirm:I

    new-instance v4, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$2$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$2$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$2;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(IIILandroid/content/DialogInterface$OnClickListener;)V

    .line 540
    const-string/jumbo v0, "QuickConnectWifiActivity"

    const-string/jumbo v1, "alpha_reset_psk_click"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 541
    return-void
.end method
