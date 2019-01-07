.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$2;
.super Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;
.source "FloatConnectWifiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;
    .param p2, "oneKeyWifiLayout"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;)V

    return-void
.end method


# virtual methods
.method public final onConnectSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->onConnectSuccess(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$2$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$2;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    return-void
.end method
