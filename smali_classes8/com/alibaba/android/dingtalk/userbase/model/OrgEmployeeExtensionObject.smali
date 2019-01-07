.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
.super Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
.source "OrgEmployeeExtensionObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4bdb48a2cae9209fL


# instance fields
.field public alertMsg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public bizCardMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public empSetting:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public employDate:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public extNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public extPropertyObjectList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;",
            ">;"
        }
    .end annotation
.end field

.field public followRecordsBrief:Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public friendRequestRemark:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public inviteChannel:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public inviteHrm:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isOrgAuth:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mIsAdmin:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nodeItemObjectList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field public orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgLevel:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgWorkAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public remark:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public sendActiveMessage:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public sendFriendRequest:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public spaceId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lcev;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 14
    .param p0, "model"    # Lcev;

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    const/4 v5, 0x0

    .line 223
    :goto_0
    return-object v5

    .line 116
    :cond_0
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    .line 117
    .local v5, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-object v11, p0, Lcev;->a:Lcew;

    if-eqz v11, :cond_6

    .line 118
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v12, 0x0

    invoke-static {v11, v12, v13}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v12

    .line 118
    iput-wide v12, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    .line 119
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->b:Ljava/lang/Long;

    .line 2044
    const-wide/16 v12, 0x0

    invoke-static {v11, v12, v13}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v12

    .line 119
    iput-wide v12, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->masterUid:J

    .line 120
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->c:Ljava/lang/Boolean;

    .line 3022
    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v11

    .line 120
    iput-boolean v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->hasSubordinate:Z

    .line 121
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->d:Ljava/lang/Long;

    .line 3044
    const-wide/16 v12, 0x0

    invoke-static {v11, v12, v13}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v12

    .line 121
    iput-wide v12, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 122
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->e:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    .line 123
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->f:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 124
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->g:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->stateCode:Ljava/lang/String;

    .line 125
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->h:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    .line 126
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->i:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserNamePinyin:Ljava/lang/String;

    .line 127
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->j:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgNickName:Ljava/lang/String;

    .line 128
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->k:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAvatarMediaId:Ljava/lang/String;

    .line 129
    iget-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAvatarMediaId:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAvatarMediaId:Ljava/lang/String;

    invoke-static {v11}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 131
    :try_start_0
    iget-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAvatarMediaId:Ljava/lang/String;

    invoke-static {v11}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAvatarMediaId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_1
    :goto_1
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->l:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    .line 137
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->m:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    .line 138
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->o:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    .line 139
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->p:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgMasterStaffId:Ljava/lang/String;

    .line 140
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->q:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgMasterDisplayName:Ljava/lang/String;

    .line 141
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->x:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->followerEmpName:Ljava/lang/String;

    .line 142
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->y:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptName:Ljava/lang/String;

    .line 143
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->z:Ljava/lang/Integer;

    .line 4033
    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v11

    .line 143
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->subChannelStatus:Ljava/lang/Integer;

    .line 144
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->A:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobileDesensitize:Ljava/lang/String;

    .line 145
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->B:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    .line 146
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    .line 147
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->n:Ljava/util/List;

    if-eqz v11, :cond_3

    .line 148
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->n:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcen;

    .line 149
    .local v0, "deptModel":Lcen;
    new-instance v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v12}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    invoke-virtual {v12, v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->fromIDLModel(Lcen;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    move-result-object v6

    .line 150
    .local v6, "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v6, :cond_2

    .line 151
    iget-object v12, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 132
    .end local v0    # "deptModel":Lcen;
    .end local v6    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 155
    .end local v1    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_3
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->s:Lcgo;

    invoke-static {v11}, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->fromIDLModel(Lcgo;)Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    move-result-object v11

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    .line 156
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->t:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAuthEmail:Ljava/lang/String;

    .line 157
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->r:Ljava/lang/Integer;

    .line 5033
    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v11

    .line 157
    iput v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    .line 158
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->roles:Ljava/util/List;

    .line 159
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->u:Ljava/util/List;

    if-eqz v11, :cond_4

    .line 160
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->u:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 6033
    .local v9, "r":Ljava/lang/Integer;
    const/4 v12, 0x0

    invoke-static {v9, v12}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v10

    .line 162
    .local v10, "role":I
    iget-object v12, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->roles:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 165
    .end local v9    # "r":Ljava/lang/Integer;
    .end local v10    # "role":I
    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->labels:Ljava/util/List;

    .line 166
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->v:Ljava/util/List;

    if-eqz v11, :cond_5

    .line 167
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->v:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcec;

    .line 168
    .local v3, "labelModel":Lcec;
    iget-object v12, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->labels:Ljava/util/List;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->fromIDLModel(Lcec;)Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 171
    .end local v3    # "labelModel":Lcec;
    :cond_5
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->w:Ljava/lang/Boolean;

    .line 7022
    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v11

    .line 171
    iput-boolean v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    .line 172
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->A:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobileDesensitize:Ljava/lang/String;

    .line 173
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->D:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->jobNumber:Ljava/lang/String;

    .line 174
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->E:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extension:Ljava/lang/String;

    .line 175
    iget-object v11, p0, Lcev;->a:Lcew;

    iget-object v11, v11, Lcew;->I:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->externalTitle:Ljava/lang/String;

    .line 178
    :cond_6
    iget-object v11, p0, Lcev;->b:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extNumber:Ljava/lang/String;

    .line 179
    iget-object v11, p0, Lcev;->c:Ljava/util/Date;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->employDate:Ljava/util/Date;

    .line 180
    iget-object v11, p0, Lcev;->d:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgWorkAddress:Ljava/lang/String;

    .line 181
    iget-object v11, p0, Lcev;->e:Ljava/lang/Boolean;

    .line 8022
    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v11

    .line 181
    iput-boolean v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isOrgAuth:Z

    .line 183
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    .line 184
    iget-object v11, p0, Lcev;->f:Ljava/util/List;

    if-eqz v11, :cond_8

    .line 185
    iget-object v11, p0, Lcev;->f:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcey;

    .line 186
    .local v2, "extPropertyModel":Lcey;
    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->fromIDLModel(Lcey;)Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    move-result-object v7

    .line 187
    .local v7, "orgExtPropertyObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    if-eqz v7, :cond_7

    .line 188
    iget-object v12, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 192
    .end local v2    # "extPropertyModel":Lcey;
    .end local v7    # "orgExtPropertyObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    :cond_8
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    .line 193
    iget-object v11, p0, Lcev;->g:Ljava/util/List;

    if-eqz v11, :cond_a

    .line 194
    iget-object v11, p0, Lcev;->g:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcfc;

    .line 195
    .local v4, "nodeItemModel":Lcfc;
    invoke-static {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->fromIdl(Lcfc;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v8

    .line 196
    .local v8, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v8, :cond_9

    .line 197
    iget-object v12, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 202
    .end local v4    # "nodeItemModel":Lcfc;
    .end local v8    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_a
    iget-object v11, p0, Lcev;->h:Lcfi;

    if-eqz v11, :cond_b

    .line 203
    iget-object v11, p0, Lcev;->h:Lcfi;

    invoke-static {v11}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->fromIDLModel(Lcfi;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v11

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 206
    :cond_b
    iget-object v11, p0, Lcev;->i:Ljava/lang/Long;

    .line 8044
    const-wide/16 v12, 0x0

    invoke-static {v11, v12, v13}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v12

    .line 206
    iput-wide v12, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->spaceId:J

    .line 207
    iget-object v11, p0, Lcev;->j:Ljava/lang/Boolean;

    .line 9022
    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v11

    .line 207
    iput-boolean v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->mIsAdmin:Z

    .line 209
    iget-object v11, p0, Lcev;->k:Ljava/lang/Integer;

    .line 9033
    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v11

    .line 209
    iput v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgLevel:I

    .line 210
    iget-object v11, p0, Lcev;->l:Lces;

    invoke-static {v11}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;->fromIDLModel(Lces;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;

    move-result-object v11

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->empSetting:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;

    .line 211
    iget-object v11, p0, Lcev;->m:Lcev;

    invoke-static {v11}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->fromIDLModel(Lcev;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v11

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 212
    iget-object v11, p0, Lcev;->n:Lcer;

    invoke-static {v11}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->fromIDLModel(Lcer;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    move-result-object v11

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    .line 213
    iget-object v11, p0, Lcev;->o:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->bizCardMediaId:Ljava/lang/String;

    .line 214
    iget-object v11, p0, Lcev;->p:Lcdo;

    invoke-static {v11}, Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;->fromIDLModel(Lcdo;)Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;

    move-result-object v11

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->followRecordsBrief:Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;

    .line 215
    iget-object v11, p0, Lcev;->q:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->remark:Ljava/lang/String;

    .line 216
    iget-object v11, p0, Lcev;->r:Ljava/lang/Boolean;

    if-nez v11, :cond_c

    const/4 v11, 0x0

    :goto_7
    iput-boolean v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->inviteChannel:Z

    .line 217
    iget-object v11, p0, Lcev;->s:Ljava/lang/Boolean;

    if-nez v11, :cond_d

    const/4 v11, 0x0

    :goto_8
    iput-boolean v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->sendActiveMessage:Z

    .line 218
    iget-object v11, p0, Lcev;->t:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->alertMsg:Ljava/lang/String;

    .line 219
    iget-object v11, p0, Lcev;->u:Ljava/lang/Boolean;

    .line 10022
    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v11

    .line 219
    iput-boolean v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->inviteHrm:Z

    .line 220
    iget-object v11, p0, Lcev;->v:Ljava/lang/Boolean;

    .line 11022
    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v11

    .line 220
    iput-boolean v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->sendFriendRequest:Z

    .line 221
    iget-object v11, p0, Lcev;->w:Ljava/lang/String;

    iput-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->friendRequestRemark:Ljava/lang/String;

    goto/16 :goto_0

    .line 216
    :cond_c
    iget-object v11, p0, Lcev;->r:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_7

    .line 217
    :cond_d
    iget-object v11, p0, Lcev;->s:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_8
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcev;
    .locals 8
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 227
    if-nez p0, :cond_0

    .line 228
    const/4 v0, 0x0

    .line 282
    :goto_0
    return-object v0

    .line 231
    :cond_0
    new-instance v0, Lcev;

    invoke-direct {v0}, Lcev;-><init>()V

    .line 232
    .local v0, "model":Lcev;
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extNumber:Ljava/lang/String;

    iput-object v6, v0, Lcev;->b:Ljava/lang/String;

    .line 233
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->employDate:Ljava/util/Date;

    iput-object v6, v0, Lcev;->c:Ljava/util/Date;

    .line 234
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgWorkAddress:Ljava/lang/String;

    iput-object v6, v0, Lcev;->d:Ljava/lang/String;

    .line 235
    iget-boolean v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isOrgAuth:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v0, Lcev;->e:Ljava/lang/Boolean;

    .line 236
    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->spaceId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v0, Lcev;->i:Ljava/lang/Long;

    .line 237
    iget-boolean v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->mIsAdmin:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v0, Lcev;->j:Ljava/lang/Boolean;

    .line 238
    iget v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v0, Lcev;->k:Ljava/lang/Integer;

    .line 239
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->empSetting:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;)Lces;

    move-result-object v6

    iput-object v6, v0, Lcev;->l:Lces;

    .line 241
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v1, "orgExtPropertyModelList":Ljava/util/List;, "Ljava/util/List<Lcey;>;"
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    .line 244
    .local v2, "orgExtPropertyObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;)Lcey;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    .end local v2    # "orgExtPropertyObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    :cond_1
    iput-object v1, v0, Lcev;->f:Ljava/util/List;

    .line 249
    .end local v1    # "orgExtPropertyModelList":Ljava/util/List;, "Ljava/util/List<Lcey;>;"
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v6, :cond_3

    .line 250
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;)Lcfi;

    move-result-object v6

    iput-object v6, v0, Lcev;->h:Lcfi;

    .line 253
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    if-eqz v6, :cond_6

    .line 254
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v4, "orgNodeItemModelList":Ljava/util/List;, "Ljava/util/List<Lcfc;>;"
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 256
    .local v5, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    invoke-static {v5}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->toIdl(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcfc;

    move-result-object v3

    .line 257
    .local v3, "orgNodeItemModel":Lcfc;
    if-eqz v3, :cond_4

    .line 260
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 262
    .end local v3    # "orgNodeItemModel":Lcfc;
    .end local v5    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_5
    iput-object v4, v0, Lcev;->g:Ljava/util/List;

    .line 265
    .end local v4    # "orgNodeItemModelList":Ljava/util/List;, "Ljava/util/List<Lcfc;>;"
    :cond_6
    invoke-virtual {p0, p0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->toIDLFromObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)Lcew;

    move-result-object v6

    iput-object v6, v0, Lcev;->a:Lcew;

    .line 266
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcev;

    move-result-object v6

    iput-object v6, v0, Lcev;->m:Lcev;

    .line 267
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    if-eqz v6, :cond_7

    .line 268
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->toIDLModel()Lcer;

    move-result-object v6

    iput-object v6, v0, Lcev;->n:Lcer;

    .line 270
    :cond_7
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->bizCardMediaId:Ljava/lang/String;

    iput-object v6, v0, Lcev;->o:Ljava/lang/String;

    .line 271
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->followRecordsBrief:Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;

    if-eqz v6, :cond_8

    .line 272
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->followRecordsBrief:Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;->toIDLModel()Lcdo;

    move-result-object v6

    iput-object v6, v0, Lcev;->p:Lcdo;

    .line 274
    :cond_8
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->remark:Ljava/lang/String;

    iput-object v6, v0, Lcev;->q:Ljava/lang/String;

    .line 275
    iget-boolean v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->inviteChannel:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v0, Lcev;->r:Ljava/lang/Boolean;

    .line 276
    iget-boolean v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->sendActiveMessage:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v0, Lcev;->s:Ljava/lang/Boolean;

    .line 277
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->alertMsg:Ljava/lang/String;

    iput-object v6, v0, Lcev;->t:Ljava/lang/String;

    .line 278
    iget-boolean v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->inviteHrm:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v0, Lcev;->u:Ljava/lang/Boolean;

    .line 279
    iget-boolean v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->sendFriendRequest:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v0, Lcev;->v:Ljava/lang/Boolean;

    .line 280
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->friendRequestRemark:Ljava/lang/String;

    iput-object v6, v0, Lcev;->w:Ljava/lang/String;

    goto/16 :goto_0
.end method
