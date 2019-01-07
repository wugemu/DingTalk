.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11$1;
.super Ljava/lang/Object;
.source "QuickConnectWifiActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 482
    .line 1485
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->dismissLoadingDialog()V

    .line 1486
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->k(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)V

    .line 482
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->dismissLoadingDialog()V

    .line 497
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->k(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)V

    .line 498
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 492
    return-void
.end method
