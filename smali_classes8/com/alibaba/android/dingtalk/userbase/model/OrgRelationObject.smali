.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgRelationObject;
.super Ljava/lang/Object;
.source "OrgRelationObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public isInExternalContact:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isReverseExternalContact:Z
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

.method public static fromIDLModel(Lcff;)Lcom/alibaba/android/dingtalk/userbase/model/OrgRelationObject;
    .locals 3
    .param p0, "model"    # Lcff;

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgRelationObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgRelationObject;-><init>()V

    .line 42
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgRelationObject;
    if-eqz p0, :cond_0

    .line 43
    iget-object v1, p0, Lcff;->a:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 43
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgRelationObject;->isInExternalContact:Z

    .line 44
    iget-object v1, p0, Lcff;->b:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 44
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgRelationObject;->isReverseExternalContact:Z

    .line 46
    :cond_0
    return-object v0
.end method
