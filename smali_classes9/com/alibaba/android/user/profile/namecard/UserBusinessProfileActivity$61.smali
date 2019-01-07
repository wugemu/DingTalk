.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$61;
.super Ljava/lang/Object;
.source "UserBusinessProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    .prologue
    .line 4873
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$61;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$61;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

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
    .line 4876
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    .line 4877
    .local v1, "gson":Lcom/google/gson/Gson;
    const-string/jumbo v2, ""

    .line 4879
    .local v2, "remoteProfileJson":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 4880
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$61;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    invoke-static {v1, v3}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4883
    :cond_0
    if-nez v2, :cond_1

    .line 4884
    const-string/jumbo v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4892
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$61;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->V(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$61;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    .line 4893
    invoke-static {v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->V(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4894
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$61;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v3, v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4895
    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$61;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->W(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)V

    .line 4897
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$61;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 4898
    invoke-virtual {v3, v4}, Lfbn;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 4899
    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$61;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    new-instance v4, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$61$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$61$1;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$61;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4916
    :cond_3
    :goto_0
    return-void

    .line 4886
    :catch_0
    move-exception v0

    .line 4887
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v3, v4, :cond_1

    .line 4888
    throw v0

    .line 4912
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$61;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->X(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4913
    const-string/jumbo v3, "UserBusinessProfileActivity"

    const-string/jumbo v4, "cache hit, failover for partial profile"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4914
    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$61;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->Y(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)V

    goto :goto_0
.end method
