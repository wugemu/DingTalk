.class public final Lfzw;
.super Ljava/lang/Object;
.source "SpaceSearchHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "spaceId"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 123
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 124
    const/16 v2, 0x2f

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 125
    .local v0, "lastIndex":I
    if-ltz v0, :cond_1

    .line 127
    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 130
    :cond_0
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 133
    .end local v0    # "lastIndex":I
    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 136
    :cond_2
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    invoke-virtual {v2, p0}, Lfzv;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "spaceSource":Ljava/lang/String;
    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    .line 139
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .end local v1    # "spaceSource":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v1

    .line 140
    .restart local v1    # "spaceSource":Ljava/lang/String;
    :cond_4
    if-nez v1, :cond_3

    .line 142
    if-eqz p2, :cond_5

    move-object v1, p2

    .line 143
    goto :goto_0

    .line 145
    :cond_5
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static a()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    .line 34
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v5, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    .line 37
    .local v6, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-nez v6, :cond_1

    .line 73
    :cond_0
    return-object v5

    .line 41
    :cond_1
    iget-object v2, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 42
    .local v2, "orgEmployeeExtensionObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-eqz v2, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "isPersonalAppend":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 48
    .local v1, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_2

    .line 52
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v8

    iget-wide v10, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-object v9, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-virtual {v8, v10, v11, v9}, Lfzv;->a(JLjava/lang/String;)V

    .line 53
    iget-object v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v8, :cond_2

    .line 57
    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->spaceId:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_4

    .line 58
    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->spaceId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "personalSpaceId":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 60
    const/4 v0, 0x1

    .line 61
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_3
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v8

    iget-object v9, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    const/4 v10, 0x2

    invoke-virtual {v8, v4, v9, v10}, Lfzv;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    .end local v4    # "personalSpaceId":Ljava/lang/String;
    :cond_4
    iget-object v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_2

    .line 67
    iget-object v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "orgSpaceId":Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v8

    iget-wide v10, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual {v8, v3, v10, v11}, Lfzv;->a(Ljava/lang/String;J)V

    .line 70
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v8

    iget-object v9, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {v8, v3, v9, v10}, Lfzv;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
