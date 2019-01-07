.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$2$1;
.super Ljava/lang/Object;
.source "FloatConnectWifiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$2;->onConnectSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$2;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$2$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$2$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$2$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->finish()V

    goto :goto_0
.end method
