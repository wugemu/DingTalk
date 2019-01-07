.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;
.super Ljava/lang/Object;
.source "OrgEmpSettingObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4bdb48a2cae920b1L


# instance fields
.field public customizedPortal:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public memberView:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mobileHide:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lces;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;
    .locals 3
    .param p0, "model"    # Lces;

    .prologue
    const/4 v2, 0x0

    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    .line 51
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;-><init>()V

    .line 52
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;
    iget-object v1, p0, Lces;->a:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 52
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;->mobileHide:Z

    .line 53
    iget-object v1, p0, Lces;->b:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 53
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;->customizedPortal:Z

    .line 54
    iget-object v1, p0, Lces;->c:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 54
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;->memberView:Z

    goto :goto_0
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;)Lces;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Lces;

    invoke-direct {v0}, Lces;-><init>()V

    .line 65
    .local v0, "model":Lces;
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;->mobileHide:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lces;->a:Ljava/lang/Boolean;

    .line 66
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;->customizedPortal:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lces;->b:Ljava/lang/Boolean;

    .line 67
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;->memberView:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lces;->c:Ljava/lang/Boolean;

    goto :goto_0
.end method
