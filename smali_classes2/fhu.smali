.class public final Lfhu;
.super Ljava/lang/Object;
.source "ManagerSettingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgManagerRoleObject;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "object"    # Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    .prologue
    .line 26
    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->members:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->members:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 27
    :cond_0
    sget v5, Lezg$l;->dt_contact_subManager_add:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 44
    :goto_0
    return-object v5

    .line 29
    :cond_1
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 31
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v3, 0x1

    .line 32
    .local v3, "isFirst":Z
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v5, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->members:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 33
    iget-object v5, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->members:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;

    .line 34
    .local v1, "employ":Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;
    if-eqz v1, :cond_2

    .line 37
    if-eqz v3, :cond_3

    .line 38
    const/4 v3, 0x0

    .line 42
    :goto_2
    iget-object v5, v1, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 32
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 40
    :cond_3
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 44
    .end local v1    # "employ":Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/OrgDeptSimpleObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "depts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    :cond_0
    const/4 v1, 0x0

    .line 128
    :cond_1
    return-object v1

    .line 116
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .local v1, "simpleDepts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/model/OrgDeptSimpleObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 119
    .local v0, "dept":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v0, :cond_3

    .line 122
    new-instance v2, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;

    invoke-direct {v2}, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;-><init>()V

    .line 123
    .local v2, "temp":Lcom/alibaba/android/user/model/OrgDeptSimpleObject;
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    iput-wide v4, v2, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;->orgId:J

    .line 124
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iput-wide v4, v2, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;->deptId:J

    .line 125
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;->deptName:Ljava/lang/String;

    .line 126
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgManagerRoleObject;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "object"    # Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    .prologue
    .line 48
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    if-nez v0, :cond_1

    .line 49
    :cond_0
    sget v0, Lezg$l;->dt_contact_subManager_select:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 51
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iget v0, v0, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 52
    sget v0, Lezg$l;->dt_contact_subManager_wholeCompany:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iget v0, v0, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 55
    sget v0, Lezg$l;->dt_contact_subManager_currentAndSub:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iget v0, v0, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 59
    sget v0, Lezg$l;->dt_contact_subManager_specific_depart:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_4
    sget v0, Lezg$l;->dt_contact_subManager_select:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgManagerRoleObject;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "object"    # Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    .prologue
    .line 65
    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iget-object v5, v5, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->depts:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iget-object v5, v5, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->depts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 66
    :cond_0
    sget v5, Lezg$l;->dt_contact_subManager_select:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 87
    :goto_0
    return-object v5

    .line 69
    :cond_1
    iget-object v5, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iget v5, v5, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 70
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 72
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v3, 0x1

    .line 73
    .local v3, "isFirst":Z
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v5, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iget-object v5, v5, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->depts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 74
    iget-object v5, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iget-object v5, v5, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->depts:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;

    .line 75
    .local v1, "dept":Lcom/alibaba/android/user/model/OrgDeptSimpleObject;
    if-eqz v1, :cond_2

    .line 78
    if-eqz v3, :cond_3

    .line 79
    const/4 v3, 0x0

    .line 83
    :goto_2
    iget-object v5, v1, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;->deptName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 73
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 81
    :cond_3
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 85
    .end local v1    # "dept":Lcom/alibaba/android/user/model/OrgDeptSimpleObject;
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 87
    .end local v0    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v2    # "i":I
    .end local v3    # "isFirst":Z
    .end local v4    # "size":I
    :cond_5
    sget v5, Lezg$l;->dt_contact_subManager_select:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgManagerRoleObject;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "object"    # Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    .prologue
    .line 91
    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->grantResources:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->grantResources:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 92
    :cond_0
    sget v5, Lezg$l;->dt_contact_subManager_select:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 109
    :goto_0
    return-object v5

    .line 94
    :cond_1
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 96
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v3, 0x1

    .line 97
    .local v3, "isFirst":Z
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v5, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->grantResources:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 98
    iget-object v5, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->grantResources:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    .line 99
    .local v1, "grant":Lcom/alibaba/android/user/model/OrgManagerResourceObject;
    if-eqz v1, :cond_2

    .line 102
    if-eqz v3, :cond_3

    .line 103
    const/4 v3, 0x0

    .line 107
    :goto_2
    iget-object v5, v1, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->domainName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 97
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 105
    :cond_3
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 109
    .end local v1    # "grant":Lcom/alibaba/android/user/model/OrgManagerResourceObject;
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
