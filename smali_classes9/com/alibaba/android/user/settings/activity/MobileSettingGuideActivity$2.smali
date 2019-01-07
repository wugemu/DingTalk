.class final Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2;
.super Ljava/lang/Object;
.source "MobileSettingGuideActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;

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
    .line 73
    .line 1076
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/settings/mobile.html"

    new-instance v2, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2$1;-><init>(Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1087
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->finish()V

    .line 73
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 98
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 93
    return-void
.end method
