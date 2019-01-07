.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$4;
.super Ljava/lang/Object;
.source "FloatConnectWifiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->finish()V

    .line 164
    :cond_0
    return-void
.end method
