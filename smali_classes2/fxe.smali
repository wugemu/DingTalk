.class public final Lfxe;
.super Ljava/lang/Object;
.source "OrgNodeItemUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .locals 4

    .prologue
    .line 153
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;-><init>()V

    .line 154
    .local v0, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->LABEL:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    .line 155
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    .line 156
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->id:J

    .line 157
    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 6
    .param p0, "orgId"    # J

    .prologue
    .line 124
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-lez v3, :cond_1

    .line 125
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 126
    .local v2, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v2, :cond_1

    .line 127
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 128
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 130
    .local v1, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_0

    .line 131
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    .line 137
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    .end local v1    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v2    # "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;
    .locals 6
    .param p0, "orgNodeItemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "key":Ljava/lang/String;
    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v1, :cond_2

    .line 21
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 22
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    .line 34
    :cond_0
    :goto_0
    return-object v0

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 26
    :cond_2
    if-eqz p0, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_3

    .line 27
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 28
    :cond_3
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->LABEL:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string/jumbo v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)J
    .locals 4
    .param p0, "orgNodeItemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 37
    const-wide/16 v0, 0x0

    .line 38
    .local v0, "key":J
    if-eqz p0, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v2, :cond_1

    .line 39
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    .line 45
    :cond_0
    :goto_0
    return-wide v0

    .line 40
    :cond_1
    if-eqz p0, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v2, :cond_2

    .line 41
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    goto :goto_0

    .line 42
    :cond_2
    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->LABEL:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    iget-wide v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->id:J

    goto :goto_0
.end method

.method public static c(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;
    .locals 3
    .param p0, "orgNodeItemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "name":Ljava/lang/String;
    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v1, :cond_2

    .line 50
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 60
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_2
    if-eqz p0, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_3

    .line 56
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_3
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->LABEL:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static d(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)I
    .locals 6
    .param p0, "orgNodeItemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "keyType":I
    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v1, :cond_2

    .line 67
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 68
    const/4 v0, 0x2

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    :cond_2
    if-eqz p0, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_3

    .line 73
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :cond_3
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->LABEL:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v1, v2, :cond_0

    .line 75
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static e(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;
    .locals 5
    .param p0, "orgNodeItemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    const/4 v4, 0x0

    .line 81
    const-string/jumbo v0, ""

    .line 82
    .local v0, "name":Ljava/lang/String;
    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->deptList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->deptList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->deptList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    .line 91
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_2

    .line 87
    const-string/jumbo v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_2
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->LABEL:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static f(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Z
    .locals 6
    .param p0, "orgNodeItemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 161
    if-nez p0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->LABEL:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v2, v3, :cond_0

    .line 167
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    if-nez v2, :cond_2

    move v0, v1

    .line 168
    goto :goto_0

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
