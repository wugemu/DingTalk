.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;
.super Ljava/lang/Object;
.source "OrgApplyObjectList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5de92dd26e04eb4dL


# instance fields
.field public hasMore:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nextCursor:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public values:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcek;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;
    .locals 8
    .param p0, "model"    # Lcek;

    .prologue
    .line 22
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;-><init>()V

    .line 23
    .local v0, "listObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v3, "objectValues":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;>;"
    iget-object v4, p0, Lcek;->a:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 25
    iget-object v4, p0, Lcek;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcej;

    .line 26
    .local v1, "m":Lcej;
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;-><init>()V

    .line 27
    .local v2, "o":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->fromIDLModel(Lcej;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    .end local v1    # "m":Lcej;
    .end local v2    # "o":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    :cond_0
    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;->values:Ljava/util/List;

    .line 31
    iget-object v4, p0, Lcek;->b:Ljava/lang/Long;

    .line 1044
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 31
    iput-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;->nextCursor:J

    .line 32
    iget-object v4, p0, Lcek;->c:Ljava/lang/Boolean;

    .line 2022
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v4

    .line 32
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;->hasMore:Z

    .line 33
    return-object v0
.end method
