.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
.super Ljava/lang/Object;
.source "OrgEmployeeObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5c35c235d4882603L


# instance fields
.field public companyName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public deptList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field public deptName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public empLabelScopes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field public extension:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public externalTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public followerEmpName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hasSubordinate:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isDeptManager:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isMainOrg:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public jobNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public labels:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;",
            ">;"
        }
    .end annotation
.end field

.field public mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public masterUid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgAuthEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgAvatarMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgMasterDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgMasterStaffId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgNickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgNickNamePinyin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgStaffId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgUserGender:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgUserMobile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgUserMobileDesensitize:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgUserName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgUserNamePinyin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public role:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public roles:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public stateCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public subChannelStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public ver:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromIDLModel(Lcew;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .locals 14
    .param p1, "model"    # Lcew;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    .line 154
    if-nez p1, :cond_0

    .line 155
    const/4 p0, 0x0

    .line 232
    .end local p0    # "this":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    :goto_0
    return-object p0

    .line 157
    .restart local p0    # "this":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    :cond_0
    iget-object v8, p1, Lcew;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v8, v12, v13}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 157
    iput-wide v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    .line 158
    iget-object v8, p1, Lcew;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v8, v12, v13}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 158
    iput-wide v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->masterUid:J

    .line 159
    iget-object v8, p1, Lcew;->c:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v8, v11}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v8

    .line 159
    iput-boolean v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->hasSubordinate:Z

    .line 160
    iget-object v8, p1, Lcew;->d:Ljava/lang/Long;

    .line 3044
    invoke-static {v8, v12, v13}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 160
    iput-wide v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    .line 161
    iget-object v8, p1, Lcew;->e:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgName:Ljava/lang/String;

    .line 162
    iget-object v8, p1, Lcew;->f:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobile:Ljava/lang/String;

    .line 163
    iget-object v8, p1, Lcew;->g:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->stateCode:Ljava/lang/String;

    .line 164
    iget-object v8, p1, Lcew;->h:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 165
    iget-object v8, p1, Lcew;->i:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserNamePinyin:Ljava/lang/String;

    .line 166
    iget-object v8, p1, Lcew;->j:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    .line 167
    iget-object v8, p1, Lcew;->H:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickNamePinyin:Ljava/lang/String;

    .line 168
    iget-object v8, p1, Lcew;->k:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    .line 169
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    invoke-static {v8}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 171
    :try_start_0
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    invoke-static {v8}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_1
    :goto_1
    iget-object v8, p1, Lcew;->l:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    .line 177
    iget-object v8, p1, Lcew;->m:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgEmail:Ljava/lang/String;

    .line 178
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->deptList:Ljava/util/List;

    .line 179
    iget-object v8, p1, Lcew;->n:Ljava/util/List;

    if-eqz v8, :cond_3

    .line 180
    iget-object v8, p1, Lcew;->n:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcen;

    .line 181
    .local v0, "deptModel":Lcen;
    new-instance v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v9}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    invoke-virtual {v9, v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->fromIDLModel(Lcen;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    move-result-object v5

    .line 182
    .local v5, "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v5, :cond_2

    .line 183
    iget-object v9, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->deptList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 172
    .end local v0    # "deptModel":Lcen;
    .end local v5    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 187
    .end local v1    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_3
    iget-object v8, p1, Lcew;->o:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    .line 188
    iget-object v8, p1, Lcew;->p:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgMasterStaffId:Ljava/lang/String;

    .line 189
    iget-object v8, p1, Lcew;->q:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgMasterDisplayName:Ljava/lang/String;

    .line 190
    iget-object v8, p1, Lcew;->r:Ljava/lang/Integer;

    .line 4033
    invoke-static {v8, v11}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v8

    .line 190
    iput v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->role:I

    .line 191
    iget-object v8, p1, Lcew;->s:Lcgo;

    invoke-static {v8}, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->fromIDLModel(Lcgo;)Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    .line 192
    iget-object v8, p1, Lcew;->t:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAuthEmail:Ljava/lang/String;

    .line 193
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->roles:Ljava/util/List;

    .line 194
    iget-object v8, p1, Lcew;->u:Ljava/util/List;

    if-eqz v8, :cond_4

    .line 195
    iget-object v8, p1, Lcew;->u:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 5033
    .local v6, "r":Ljava/lang/Integer;
    invoke-static {v6, v11}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v7

    .line 197
    .local v7, "role":I
    iget-object v9, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->roles:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 200
    .end local v6    # "r":Ljava/lang/Integer;
    .end local v7    # "role":I
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->labels:Ljava/util/List;

    .line 201
    iget-object v8, p1, Lcew;->v:Ljava/util/List;

    if-eqz v8, :cond_6

    .line 202
    iget-object v8, p1, Lcew;->v:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcec;

    .line 203
    .local v2, "labelModel":Lcec;
    if-eqz v2, :cond_5

    .line 206
    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->fromIDLModel(Lcec;)Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    move-result-object v3

    .line 207
    .local v3, "labelObject":Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    iget-object v9, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->labels:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 210
    .end local v2    # "labelModel":Lcec;
    .end local v3    # "labelObject":Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    :cond_6
    iget-object v8, p1, Lcew;->w:Ljava/lang/Boolean;

    .line 6022
    invoke-static {v8, v11}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v8

    .line 210
    iput-boolean v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->isMainOrg:Z

    .line 211
    iget-object v8, p1, Lcew;->x:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->followerEmpName:Ljava/lang/String;

    .line 212
    iget-object v8, p1, Lcew;->y:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->deptName:Ljava/lang/String;

    .line 213
    iget-object v8, p1, Lcew;->z:Ljava/lang/Integer;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->subChannelStatus:Ljava/lang/Integer;

    .line 214
    iget-object v8, p1, Lcew;->A:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobileDesensitize:Ljava/lang/String;

    .line 215
    iget-object v8, p1, Lcew;->B:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->companyName:Ljava/lang/String;

    .line 216
    iget-object v8, p1, Lcew;->C:Ljava/lang/Boolean;

    .line 7022
    invoke-static {v8, v11}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v8

    .line 216
    iput-boolean v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->isDeptManager:Z

    .line 217
    iget-object v8, p1, Lcew;->D:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->jobNumber:Ljava/lang/String;

    .line 218
    iget-object v8, p1, Lcew;->E:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->extension:Ljava/lang/String;

    .line 219
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->empLabelScopes:Ljava/util/List;

    .line 220
    iget-object v8, p1, Lcew;->G:Ljava/util/List;

    if-eqz v8, :cond_8

    .line 221
    iget-object v8, p1, Lcew;->G:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcen;

    .line 222
    .local v4, "orgDeptModel":Lcen;
    if-eqz v4, :cond_7

    .line 225
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    .line 226
    .restart local v5    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    invoke-virtual {v5, v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->fromIDLModel(Lcen;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 227
    iget-object v9, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->empLabelScopes:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 230
    .end local v4    # "orgDeptModel":Lcen;
    .end local v5    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_8
    iget-object v8, p1, Lcew;->F:Ljava/lang/Long;

    .line 7044
    invoke-static {v8, v12, v13}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 230
    iput-wide v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->ver:J

    .line 231
    iget-object v8, p1, Lcew;->I:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->externalTitle:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public toIDLFromObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)Lcew;
    .locals 11
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 238
    const/4 v5, 0x0

    .line 314
    :goto_0
    return-object v5

    .line 240
    :cond_0
    new-instance v5, Lcew;

    invoke-direct {v5}, Lcew;-><init>()V

    .line 241
    .local v5, "model":Lcew;
    iget-wide v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v5, Lcew;->a:Ljava/lang/Long;

    .line 242
    iget-wide v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->masterUid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v5, Lcew;->b:Ljava/lang/Long;

    .line 243
    iget-boolean v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->hasSubordinate:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v5, Lcew;->c:Ljava/lang/Boolean;

    .line 244
    iget-wide v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v5, Lcew;->d:Ljava/lang/Long;

    .line 245
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgName:Ljava/lang/String;

    iput-object v8, v5, Lcew;->e:Ljava/lang/String;

    .line 246
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobile:Ljava/lang/String;

    iput-object v8, v5, Lcew;->f:Ljava/lang/String;

    .line 247
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->stateCode:Ljava/lang/String;

    iput-object v8, v5, Lcew;->g:Ljava/lang/String;

    .line 248
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    iput-object v8, v5, Lcew;->h:Ljava/lang/String;

    .line 249
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserNamePinyin:Ljava/lang/String;

    iput-object v8, v5, Lcew;->i:Ljava/lang/String;

    .line 250
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    iput-object v8, v5, Lcew;->j:Ljava/lang/String;

    .line 251
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickNamePinyin:Ljava/lang/String;

    iput-object v8, v5, Lcew;->H:Ljava/lang/String;

    .line 252
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    iput-object v8, v5, Lcew;->k:Ljava/lang/String;

    .line 253
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    invoke-static {v8}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 255
    :try_start_0
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    invoke-static {v8}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcew;->k:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_1
    :goto_1
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    iput-object v8, v5, Lcew;->l:Ljava/lang/String;

    .line 261
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgEmail:Ljava/lang/String;

    iput-object v8, v5, Lcew;->m:Ljava/lang/String;

    .line 262
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Lcew;->n:Ljava/util/List;

    .line 263
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->deptList:Ljava/util/List;

    if-eqz v8, :cond_3

    .line 264
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->deptList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 265
    .local v0, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->toIDLModel()Lcen;

    move-result-object v6

    .line 266
    .local v6, "orgDeptModel":Lcen;
    if-eqz v6, :cond_2

    .line 267
    iget-object v9, v5, Lcew;->n:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 256
    .end local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .end local v6    # "orgDeptModel":Lcen;
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 271
    .end local v1    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_3
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    iput-object v8, v5, Lcew;->o:Ljava/lang/String;

    .line 272
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgMasterStaffId:Ljava/lang/String;

    iput-object v8, v5, Lcew;->p:Ljava/lang/String;

    .line 273
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgMasterDisplayName:Ljava/lang/String;

    iput-object v8, v5, Lcew;->q:Ljava/lang/String;

    .line 274
    iget v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->role:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v5, Lcew;->r:Ljava/lang/Integer;

    .line 275
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    invoke-static {v8}, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;)Lcgo;

    move-result-object v8

    iput-object v8, v5, Lcew;->s:Lcgo;

    .line 276
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAuthEmail:Ljava/lang/String;

    iput-object v8, v5, Lcew;->t:Ljava/lang/String;

    .line 277
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Lcew;->u:Ljava/util/List;

    .line 278
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->roles:Ljava/util/List;

    if-eqz v8, :cond_4

    .line 279
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->roles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 280
    .local v2, "i":I
    iget-object v8, v5, Lcew;->u:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 283
    .end local v2    # "i":I
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Lcew;->v:Ljava/util/List;

    .line 284
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->labels:Ljava/util/List;

    if-eqz v8, :cond_6

    .line 285
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->labels:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    .line 286
    .local v4, "labelObject":Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    if-eqz v4, :cond_5

    .line 289
    invoke-static {v4}, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;)Lcec;

    move-result-object v3

    .line 290
    .local v3, "labelModel":Lcec;
    iget-object v9, v5, Lcew;->v:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 293
    .end local v3    # "labelModel":Lcec;
    .end local v4    # "labelObject":Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    :cond_6
    iget-boolean v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->isMainOrg:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v5, Lcew;->w:Ljava/lang/Boolean;

    .line 294
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->followerEmpName:Ljava/lang/String;

    iput-object v8, v5, Lcew;->x:Ljava/lang/String;

    .line 295
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->deptName:Ljava/lang/String;

    iput-object v8, v5, Lcew;->y:Ljava/lang/String;

    .line 296
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->subChannelStatus:Ljava/lang/Integer;

    iput-object v8, v5, Lcew;->z:Ljava/lang/Integer;

    .line 297
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobileDesensitize:Ljava/lang/String;

    iput-object v8, v5, Lcew;->A:Ljava/lang/String;

    .line 298
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->companyName:Ljava/lang/String;

    iput-object v8, v5, Lcew;->B:Ljava/lang/String;

    .line 299
    iget-boolean v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->isDeptManager:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v5, Lcew;->C:Ljava/lang/Boolean;

    .line 300
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->jobNumber:Ljava/lang/String;

    iput-object v8, v5, Lcew;->D:Ljava/lang/String;

    .line 301
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->extension:Ljava/lang/String;

    iput-object v8, v5, Lcew;->E:Ljava/lang/String;

    .line 302
    iget-wide v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->ver:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v5, Lcew;->F:Ljava/lang/Long;

    .line 303
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Lcew;->G:Ljava/util/List;

    .line 304
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->empLabelScopes:Ljava/util/List;

    if-eqz v8, :cond_8

    .line 305
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->empLabelScopes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 306
    .local v7, "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v7, :cond_7

    .line 309
    invoke-virtual {v7}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->toIDLModel()Lcen;

    move-result-object v6

    .line 310
    .restart local v6    # "orgDeptModel":Lcen;
    iget-object v9, v5, Lcew;->G:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 313
    .end local v6    # "orgDeptModel":Lcen;
    .end local v7    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_8
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->externalTitle:Ljava/lang/String;

    iput-object v8, v5, Lcew;->I:Ljava/lang/String;

    goto/16 :goto_0
.end method
