.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;
.super Ljava/lang/Object;
.source "OrgManageInfoObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public account:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public activeMemeberCount:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public authStatus:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public authStatusText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public authTitleText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public briefUids:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public canForceRemove:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public deptGroupAutoAddUserSwitch:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hasCreateAllEmpGroup:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hasCreateDeptGroup:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hasSetBoss:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hideMobileSwitch:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hrManagement:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public inRemoveProcess:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isExpired:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isLackOfOrgInfo:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isRegisterOnWeb:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mOrgAdminPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mailDomain:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mailDomainType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mailSettingsModel:Lccx;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mailStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public manageContactText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public manageExtContactText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public memberCount:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nodelist:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public removeActionDate:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public shortNameAuthObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgShortNameAuthObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lcfa;)Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;
    .locals 8
    .param p0, "model"    # Lcfa;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 94
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;-><init>()V

    .line 95
    .local v0, "orgInfoObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;
    if-eqz p0, :cond_0

    .line 96
    iget-object v1, p0, Lcfa;->a:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->briefUids:Ljava/util/List;

    .line 97
    iget-object v1, p0, Lcfa;->b:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 97
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->memberCount:J

    .line 98
    iget-object v1, p0, Lcfa;->c:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 98
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->activeMemeberCount:J

    .line 99
    iget-object v1, p0, Lcfa;->e:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 99
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->deptGroupAutoAddUserSwitch:Z

    .line 100
    iget-object v1, p0, Lcfa;->f:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 100
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->hasCreateDeptGroup:Z

    .line 101
    iget-object v1, p0, Lcfa;->d:Ljava/lang/Boolean;

    .line 5022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 101
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->hideMobileSwitch:Z

    .line 102
    iget-object v1, p0, Lcfa;->h:Ljava/lang/Boolean;

    .line 6022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 102
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->isRegisterOnWeb:Z

    .line 103
    iget-object v1, p0, Lcfa;->w:Ljava/lang/Boolean;

    .line 7022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 103
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->hasSetBoss:Z

    .line 104
    iget-object v1, p0, Lcfa;->x:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->isLackOfOrgInfo:Z

    .line 105
    iget-object v1, p0, Lcfa;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->account:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcfa;->g:Lcfd;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->fromIDLModel(Lcfd;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->nodelist:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .line 107
    iget-object v1, p0, Lcfa;->j:Ljava/lang/Integer;

    .line 7033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 107
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->authStatus:I

    .line 108
    iget-object v1, p0, Lcfa;->k:Ljava/lang/Long;

    .line 7044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 108
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->orgId:J

    .line 109
    iget-object v1, p0, Lcfa;->l:Ljava/lang/Boolean;

    .line 8022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 109
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->hasCreateAllEmpGroup:Z

    .line 110
    iget-object v1, p0, Lcfa;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->authStatusText:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcfa;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->authTitleText:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcfa;->o:Ljava/lang/Integer;

    .line 8033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->mailStatus:Ljava/lang/Integer;

    .line 113
    iget-object v1, p0, Lcfa;->p:Lccx;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->mailSettingsModel:Lccx;

    .line 114
    iget-object v1, p0, Lcfa;->q:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->mailDomain:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcfa;->r:Ljava/lang/Integer;

    .line 9033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->mailDomainType:Ljava/lang/Integer;

    .line 116
    iget-object v1, p0, Lcfa;->s:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->manageContactText:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcfa;->t:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->manageExtContactText:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcfa;->u:Lceh;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->fromIDLModel(Lceh;)Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->mOrgAdminPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;

    .line 119
    iget-object v1, p0, Lcfa;->v:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->hrManagement:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcfa;->y:Ljava/lang/Boolean;

    .line 10022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 120
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->inRemoveProcess:Z

    .line 121
    iget-object v1, p0, Lcfa;->z:Ljava/lang/Boolean;

    .line 11022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 121
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->canForceRemove:Z

    .line 122
    iget-object v1, p0, Lcfa;->A:Ljava/lang/Long;

    .line 11044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 122
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->removeActionDate:J

    .line 123
    iget-object v1, p0, Lcfa;->B:Lchm;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgShortNameAuthObject;->fromIDLModel(Lchm;)Lcom/alibaba/android/dingtalk/userbase/model/OrgShortNameAuthObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->shortNameAuthObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgShortNameAuthObject;

    .line 125
    :cond_0
    return-object v0
.end method
