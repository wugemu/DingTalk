.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$1;
.super Ljava/lang/Object;
.source "UserBusinessProfileSubActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 223
    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 224
    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Ljava/lang/String;)J

    move-result-wide v2

    .line 225
    .local v2, "uid":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 226
    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v4, v2, v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;J)J

    .line 227
    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v4, v2, v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;J)V

    .line 267
    .end local v2    # "uid":J
    :goto_0
    return-void

    .line 231
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, "identities":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 233
    .local v1, "identity":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 234
    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    .line 235
    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->c(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    .line 236
    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->d(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 237
    const/4 v4, 0x1

    iput v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 238
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v5

    const/4 v6, 0x0

    const-string/jumbo v4, "EVENTBUTLER"

    .line 240
    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v7, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$1$1;

    invoke-direct {v7, p0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$1$1;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$1;)V

    const-class v8, Lcma;

    iget-object v9, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-interface {v4, v7, v8, v9}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcma;

    .line 239
    invoke-interface {v5, v0, v6, v4}, Lfac;->a(Ljava/util/List;ZLcma;)V

    goto :goto_0
.end method
