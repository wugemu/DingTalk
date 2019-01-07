.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$4;
.super Lbzd;
.source "BaseConnectWifiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbzc;

.field final synthetic b:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;Lbzc;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$4;->b:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$4;->a:Lbzc;

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$4;->a:Lbzc;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$4;->a:Lbzc;

    invoke-interface {v0}, Lbzc;->grant()V

    .line 118
    :cond_0
    return-void
.end method

.method public final onDenied()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lbzd;->onDenied()V

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$4;->a:Lbzc;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$4;->a:Lbzc;

    invoke-interface {v0}, Lbzc;->onDenied()V

    .line 126
    :cond_0
    return-void
.end method

.method public final onNeverAsk()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lbzd;->onNeverAsk()V

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$4;->a:Lbzc;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$4;->a:Lbzc;

    invoke-interface {v0}, Lbzc;->onNeverAsk()V

    .line 134
    :cond_0
    return-void
.end method

.method public final showRation()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lbzd;->showRation()V

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$4;->a:Lbzc;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$4;->a:Lbzc;

    invoke-interface {v0}, Lbzc;->showRation()V

    .line 142
    :cond_0
    return-void
.end method
