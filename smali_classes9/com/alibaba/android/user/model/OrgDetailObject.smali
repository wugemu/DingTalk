.class public Lcom/alibaba/android/user/model/OrgDetailObject;
.super Ljava/lang/Object;
.source "OrgDetailObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x441e3bbf7fb837cbL


# instance fields
.field public members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;",
            ">;"
        }
    .end annotation
.end field

.field public orgInfoObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lfpd;)Lcom/alibaba/android/user/model/OrgDetailObject;
    .locals 5
    .param p0, "model"    # Lfpd;

    .prologue
    .line 40
    new-instance v2, Lcom/alibaba/android/user/model/OrgDetailObject;

    invoke-direct {v2}, Lcom/alibaba/android/user/model/OrgDetailObject;-><init>()V

    .line 41
    .local v2, "object":Lcom/alibaba/android/user/model/OrgDetailObject;
    if-eqz p0, :cond_1

    .line 42
    iget-object v3, p0, Lfpd;->a:Lcfi;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->fromIDLModel(Lcfi;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/user/model/OrgDetailObject;->orgInfoObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v1, "memberObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;>;"
    iget-object v3, p0, Lfpd;->b:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 45
    iget-object v3, p0, Lfpd;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfb;

    .line 46
    .local v0, "m":Lcfb;
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->fromIDLModel(Lcfb;)Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    .end local v0    # "m":Lcfb;
    :cond_0
    iput-object v1, v2, Lcom/alibaba/android/user/model/OrgDetailObject;->members:Ljava/util/List;

    .line 51
    .end local v1    # "memberObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;>;"
    :cond_1
    return-object v2
.end method
