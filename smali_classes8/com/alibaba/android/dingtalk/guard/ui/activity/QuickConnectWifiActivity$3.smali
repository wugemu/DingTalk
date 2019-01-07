.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$3;
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
        "Ljava/lang/String;",
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
    .line 556
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

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
    .line 556
    check-cast p1, Ljava/lang/String;

    .line 1559
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->dismissLoadingDialog()V

    .line 1560
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1561
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->h(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-static {v1, v2, v0}, Lblz;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 556
    return-void

    .line 1561
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 571
    const-string/jumbo v0, "QuickConnectWifiActivity"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "click to getPsk exp code = "

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

    .line 572
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->dismissLoadingDialog()V

    .line 573
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 567
    return-void
.end method
