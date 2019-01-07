.class public Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
.super Lcom/alibaba/android/search/model/idl/objects/BaseIntimacyPushObject;
.source "UserIntimacyPushObject.java"

# interfaces
.implements Lcco;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2a5f180ddd8f1dc7L


# instance fields
.field public alias:Ljava/lang/String;

.field public avatar:Ljava/lang/String;

.field public depName:Ljava/lang/String;

.field public empName:Ljava/lang/String;

.field public mobile:Ljava/lang/String;

.field public mobileValid:Z

.field public nick:Ljava/lang/String;

.field public orgId:J

.field public orgName:Ljava/lang/String;

.field public searchExtra2OrgModel:Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;

.field public uid:J

.field public version:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/search/model/idl/objects/BaseIntimacyPushObject;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->mobileValid:Z

    return-void
.end method

.method public static currentUserRecommendObject()Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 178
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 179
    .local v1, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 180
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_2

    .line 181
    new-instance v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    invoke-direct {v2}, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;-><init>()V

    .line 182
    .local v2, "userIntimacyPushObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    iput-wide v4, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    .line 183
    sget-wide v4, Lcom/alibaba/android/search/model/idl/objects/BaseIntimacyPushObject;->MAX_SCORE:D

    iput-wide v4, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->score:D

    .line 184
    invoke-static {}, Liaf;->c()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->modifidTime:J

    .line 185
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    .line 186
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->avatar:Ljava/lang/String;

    .line 187
    if-eqz v0, :cond_1

    .line 188
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v4, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgId:J

    .line 189
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgName:Ljava/lang/String;

    .line 190
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    .line 191
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 192
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->depName:Ljava/lang/String;

    .line 195
    :cond_0
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    .line 196
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgNickName:Ljava/lang/String;

    invoke-static {v3}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 197
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string/jumbo v5, "("

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgNickName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, ")"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    .line 204
    .end local v2    # "userIntimacyPushObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    :cond_1
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static fromIdl(Lepm;)Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    .locals 6
    .param p0, "model"    # Lepm;

    .prologue
    const-wide/16 v4, 0x0

    .line 89
    if-nez p0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    .line 92
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;-><init>()V

    .line 93
    .local v0, "object":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    iget-object v1, p0, Lepm;->a:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 93
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    .line 94
    iget-object v1, p0, Lepm;->b:Ljava/lang/Double;

    .line 2066
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Double;D)D

    move-result-wide v2

    .line 94
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->score:D

    .line 95
    iget-object v1, p0, Lepm;->c:Ljava/lang/Long;

    .line 3044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 95
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->modifidTime:J

    .line 96
    iget-object v1, p0, Lepm;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lepm;->e:Ljava/lang/Long;

    .line 4044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 97
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgId:J

    .line 98
    iget-object v1, p0, Lepm;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lepm;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgName:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lepm;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->depName:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lepm;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->avatar:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lepm;->j:Ljava/lang/Long;

    .line 5044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 102
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->version:J

    .line 103
    iget-object v1, p0, Lepm;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->mobile:Ljava/lang/String;

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->mobileValid:Z

    goto :goto_0
.end method

.method public static fromLocalEmployeeMaps(Ljava/util/Map;)Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    .line 64
    new-instance v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    invoke-direct {v1}, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;-><init>()V

    .line 66
    .local v1, "object":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    :try_start_0
    const-string/jumbo v2, "uid"

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const-string/jumbo v2, "uid"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    .line 69
    :cond_0
    const-string/jumbo v2, "oid"

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    const-string/jumbo v2, "oid"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgId:J

    .line 72
    :cond_1
    const-string/jumbo v2, "nick"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    .line 73
    const-string/jumbo v2, "avator"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->avatar:Ljava/lang/String;

    .line 74
    const-string/jumbo v2, "emp_name"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    .line 75
    const-string/jumbo v2, "mobile"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->mobile:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "object":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    :goto_0
    return-object v1

    .line 77
    .restart local v1    # "object":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v2, v3, :cond_3

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "object":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 81
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "object":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    :cond_3
    const-string/jumbo v2, "UserIntimacyPushObject.fromLocalEmployeeMaps %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1050
    const-string/jumbo v4, "search"

    invoke-static {v4, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static fromOrgNodeItemObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;I)Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    .locals 5
    .param p0, "orgNodeItemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p1, "score"    # I

    .prologue
    const/4 v4, 0x0

    .line 146
    if-nez p0, :cond_1

    .line 147
    const/4 v0, 0x0

    .line 174
    :cond_0
    :goto_0
    return-object v0

    .line 150
    :cond_1
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;-><init>()V

    .line 151
    .local v0, "userIntimacyPushObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    invoke-static {}, Liaf;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->modifidTime:J

    .line 152
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->hitField:Ljava/lang/String;

    invoke-static {v1}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    .line 153
    int-to-double v2, p1

    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->score:D

    .line 155
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgId:J

    .line 157
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgName:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->deptList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->deptList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->deptList:Ljava/util/List;

    .line 159
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->deptList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->depName:Ljava/lang/String;

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_3

    .line 165
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    .line 166
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->avatar:Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    .line 170
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->fromSearchExtra:Ljava/io/Serializable;

    instance-of v1, v1, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->fromSearchExtra:Ljava/io/Serializable;

    check-cast v1, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->searchExtra2OrgModel:Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;

    goto :goto_0
.end method

.method public static fromUserIdentity(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;I)Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    .locals 6
    .param p0, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p1, "deptName"    # Ljava/lang/String;
    .param p2, "score"    # I

    .prologue
    .line 126
    if-nez p0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    .line 130
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;-><init>()V

    .line 131
    .local v0, "userIntimacyPushObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    int-to-double v2, p2

    sget-wide v4, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->MAX_SCORE:D

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    sget-wide v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->MAX_SCORE:D

    :goto_1
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->score:D

    .line 132
    invoke-static {}, Liaf;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->modifidTime:J

    .line 134
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    .line 135
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->avatar:Ljava/lang/String;

    .line 138
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgId:J

    .line 139
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->company:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgName:Ljava/lang/String;

    .line 140
    iput-object p1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->depName:Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_1
    int-to-double v2, p2

    goto :goto_1
.end method

.method public static getUserIdentityObject(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 4
    .param p0, "userIntimacyPushObject"    # Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .prologue
    .line 110
    if-nez p0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    .line 114
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 115
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v2, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 116
    iget-object v1, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    :goto_1
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    goto :goto_0

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getAvatarMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getEmpName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 250
    iget-wide v0, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgId:J

    return-wide v0
.end method

.method public getUid()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 220
    iget-wide v0, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    return-wide v0
.end method

.method public matchHightlightKeyword(Ljava/lang/String;)Z
    .locals 4
    .param p1, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 208
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_search_disable_result_keyword_match_check"

    .line 5083
    invoke-virtual {v2, v3, v1}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 209
    .local v0, "disableCheck":Z
    if-nez v0, :cond_0

    .line 210
    iget-object v2, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->alias:Ljava/lang/String;

    invoke-static {v2, p1}, Lcos;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    .line 211
    invoke-static {v2, p1}, Lcos;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    .line 212
    invoke-static {v2, p1}, Lcos;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v1

    .line 212
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAvatarMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->avatar:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setEmpName(Ljava/lang/String;)V
    .locals 0
    .param p1, "empName"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->mobile:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0
    .param p1, "nick"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setOrgId(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 255
    iput-wide p1, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgId:J

    .line 256
    return-void
.end method

.method public setUid(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 225
    iput-wide p1, p0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    .line 226
    return-void
.end method
