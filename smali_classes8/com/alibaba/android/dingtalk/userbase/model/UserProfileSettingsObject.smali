.class public Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;
.super Ljava/lang/Object;
.source "UserProfileSettingsObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public showOrgToAll:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public xuexiRegister:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lcgm;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;
    .locals 3
    .param p0, "model"    # Lcgm;

    .prologue
    const/4 v2, 0x0

    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;-><init>()V

    .line 38
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;
    iget-object v1, p0, Lcgm;->a:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 38
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;->showOrgToAll:Z

    .line 39
    iget-object v1, p0, Lcgm;->b:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 39
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;->xuexiRegister:Z

    goto :goto_0
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;)Lcgm;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lcgm;

    invoke-direct {v0}, Lcgm;-><init>()V

    .line 48
    .local v0, "model":Lcgm;
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;->showOrgToAll:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcgm;->a:Ljava/lang/Boolean;

    .line 49
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;->xuexiRegister:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcgm;->b:Ljava/lang/Boolean;

    goto :goto_0
.end method
