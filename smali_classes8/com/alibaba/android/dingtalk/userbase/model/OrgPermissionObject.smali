.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;
.super Ljava/lang/Object;
.source "OrgPermissionObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5525ac3f41432634L


# instance fields
.field public canManager:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public unableClickReason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public unableSelectReason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcfe;)Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;
    .locals 3
    .param p0, "model"    # Lcfe;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;-><init>()V

    .line 29
    .local v0, "permissionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;
    iget-object v1, p0, Lcfe;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->unableClickReason:Ljava/lang/String;

    .line 30
    iget-object v1, p0, Lcfe;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->unableSelectReason:Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lcfe;->c:Ljava/lang/Boolean;

    .line 1022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 31
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->canManager:Z

    goto :goto_0
.end method

.method public static toIdl(Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;)Lcfe;
    .locals 3
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lcfe;

    invoke-direct {v0}, Lcfe;-><init>()V

    .line 41
    .local v0, "orgPermissionModel":Lcfe;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->unableClickReason:Ljava/lang/String;

    iput-object v1, v0, Lcfe;->a:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->unableSelectReason:Ljava/lang/String;

    iput-object v1, v0, Lcfe;->b:Ljava/lang/String;

    .line 43
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->canManager:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfe;->c:Ljava/lang/Boolean;

    goto :goto_0
.end method
