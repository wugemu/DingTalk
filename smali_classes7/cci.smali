.class public final Lcci;
.super Ljava/lang/Object;
.source "OrgContactObject.java"


# instance fields
.field public a:J

.field public b:Z

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcck;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:I

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:D

.field public r:J

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:D

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcci;->z:I

    return-void
.end method

.method public static a(Lccb;)Lcci;
    .locals 12
    .param p0, "model"    # Lccb;

    .prologue
    const/4 v3, 0x0

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 51
    if-nez p0, :cond_0

    .line 82
    :goto_0
    return-object v3

    .line 54
    :cond_0
    new-instance v0, Lcci;

    invoke-direct {v0}, Lcci;-><init>()V

    .line 55
    .local v0, "object":Lcci;
    iget-object v1, p0, Lccb;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 55
    iput-wide v4, v0, Lcci;->a:J

    .line 56
    iget-object v1, p0, Lccb;->b:Ljava/lang/Boolean;

    invoke-static {v1, v8}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcci;->b:Z

    .line 57
    iget-object v1, p0, Lccb;->c:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 57
    iput-wide v4, v0, Lcci;->c:J

    .line 58
    iget-object v1, p0, Lccb;->d:Ljava/lang/String;

    iput-object v1, v0, Lcci;->d:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lccb;->e:Ljava/lang/String;

    iput-object v1, v0, Lcci;->e:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lccb;->f:Ljava/util/List;

    .line 3032
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3033
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3034
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccd;

    .line 4021
    if-eqz v1, :cond_2

    .line 4022
    new-instance v4, Lcck;

    invoke-direct {v4}, Lcck;-><init>()V

    .line 4023
    iget-object v6, v1, Lccd;->a:Ljava/lang/Long;

    .line 4044
    invoke-static {v6, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 4023
    iput-wide v6, v4, Lcck;->a:J

    .line 4024
    iget-object v6, v1, Lccd;->b:Ljava/lang/String;

    iput-object v6, v4, Lcck;->b:Ljava/lang/String;

    .line 4025
    iget-object v1, v1, Lccd;->c:Ljava/lang/Integer;

    .line 5033
    invoke-static {v1, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 4025
    iput v1, v4, Lcck;->c:I

    move-object v1, v4

    .line 3036
    :goto_2
    if-eqz v1, :cond_1

    .line 3037
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v1, v3

    .line 4028
    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 60
    :goto_3
    iput-object v1, v0, Lcci;->f:Ljava/util/List;

    .line 61
    iget-object v1, p0, Lccb;->g:Ljava/lang/String;

    iput-object v1, v0, Lcci;->g:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lccb;->h:Ljava/lang/String;

    iput-object v1, v0, Lcci;->h:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lccb;->i:Ljava/lang/String;

    iput-object v1, v0, Lcci;->i:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lccb;->j:Ljava/lang/Boolean;

    invoke-static {v1, v8}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcci;->j:Z

    .line 65
    iget-object v1, p0, Lccb;->k:Ljava/lang/Integer;

    .line 6033
    invoke-static {v1, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 65
    iput v1, v0, Lcci;->k:I

    .line 66
    iget-object v1, p0, Lccb;->l:Ljava/lang/Boolean;

    invoke-static {v1, v8}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcci;->l:Z

    .line 67
    iget-object v1, p0, Lccb;->m:Ljava/lang/String;

    iput-object v1, v0, Lcci;->m:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lccb;->n:Ljava/lang/Integer;

    .line 7033
    invoke-static {v1, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 68
    iput v1, v0, Lcci;->n:I

    .line 69
    iget-object v1, p0, Lccb;->o:Ljava/lang/String;

    iput-object v1, v0, Lcci;->o:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lccb;->p:Ljava/lang/String;

    iput-object v1, v0, Lcci;->p:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lccb;->q:Ljava/lang/Double;

    .line 7066
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Double;D)D

    move-result-wide v2

    .line 71
    iput-wide v2, v0, Lcci;->q:D

    .line 72
    iget-object v1, p0, Lccb;->r:Ljava/lang/Long;

    .line 8044
    invoke-static {v1, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 72
    iput-wide v2, v0, Lcci;->r:J

    .line 73
    iget-object v1, p0, Lccb;->s:Ljava/lang/String;

    iput-object v1, v0, Lcci;->s:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lccb;->t:Ljava/lang/String;

    iput-object v1, v0, Lcci;->t:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lccb;->u:Ljava/lang/String;

    iput-object v1, v0, Lcci;->u:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lccb;->v:Ljava/lang/Double;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Double;D)D

    move-result-wide v2

    iput-wide v2, v0, Lcci;->v:D

    .line 77
    iget-object v1, p0, Lccb;->w:Ljava/lang/String;

    iput-object v1, v0, Lcci;->w:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lccb;->x:Ljava/lang/String;

    iput-object v1, v0, Lcci;->x:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lccb;->y:Ljava/lang/String;

    iput-object v1, v0, Lcci;->y:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lccb;->z:Ljava/lang/Integer;

    .line 9033
    invoke-static {v1, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 80
    iput v1, v0, Lcci;->z:I

    move-object v3, v0

    .line 82
    goto/16 :goto_0

    :cond_4
    move-object v1, v3

    .line 3042
    goto :goto_3
.end method

.method public static a(Lcci;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .locals 12
    .param p0, "orgContactObject"    # Lcci;

    .prologue
    const/4 v3, 0x0

    .line 86
    if-nez p0, :cond_0

    .line 108
    :goto_0
    return-object v3

    .line 89
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;-><init>()V

    .line 90
    .local v0, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    .line 9126
    if-nez p0, :cond_1

    move-object v2, v3

    .line 91
    :goto_1
    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 9148
    if-nez p0, :cond_2

    move-object v2, v3

    .line 92
    :goto_2
    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 93
    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 94
    iget-object v2, p0, Lcci;->o:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->hitField:Ljava/lang/String;

    .line 95
    iget-object v2, p0, Lcci;->t:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->searchCallbackMode:Ljava/lang/String;

    .line 96
    iget-wide v2, p0, Lcci;->v:D

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->searchCredibility:D

    .line 98
    new-instance v1, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;-><init>()V

    .line 99
    .local v1, "searchExtra2OrgModel":Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;
    iget-object v2, p0, Lcci;->t:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;->searchCallbackMode:Ljava/lang/String;

    .line 100
    iget-wide v2, p0, Lcci;->v:D

    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;->searchCredibility:D

    .line 101
    iget-object v2, p0, Lcci;->w:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;->explain:Ljava/lang/String;

    .line 102
    iget-object v2, p0, Lcci;->x:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;->title:Ljava/lang/String;

    .line 103
    iget-object v2, p0, Lcci;->y:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;->mobile:Ljava/lang/String;

    .line 104
    iget v2, p0, Lcci;->z:I

    iput v2, v1, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;->empStatus:I

    .line 106
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->fromSearchExtra:Ljava/io/Serializable;

    move-object v3, v0

    .line 108
    goto :goto_0

    .line 9129
    .end local v1    # "searchExtra2OrgModel":Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;
    :cond_1
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 9130
    iget-boolean v4, p0, Lcci;->j:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    .line 9131
    iget-wide v4, p0, Lcci;->a:J

    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 9132
    iget-object v4, p0, Lcci;->p:Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 9133
    iget v4, p0, Lcci;->k:I

    int-to-long v4, v4

    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->tag:J

    .line 9134
    iget-boolean v4, p0, Lcci;->l:Z

    iput-boolean v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isDataComplete:Z

    .line 9135
    iget-object v4, p0, Lcci;->h:Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 9136
    iget-object v4, p0, Lcci;->m:Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->realName:Ljava/lang/String;

    .line 9137
    iget v4, p0, Lcci;->n:I

    iput v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    .line 9138
    iget-object v4, p0, Lcci;->u:Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgEmail:Ljava/lang/String;

    goto :goto_1

    .line 9151
    :cond_2
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;-><init>()V

    .line 9152
    iget-wide v6, p0, Lcci;->a:J

    iput-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    .line 9153
    iget-wide v6, p0, Lcci;->c:J

    iput-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    .line 9154
    iget-object v2, p0, Lcci;->d:Ljava/lang/String;

    iput-object v2, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgName:Ljava/lang/String;

    .line 9155
    iget-object v2, p0, Lcci;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcci;->h:Ljava/lang/String;

    :goto_3
    iput-object v2, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 9156
    iget-object v2, p0, Lcci;->g:Ljava/lang/String;

    iput-object v2, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    .line 9157
    iget-object v2, p0, Lcci;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcci;->h:Ljava/lang/String;

    :goto_4
    iput-object v2, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    .line 9158
    iget-object v2, p0, Lcci;->f:Ljava/util/List;

    iget-wide v8, p0, Lcci;->c:J

    .line 10058
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    move-object v2, v3

    .line 9158
    :goto_5
    iput-object v2, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->deptList:Ljava/util/List;

    .line 9159
    iget-object v2, p0, Lcci;->u:Ljava/lang/String;

    iput-object v2, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgEmail:Ljava/lang/String;

    move-object v2, v5

    .line 9160
    goto/16 :goto_2

    .line 9155
    :cond_4
    iget-object v2, p0, Lcci;->e:Ljava/lang/String;

    goto :goto_3

    .line 9157
    :cond_5
    iget-object v2, p0, Lcci;->i:Ljava/lang/String;

    goto :goto_4

    .line 10061
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 10062
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcck;

    .line 11046
    if-nez v2, :cond_8

    move-object v2, v3

    .line 10064
    :goto_7
    if-eqz v2, :cond_7

    .line 10065
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 11049
    :cond_8
    new-instance v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    .line 11050
    iput-wide v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    .line 11051
    iget-wide v10, v2, Lcck;->a:J

    iput-wide v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    .line 11052
    iget-object v10, v2, Lcck;->b:Ljava/lang/String;

    iput-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    .line 11053
    iget v2, v2, Lcck;->c:I

    iput v2, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    move-object v2, v6

    .line 11054
    goto :goto_7

    :cond_9
    move-object v2, v4

    .line 10068
    goto :goto_5
.end method
