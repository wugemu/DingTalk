.class public final Lggb;
.super Ljava/lang/Object;
.source "SpaceRecentOperatorFetcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;JJLcma;)V
    .locals 15
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "operatorId"    # J
    .param p3, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "JJ",
            "Lcma",
            "<",
            "Lggf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p5, "listener":Lcma;, "Lcma<Lggf;>;"
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v10

    .line 49
    .local v10, "currentUid":J
    cmp-long v3, p1, v10

    if-nez v3, :cond_1

    .line 50
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v13

    .line 51
    .local v13, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-nez v13, :cond_0

    .line 52
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 128
    .end local v13    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :goto_0
    return-void

    .line 54
    .restart local v13    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_0
    new-instance v12, Lggf;

    invoke-direct {v12}, Lggf;-><init>()V

    .line 55
    .local v12, "operator":Lggf;
    iget-object v3, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    iput-object v3, v12, Lggf;->c:Ljava/lang/String;

    .line 56
    iget-object v3, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    iput-object v3, v12, Lggf;->d:Ljava/lang/String;

    .line 57
    iget-object v3, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    iput-object v3, v12, Lggf;->e:Ljava/lang/String;

    .line 58
    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    .end local v12    # "operator":Lggf;
    .end local v13    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-nez v3, :cond_3

    .line 62
    new-instance v9, Lggb$1;

    move-object/from16 v0, p5

    invoke-direct {v9, v0}, Lggb$1;-><init>(Lcma;)V

    .line 84
    .local v9, "listener1":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz p0, :cond_2

    .line 85
    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lcma;

    invoke-interface {v3, v9, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "listener1":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    check-cast v9, Lcma;

    .line 87
    .restart local v9    # "listener1":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0

    .line 89
    .end local v9    # "listener1":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_3
    new-instance v2, Lggb$2;

    move-object/from16 v3, p5

    move-wide/from16 v4, p3

    move-wide/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lggb$2;-><init>(Lcma;JJ)V

    .line 122
    .local v2, "callback":Lcma;, "Lcma<Lcgc;>;"
    if-eqz p0, :cond_4

    .line 123
    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lcma;

    invoke-interface {v3, v2, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "callback":Lcma;, "Lcma<Lcgc;>;"
    check-cast v2, Lcma;

    .line 125
    .restart local v2    # "callback":Lcma;, "Lcma<Lcgc;>;"
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(JJLcma;)V

    goto :goto_0
.end method
