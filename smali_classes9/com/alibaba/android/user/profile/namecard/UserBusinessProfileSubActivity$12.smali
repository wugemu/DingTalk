.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;
.super Ljava/lang/Object;
.source "UserBusinessProfileSubActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
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
.field final synthetic a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 272
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1276
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1279
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->dismissLoadingDialog()V

    .line 1280
    if-nez p1, :cond_1

    .line 1281
    sget v0, Lezg$l;->load_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1282
    :cond_0
    :goto_0
    return-void

    .line 1285
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iget-boolean v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->partial:Z

    invoke-static {v2, v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Z)Z

    .line 1286
    iget-boolean v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->partial:Z

    if-eqz v2, :cond_2

    .line 1287
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_user_merge_partial_profile"

    .line 2083
    invoke-virtual {v2, v3, v1}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 1287
    if-eqz v2, :cond_2

    .line 1290
    const-string/jumbo v2, "UserBusinessProfileSubActivity"

    const-string/jumbo v3, "partial profile object"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1291
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->copyExtensions(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 1293
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v2, p1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1294
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1295
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-static {v2, v4, v5}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;J)J

    .line 1299
    :cond_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    .line 1300
    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v5

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    invoke-static {v4, v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Z)Z

    .line 1303
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->g(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1304
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->relationObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgRelationObject;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->relationObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgRelationObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgRelationObject;->isInExternalContact:Z

    if-eqz v0, :cond_6

    .line 1305
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->h(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)V

    .line 1315
    :cond_6
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    goto/16 :goto_0

    .line 1309
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->c(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;J)V

    .line 1311
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->i(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->dismissLoadingDialog()V

    .line 327
    const-string/jumbo v0, "11016"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->c(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;J)V

    .line 333
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->i(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)V

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->j(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)V

    .line 337
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 321
    return-void
.end method
