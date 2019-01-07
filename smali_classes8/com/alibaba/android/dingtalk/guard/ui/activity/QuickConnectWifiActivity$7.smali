.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$7;
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
        "Lbmq;",
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
    .line 244
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 244
    check-cast p1, Lbmq;

    .line 1247
    if-eqz p1, :cond_0

    iget-object v0, p1, Lbmq;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p1, Lbmq;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lbmq;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lbmq;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->d(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1249
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->e(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    sget v2, Lbrx$g;->and_alpha_get_terminate:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Lbmq;->b:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1251
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->f(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    sget v2, Lbrx$g;->and_alpha_get_terminate_v2:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Lbmq;->b:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1257
    :goto_0
    iget-object v0, p1, Lbmq;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1258
    const-string/jumbo v0, "QuickConnectWifiActivity"

    const-string/jumbo v1, "alpha_auth_client_list_empty"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 244
    :cond_0
    return-void

    .line 1253
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->e(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    sget v2, Lbrx$g;->and_alpha_get_terminate:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "0"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->f(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    sget v2, Lbrx$g;->and_alpha_get_terminate_v2:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "0"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
    .line 270
    const-string/jumbo v0, "QuickConnectWifiActivity"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "getOrgIdByCorpId exp code = "

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

    .line 271
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 266
    return-void
.end method
