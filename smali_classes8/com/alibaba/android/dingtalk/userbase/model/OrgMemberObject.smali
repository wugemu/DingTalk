.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
.super Ljava/lang/Object;
.source "OrgMemberObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5a20d9c7130f611bL


# instance fields
.field public applyReason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public avatarMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public deptId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isAdd:Z

.field public isAdmin:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isBoss:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isCustomJobPosition:Z

.field public isFromQrcode:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public jobDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public jobName:Ljava/lang/String;

.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public opt:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isFromQrcode:Z

    .line 80
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdd:Z

    return-void
.end method

.method public static addUserIdentityObject(JZLcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    .locals 4
    .param p0, "deptId"    # J
    .param p2, "isBoss"    # Z
    .param p3, "user"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 154
    if-nez p3, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 165
    :goto_0
    return-object v0

    .line 157
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;-><init>()V

    .line 158
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    iget-wide v2, p3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    .line 159
    iput-wide p0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->deptId:J

    .line 160
    iget-object v1, p3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    .line 161
    invoke-static {p3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->getUserName(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    .line 162
    iput-boolean p2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isBoss:Z

    .line 163
    iget-object v1, p3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->avatarMediaId:Ljava/lang/String;

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdd:Z

    goto :goto_0
.end method

.method public static fromIDLModel(Lcfb;)Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    .locals 8
    .param p0, "model"    # Lcfb;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 84
    if-nez p0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    .line 88
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;-><init>()V

    .line 89
    .local v0, "orgMemberObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    iget-object v1, p0, Lcfb;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 89
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    .line 90
    iget-object v1, p0, Lcfb;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcfb;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcfb;->d:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 92
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->deptId:J

    .line 93
    iget-object v1, p0, Lcfb;->e:Ljava/lang/Integer;

    .line 3033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 93
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->opt:I

    .line 94
    iget-object v1, p0, Lcfb;->f:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 94
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isBoss:Z

    .line 95
    iget-object v1, p0, Lcfb;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->applyReason:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcfb;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->avatarMediaId:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcfb;->h:Ljava/lang/Boolean;

    .line 5022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 97
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    .line 98
    iget-object v1, p0, Lcfb;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobDesc:Ljava/lang/String;

    goto :goto_0
.end method

.method public static fromIDLModelList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcfb;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Lcfb;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 105
    :cond_0
    const/4 v1, 0x0

    .line 116
    :cond_1
    return-object v1

    .line 108
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v1, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfb;

    .line 110
    .local v0, "model":Lcfb;
    if-eqz v0, :cond_3

    .line 113
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->fromIDLModel(Lcfb;)Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static fromUserIdentityObject(JZLcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    .locals 4
    .param p0, "deptId"    # J
    .param p2, "isBoss"    # Z
    .param p3, "user"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 140
    if-nez p3, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0

    .line 143
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;-><init>()V

    .line 144
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    iget-wide v2, p3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    .line 145
    iput-wide p0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->deptId:J

    .line 146
    iget-object v1, p3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    .line 147
    invoke-static {p3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->getUserName(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    .line 148
    iput-boolean p2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isBoss:Z

    .line 149
    iget-object v1, p3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->avatarMediaId:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getUserName(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Ljava/lang/String;
    .locals 1
    .param p0, "user"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    .line 172
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Lcfb;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    .line 125
    :cond_0
    new-instance v0, Lcfb;

    invoke-direct {v0}, Lcfb;-><init>()V

    .line 126
    .local v0, "model":Lcfb;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcfb;->a:Ljava/lang/Long;

    .line 127
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lcfb;->b:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcfb;->c:Ljava/lang/String;

    .line 129
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->deptId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcfb;->d:Ljava/lang/Long;

    .line 130
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->opt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcfb;->e:Ljava/lang/Integer;

    .line 131
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isBoss:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfb;->f:Ljava/lang/Boolean;

    .line 132
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->applyReason:Ljava/lang/String;

    iput-object v1, v0, Lcfb;->j:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->avatarMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcfb;->g:Ljava/lang/String;

    .line 134
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfb;->h:Ljava/lang/Boolean;

    .line 135
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobDesc:Ljava/lang/String;

    iput-object v1, v0, Lcfb;->i:Ljava/lang/String;

    goto :goto_0
.end method
