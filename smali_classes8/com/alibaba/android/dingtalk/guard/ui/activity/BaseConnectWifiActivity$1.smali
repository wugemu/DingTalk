.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$1;
.super Ljava/lang/Object;
.source "BaseConnectWifiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a(Landroid/app/Activity;)V

    .line 57
    return-void
.end method
