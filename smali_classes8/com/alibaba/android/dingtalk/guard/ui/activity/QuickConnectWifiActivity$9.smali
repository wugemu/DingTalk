.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$9;
.super Ljava/lang/Object;
.source "QuickConnectWifiActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(ZIZ)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;Ljava/lang/String;ZIZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$9;->e:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$9;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$9;->b:Z

    iput p4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$9;->c:I

    iput-boolean p5, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$9;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 365
    check-cast p1, Ljava/lang/String;

    .line 1368
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$9;->e:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1369
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$9;->e:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->g(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Ljava/lang/String;

    move-result-object v0

    .line 1370
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$9;->e:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->h(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$9;->e:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$9;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$9;->b:Z

    iget v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$9;->c:I

    iget-boolean v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$9;->d:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;Ljava/lang/String;ZIZ)V

    :goto_0
    return-void

    .line 1373
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$9;->e:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->i(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$9;->e:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    sget v3, Lbrx$g;->dt_alpha_get_psk_fail:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 384
    const-string/jumbo v0, "QuickConnectWifiActivity"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "connect to getPsk exp code = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$9;->e:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 380
    return-void
.end method
