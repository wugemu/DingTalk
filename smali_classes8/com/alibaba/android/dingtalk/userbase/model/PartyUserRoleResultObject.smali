.class public Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleResultObject;
.super Ljava/lang/Object;
.source "PartyUserRoleResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x262cceed0c7c8d39L


# instance fields
.field public objectLists:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcfn;)Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleResultObject;
    .locals 5
    .param p0, "resultModel"    # Lcfn;

    .prologue
    .line 26
    if-nez p0, :cond_1

    .line 27
    const/4 v1, 0x0

    .line 38
    :cond_0
    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleResultObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleResultObject;-><init>()V

    .line 31
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleResultObject;
    iget-object v2, p0, Lcfn;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcfn;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleResultObject;->objectLists:Ljava/util/List;

    .line 33
    iget-object v2, p0, Lcfn;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfm;

    .line 34
    .local v0, "model":Lcfm;
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;-><init>()V

    .line 35
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleResultObject;->objectLists:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;->fromIdl(Lcfm;)Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
