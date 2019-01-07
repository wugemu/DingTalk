.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$4$1;
.super Ljava/lang/Object;
.source "UserBusinessProfileActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$4;->run()V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$4;

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$4$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1230
    check-cast p1, Ljava/util/List;

    .line 2233
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$4$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$4;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->dismissLoadingDialog()V

    .line 2234
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2235
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2236
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 2237
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$4$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$4;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;J)J

    .line 2238
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$4$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$4;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->b(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;J)V

    .line 1230
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$4$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$4;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->dismissLoadingDialog()V

    .line 1252
    const-string/jumbo v0, "11000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1253
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1246
    return-void
.end method
