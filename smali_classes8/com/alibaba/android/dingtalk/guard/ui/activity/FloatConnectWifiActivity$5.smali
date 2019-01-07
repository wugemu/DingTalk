.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$5;
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
    .line 183
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->finish()V

    .line 187
    return-void
.end method
