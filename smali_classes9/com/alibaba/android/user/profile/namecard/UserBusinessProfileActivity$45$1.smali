.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$45$1;
.super Ljava/lang/Object;
.source "UserBusinessProfileActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$45;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$45;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$45;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$45;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$45$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$45;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 846
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$45$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$45;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$45;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    sget v1, Lezg$l;->create_con_error:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 847
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 804
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 804
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1811
    if-eqz p1, :cond_1

    .line 1813
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$45$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$45;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$45;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/home.html"

    new-instance v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$45$1$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$45$1$1;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$45$1;Lcom/alibaba/wukong/im/Conversation;)V

    .line 1814
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1834
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1835
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 1837
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    :goto_0
    return-void

    .line 1839
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$45$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$45;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$45;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    sget v1, Lezg$l;->create_con_error:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
