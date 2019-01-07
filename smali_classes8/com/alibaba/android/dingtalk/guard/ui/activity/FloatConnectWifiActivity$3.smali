.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$3;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$3;->d:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 148
    const-string/jumbo v1, "FloatConnectWifiActivity"

    const-string/jumbo v2, "alpha_float_connect_wifi_click"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 149
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$3;->d:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->c:Lbni$a;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$3;->a:Ljava/lang/String;

    .line 150
    invoke-virtual {v1, v2}, Lbni$a;->a(Ljava/lang/String;)Lbni$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$3;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbni$a;->b(Ljava/lang/String;)Lbni$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$3;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbni$a;->c(Ljava/lang/String;)Lbni$a;

    move-result-object v1

    .line 151
    invoke-virtual {v1, v4}, Lbni$a;->a(Z)Lbni$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lbni$a;->b(Z)Lbni$a;

    move-result-object v1

    .line 152
    invoke-virtual {v1, v4}, Lbni$a;->c(Z)Lbni$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$3;->d:Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->d:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    .line 153
    invoke-virtual {v1, v2}, Lbni$a;->a(Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;)Lbni$a;

    move-result-object v1

    .line 1070
    iget-object v0, v1, Lbni$a;->a:Lbni;

    .line 155
    .local v0, "request":Lbni;
    invoke-static {}, Lbmc;->a()Lbmc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbmc;->a(Lbni;)V

    .line 156
    return-void
.end method
