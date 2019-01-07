.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;
.super Ljava/lang/Object;
.source "OrgAdminPermissionObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public mExtContactSetting:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mGroupChatSetting:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mMoreSetting:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mSafetyCenterSetting:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lceh;)Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;
    .locals 3
    .param p0, "model"    # Lceh;

    .prologue
    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;-><init>()V

    .line 43
    .local v0, "orgAdminPermissionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;
    if-eqz p0, :cond_0

    .line 44
    iget-object v1, p0, Lceh;->a:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 44
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->mGroupChatSetting:Z

    .line 45
    iget-object v1, p0, Lceh;->c:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 45
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->mMoreSetting:Z

    .line 46
    iget-object v1, p0, Lceh;->b:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 46
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->mSafetyCenterSetting:Z

    .line 47
    iget-object v1, p0, Lceh;->d:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 47
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->mExtContactSetting:Z

    .line 50
    :cond_0
    return-object v0
.end method
