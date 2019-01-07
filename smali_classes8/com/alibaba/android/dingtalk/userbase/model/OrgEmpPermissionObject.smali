.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;
.super Ljava/lang/Object;
.source "OrgEmpPermissionObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final PERM_TYPE_EMPLOYEE:I = 0x0

.field public static final PERM_TYPE_EXTERNAL:I = 0x1

.field private static final serialVersionUID:J = -0x6269aa9a15fcfaccL


# instance fields
.field public canEdit:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public open:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public permissionType:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public permits:Ljava/util/List;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lcer;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;
    .locals 5
    .param p0, "model"    # Lcer;

    .prologue
    const/4 v3, 0x0

    .line 74
    if-nez p0, :cond_1

    .line 75
    const/4 v0, 0x0

    .line 92
    :cond_0
    return-object v0

    .line 77
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;-><init>()V

    .line 78
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;
    iget-object v2, p0, Lcer;->a:Ljava/lang/Integer;

    .line 1033
    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 78
    iput v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permissionType:I

    .line 79
    iget-object v2, p0, Lcer;->b:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 79
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->canEdit:Z

    .line 80
    iget-object v2, p0, Lcer;->c:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 80
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->open:Z

    .line 82
    iget-object v2, p0, Lcer;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    .line 84
    iget-object v2, p0, Lcer;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcfc;

    .line 85
    .local v1, "orgNodeItemModel":Lcfc;
    if-eqz v1, :cond_2

    .line 88
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->fromIdl(Lcfc;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public toIDLModel()Lcer;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 96
    new-instance v0, Lcer;

    invoke-direct {v0}, Lcer;-><init>()V

    .line 97
    .local v0, "model":Lcer;
    iget v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permissionType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcer;->a:Ljava/lang/Integer;

    .line 98
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->canEdit:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcer;->b:Ljava/lang/Boolean;

    .line 99
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->open:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcer;->c:Ljava/lang/Boolean;

    .line 101
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcer;->d:Ljava/util/List;

    .line 103
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 104
    .local v1, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v1, :cond_0

    .line 107
    iget-object v3, v0, Lcer;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->toIdl(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcfc;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    .end local v1    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_1
    return-object v0
.end method
