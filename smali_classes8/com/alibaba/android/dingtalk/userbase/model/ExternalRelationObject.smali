.class public Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;
.super Ljava/lang/Object;
.source "ExternalRelationObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public externalObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isOrgExternalContact:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isSelfCanVisitExternalContact:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lcdk;)Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;
    .locals 3
    .param p0, "model"    # Lcdk;

    .prologue
    const/4 v2, 0x0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;-><init>()V

    .line 41
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;
    iget-object v1, p0, Lcdk;->a:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 41
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;->isOrgExternalContact:Z

    .line 42
    iget-object v1, p0, Lcdk;->b:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 42
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;->isSelfCanVisitExternalContact:Z

    .line 43
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    iget-object v2, p0, Lcdk;->c:Lcew;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->fromIDLModel(Lcew;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;->externalObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 46
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;)Lcdk;
    .locals 3
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;

    .prologue
    .line 50
    if-nez p0, :cond_1

    .line 51
    const/4 v0, 0x0

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :cond_1
    new-instance v0, Lcdk;

    invoke-direct {v0}, Lcdk;-><init>()V

    .line 54
    .local v0, "model":Lcdk;
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;->isOrgExternalContact:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcdk;->a:Ljava/lang/Boolean;

    .line 55
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;->isSelfCanVisitExternalContact:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcdk;->b:Ljava/lang/Boolean;

    .line 56
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;->externalObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;->externalObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;->externalObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->toIDLFromObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)Lcew;

    move-result-object v1

    iput-object v1, v0, Lcdk;->c:Lcew;

    goto :goto_0
.end method
