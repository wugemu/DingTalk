.class final Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$2;
.super Ljava/lang/Object;
.source "NameCardInfosActivity.java"

# interfaces
.implements Lftb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$2;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 267
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$2;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->c(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)Lfte;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$2;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$2;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v2

    .line 1072
    if-nez v2, :cond_1

    .line 1073
    const-string/jumbo v0, "toSelectOrgs but cardModel is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    if-eqz v1, :cond_0

    .line 1078
    invoke-static {v1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v3, "https://qr.dingtalk.com/namecard_orgs.html"

    new-instance v4, Lfte$3;

    invoke-direct {v4, v0, v2}, Lfte$3;-><init>(Lfte;Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    invoke-interface {v1, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
