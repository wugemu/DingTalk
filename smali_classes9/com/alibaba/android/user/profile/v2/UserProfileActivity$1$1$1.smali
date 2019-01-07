.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 442
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    .line 443
    .local v1, "gson":Lcom/google/gson/Gson;
    const-string/jumbo v2, ""

    .line 445
    .local v2, "remoteProfileJson":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 446
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    invoke-static {v1, v3}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 449
    :cond_0
    if-nez v2, :cond_1

    .line 450
    const-string/jumbo v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->e(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .line 459
    invoke-static {v3}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->e(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 460
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v3, v2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 461
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->f(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V

    .line 463
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 464
    invoke-virtual {v3, v4}, Lfbn;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 465
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    new-instance v4, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1$1;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 482
    :cond_3
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v3, v4, :cond_1

    .line 454
    throw v0

    .line 478
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->h(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 479
    sget-object v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a:Ljava/lang/String;

    const-string/jumbo v4, "cache hit, failover for partial profile"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->i(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V

    goto :goto_0
.end method
