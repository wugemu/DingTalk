.class final Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;
.super Ljava/lang/Object;
.source "ContactSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field b:Lcom/alibaba/android/search/model/LocalContactModel;

.field c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic d:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p2, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->d:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput-object p2, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 440
    return-void
.end method

.method constructor <init>(Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;Lcom/alibaba/android/search/model/LocalContactModel;)V
    .locals 0
    .param p2, "localContactModel"    # Lcom/alibaba/android/search/model/LocalContactModel;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->d:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-object p2, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->b:Lcom/alibaba/android/search/model/LocalContactModel;

    .line 444
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 9
    .param p1, "uid"    # J

    .prologue
    .line 451
    const-string/jumbo v1, "getprof start:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1120
    const-wide/32 v6, 0x6a01e35

    sub-long v6, p1, v6

    .line 451
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v3

    .line 2050
    const-string/jumbo v3, "search"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 453
    .local v4, "startTime":J
    new-instance v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;-><init>(Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;JJ)V

    .line 496
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->d:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 497
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->d:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    check-cast v0, Lcma;

    .line 499
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 500
    return-void
.end method
