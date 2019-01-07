.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$4;
.super Ljava/lang/Object;
.source "QuickConnectWifiActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lbna;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 581
    check-cast p1, Lbna;

    .line 1584
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->dismissLoadingDialog()V

    .line 1585
    if-eqz p1, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    iget-object v1, p1, Lbna;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1587
    invoke-static {}, Lbnh;->a()Lbnh;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->b(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->h(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbnh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    sget v1, Lbrx$g;->dt_alpha_reset_exclusive_psk_sucess:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 581
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 599
    const-string/jumbo v0, "QuickConnectWifiActivity"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "resetPass exp code = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->dismissLoadingDialog()V

    .line 601
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 595
    return-void
.end method
