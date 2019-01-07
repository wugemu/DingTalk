.class final Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6;
.super Ljava/lang/Object;
.source "AccountSafeActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 348
    .line 1352
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->f(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->f(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->a(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1355
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/pwd.html"

    new-instance v2, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6$1;-><init>(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 348
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 374
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 369
    return-void
.end method
