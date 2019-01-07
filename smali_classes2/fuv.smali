.class public final Lfuv;
.super Ljava/lang/Object;
.source "PersonStatusManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 20
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 21
    .local v0, "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-nez v0, :cond_0

    move-object v1, v4

    .line 37
    :goto_0
    return-object v1

    .line 24
    :cond_0
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->personStatus:Ljava/util/List;

    if-nez v5, :cond_1

    move-object v1, v4

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 28
    .local v2, "time":J
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->personStatus:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;

    .line 29
    .local v1, "personStatusObject":Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;
    if-eqz v1, :cond_2

    .line 32
    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;->st:J

    cmp-long v6, v2, v6

    if-ltz v6, :cond_2

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;->et:J

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    goto :goto_0

    .end local v1    # "personStatusObject":Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;
    :cond_3
    move-object v1, v4

    .line 37
    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;
    .locals 12
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    const/4 v6, 0x0

    .line 41
    if-nez p0, :cond_1

    move-object v3, v6

    .line 75
    :cond_0
    :goto_0
    return-object v3

    .line 44
    :cond_1
    iget-object v7, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->personStatus:Ljava/util/List;

    if-nez v7, :cond_2

    move-object v3, v6

    .line 45
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z

    move-result v7

    if-nez v7, :cond_3

    move-object v3, v6

    .line 49
    goto :goto_0

    .line 51
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 52
    .local v1, "myOrgIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 53
    .local v0, "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_5

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v7, :cond_5

    .line 54
    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 55
    .local v2, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v2, :cond_4

    .line 56
    iget-wide v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60
    .end local v2    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 61
    .local v4, "time":J
    iget-object v7, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->personStatus:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;

    .line 62
    .local v3, "personStatusObject":Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;
    if-eqz v3, :cond_6

    .line 65
    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;->st:J

    cmp-long v8, v4, v8

    if-ltz v8, :cond_6

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;->et:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_6

    .line 68
    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;->ext:Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObjectExt;

    if-eqz v8, :cond_0

    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;->ext:Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObjectExt;

    iget-wide v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObjectExt;->orgId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 71
    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;->ext:Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObjectExt;

    iget-wide v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObjectExt;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto/16 :goto_0

    .end local v3    # "personStatusObject":Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;
    :cond_7
    move-object v3, v6

    .line 75
    goto/16 :goto_0
.end method
