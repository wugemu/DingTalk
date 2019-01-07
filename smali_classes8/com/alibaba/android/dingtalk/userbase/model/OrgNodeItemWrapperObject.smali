.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;
.super Ljava/lang/Object;
.source "OrgNodeItemWrapperObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x222ba91b3cb5c7d6L


# instance fields
.field public hasMore:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public logMap:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mOrgUnionObject:Lchn;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nextCursor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public offset:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgNodeItemObjectList:Ljava/util/List;
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

.field public realQueries:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public size:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public totalCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lcfd;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;
    .locals 7
    .param p0, "wrapperModel"    # Lcfd;

    .prologue
    const/4 v6, 0x0

    .line 28
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;-><init>()V

    .line 29
    .local v1, "orgNodeItemWrapperObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;
    if-eqz p0, :cond_3

    .line 30
    iget-object v2, p0, Lcfd;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 31
    iget-object v2, p0, Lcfd;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->totalCount:I

    .line 35
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    .line 36
    iget-object v2, p0, Lcfd;->d:Ljava/lang/Integer;

    .line 1033
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 36
    iput v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->size:I

    .line 37
    iget-object v2, p0, Lcfd;->c:Ljava/lang/Integer;

    .line 2033
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 37
    iput v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->offset:I

    .line 38
    iget-object v2, p0, Lcfd;->e:Ljava/lang/Long;

    .line 2044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 38
    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgId:J

    .line 40
    iget-object v2, p0, Lcfd;->a:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 41
    iget-object v2, p0, Lcfd;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfc;

    .line 42
    .local v0, "model":Lcfc;
    if-eqz v0, :cond_0

    .line 43
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    .line 44
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->fromIdl(Lcfc;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 33
    .end local v0    # "model":Lcfc;
    :cond_1
    iput v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->totalCount:I

    goto :goto_0

    .line 48
    :cond_2
    iget-object v2, p0, Lcfd;->f:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 48
    iput-boolean v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->hasMore:Z

    .line 49
    iget-object v2, p0, Lcfd;->g:Lcfe;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->fromIdl(Lcfe;)Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->mPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    .line 52
    iget-object v2, p0, Lcfd;->i:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->logMap:Ljava/lang/String;

    .line 53
    iget-object v2, p0, Lcfd;->j:Lcfg;

    invoke-static {v2}, Lchn;->a(Lcfg;)Lchn;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->mOrgUnionObject:Lchn;

    .line 55
    :cond_3
    return-object v1
.end method

.method public static fromIDLModelNoNodeIList(Lcfd;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;
    .locals 5
    .param p0, "wrapperModel"    # Lcfd;

    .prologue
    const/4 v4, 0x0

    .line 59
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;-><init>()V

    .line 60
    .local v0, "orgNodeItemWrapperObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;
    if-eqz p0, :cond_0

    .line 61
    iget-object v1, p0, Lcfd;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcfd;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->totalCount:I

    .line 66
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    .line 67
    iget-object v1, p0, Lcfd;->d:Ljava/lang/Integer;

    .line 3033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 67
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->size:I

    .line 68
    iget-object v1, p0, Lcfd;->c:Ljava/lang/Integer;

    .line 4033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 68
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->offset:I

    .line 69
    iget-object v1, p0, Lcfd;->e:Ljava/lang/Long;

    .line 4044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 69
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgId:J

    .line 71
    iget-object v1, p0, Lcfd;->f:Ljava/lang/Boolean;

    .line 5022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 71
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->hasMore:Z

    .line 72
    iget-object v1, p0, Lcfd;->g:Lcfe;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->fromIdl(Lcfe;)Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->mPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    .line 75
    iget-object v1, p0, Lcfd;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->logMap:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcfd;->j:Lcfg;

    invoke-static {v1}, Lchn;->a(Lcfg;)Lchn;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->mOrgUnionObject:Lchn;

    .line 79
    :cond_0
    return-object v0

    .line 64
    :cond_1
    iput v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->totalCount:I

    goto :goto_0
.end method
