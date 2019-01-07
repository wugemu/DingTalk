.class final Lcom/alibaba/android/search/model/LocalContactModel$2;
.super Ljava/lang/Object;
.source "LocalContactModel.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/model/LocalContactModel;->fetchUserProfileByMobile(Landroid/app/Activity;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/search/model/LocalContactModel;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/model/LocalContactModel;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/model/LocalContactModel;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/android/search/model/LocalContactModel$2;->d:Lcom/alibaba/android/search/model/LocalContactModel;

    iput-object p2, p0, Lcom/alibaba/android/search/model/LocalContactModel$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/android/search/model/LocalContactModel$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/search/model/LocalContactModel$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 163
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1166
    iget-object v0, p0, Lcom/alibaba/android/search/model/LocalContactModel$2;->d:Lcom/alibaba/android/search/model/LocalContactModel;

    iget-object v1, p0, Lcom/alibaba/android/search/model/LocalContactModel$2;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/model/LocalContactModel;->access$000(Lcom/alibaba/android/search/model/LocalContactModel;Landroid/app/Activity;)V

    .line 1167
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isActive:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1168
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/search/model/LocalContactModel$2;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/profile.html"

    new-instance v2, Lcom/alibaba/android/search/model/LocalContactModel$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/model/LocalContactModel$2$1;-><init>(Lcom/alibaba/android/search/model/LocalContactModel$2;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    :goto_0
    return-void

    .line 1181
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/search/model/LocalContactModel$2;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/profile.html"

    new-instance v2, Lcom/alibaba/android/search/model/LocalContactModel$2$2;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/search/model/LocalContactModel$2$2;-><init>(Lcom/alibaba/android/search/model/LocalContactModel$2;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1193
    iget-object v0, p0, Lcom/alibaba/android/search/model/LocalContactModel$2;->d:Lcom/alibaba/android/search/model/LocalContactModel;

    iget-object v0, v0, Lcom/alibaba/android/search/model/LocalContactModel;->mLocalContactObject:Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    .line 1194
    iget-object v0, p0, Lcom/alibaba/android/search/model/LocalContactModel$2;->d:Lcom/alibaba/android/search/model/LocalContactModel;

    iget-object v1, p0, Lcom/alibaba/android/search/model/LocalContactModel$2;->d:Lcom/alibaba/android/search/model/LocalContactModel;

    iget-object v1, v1, Lcom/alibaba/android/search/model/LocalContactModel;->mLocalContactObject:Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/LocalContactModel;->setUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 1195
    invoke-static {}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a()Lcom/alibaba/android/search/service/SearchHistoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/model/LocalContactModel$2;->d:Lcom/alibaba/android/search/model/LocalContactModel;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Lcom/alibaba/android/search/model/BaseModel;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alibaba/android/search/model/LocalContactModel$2;->d:Lcom/alibaba/android/search/model/LocalContactModel;

    iget-object v1, p0, Lcom/alibaba/android/search/model/LocalContactModel$2;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/model/LocalContactModel;->access$000(Lcom/alibaba/android/search/model/LocalContactModel;Landroid/app/Activity;)V

    .line 207
    const-string/jumbo v0, "11016"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/search/model/LocalContactModel$2;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/profile.html"

    new-instance v2, Lcom/alibaba/android/search/model/LocalContactModel$2$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/model/LocalContactModel$2$3;-><init>(Lcom/alibaba/android/search/model/LocalContactModel$2;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 202
    return-void
.end method
