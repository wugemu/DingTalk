.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$1;
.super Ljava/lang/Object;
.source "FloatConnectWifiActivity.java"

# interfaces
.implements Lbzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 69
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 72
    const-string/jumbo v0, "FloatConnectWifiActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "grant location permission"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v0, "FloatConnectWifiActivity"

    const-string/jumbo v1, "alpha_float_connect_wifi_permission_grant"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    invoke-static {}, Lbma;->a()Lbma;

    move-result-object v0

    .line 1137
    invoke-virtual {v0}, Lbma;->c()V

    .line 1138
    invoke-virtual {v0}, Lbma;->b()V

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->finish()V

    .line 76
    return-void
.end method

.method public final onDenied()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 86
    const-string/jumbo v0, "FloatConnectWifiActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "deny location permission"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v0, "FloatConnectWifiActivity"

    const-string/jumbo v1, "alpha_float_connect_wifi_permission_denied"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->finish()V

    .line 89
    return-void
.end method

.method public final onNeverAsk()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 93
    const-string/jumbo v0, "FloatConnectWifiActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "never ask location permission"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "FloatConnectWifiActivity"

    const-string/jumbo v1, "alpha_float_connect_wifi_permission_never_ask"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->finish()V

    .line 96
    return-void
.end method

.method public final showRation()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 80
    const-string/jumbo v0, "FloatConnectWifiActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "showRation location permission"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->finish()V

    .line 82
    return-void
.end method
