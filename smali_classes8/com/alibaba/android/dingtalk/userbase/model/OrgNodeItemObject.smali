.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
.super Ljava/lang/Object;
.source "OrgNodeItemObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5525ac3f41432633L


# instance fields
.field public count:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public fromSearchExtra:Ljava/io/Serializable;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hitField:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public masterNodeList:Ljava/util/List;
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

.field public nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public searchCallbackMode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public searchCredibility:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string/jumbo v0, "fuzzy"

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->searchCallbackMode:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public static fromIdl(Lcfc;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .locals 7
    .param p0, "model"    # Lcfc;

    .prologue
    const/4 v6, 0x0

    .line 45
    if-nez p0, :cond_1

    .line 46
    const/4 v2, 0x0

    .line 79
    :cond_0
    :goto_0
    return-object v2

    .line 48
    :cond_1
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;-><init>()V

    .line 49
    .local v2, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    iget-object v3, p0, Lcfc;->a:Ljava/lang/Integer;

    .line 1033
    invoke-static {v3, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 49
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->fromValue(I)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    .line 50
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;-><init>()V

    iget-object v4, p0, Lcfc;->b:Lcew;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->fromIDLModel(Lcew;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 51
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    iget-object v4, p0, Lcfc;->c:Lcen;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->fromIDLModel(Lcen;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    .line 53
    iget-object v3, p0, Lcfc;->d:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 54
    iget-object v3, p0, Lcfc;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfc;

    .line 55
    .local v0, "nodeItemModel":Lcfc;
    if-eqz v0, :cond_2

    .line 58
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;-><init>()V

    .line 59
    .local v1, "orgNodeItem":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    iget-object v4, v0, Lcfc;->a:Ljava/lang/Integer;

    .line 2033
    invoke-static {v4, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 59
    invoke-static {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->fromValue(I)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    .line 60
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;-><init>()V

    iget-object v5, v0, Lcfc;->b:Lcew;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->fromIDLModel(Lcew;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 61
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    iget-object v5, v0, Lcfc;->c:Lcen;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->fromIDLModel(Lcen;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 62
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    .line 63
    iget-object v4, v0, Lcfc;->f:Lcgk;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->fromIDLModel(Lcgk;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 64
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    .end local v0    # "nodeItemModel":Lcfc;
    .end local v1    # "orgNodeItem":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_3
    iget-object v3, p0, Lcfc;->e:Lcfe;

    if-eqz v3, :cond_4

    .line 68
    iget-object v3, p0, Lcfc;->e:Lcfe;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->fromIdl(Lcfe;)Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    .line 71
    :cond_4
    iget-object v3, p0, Lcfc;->f:Lcgk;

    if-eqz v3, :cond_5

    .line 72
    iget-object v3, p0, Lcfc;->f:Lcgk;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->fromIDLModel(Lcgk;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 74
    :cond_5
    iget-object v3, p0, Lcfc;->g:Ljava/lang/Integer;

    .line 3033
    invoke-static {v3, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 74
    iput v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->count:I

    .line 75
    iget-object v3, p0, Lcfc;->h:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->hitField:Ljava/lang/String;

    .line 76
    iget-object v3, p0, Lcfc;->i:Lcec;

    if-eqz v3, :cond_0

    .line 77
    iget-object v3, p0, Lcfc;->i:Lcec;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->fromIDLModel(Lcec;)Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    goto/16 :goto_0
.end method

.method public static fromIdl(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcfc;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "nodeItemModelList":Ljava/util/List;, "Ljava/util/List<Lcfc;>;"
    if-nez p0, :cond_1

    .line 85
    const/4 v1, 0x0

    .line 97
    :cond_0
    return-object v1

    .line 89
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "nodeItemObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfc;

    .line 91
    .local v0, "nodeItemModel":Lcfc;
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->fromIdl(Lcfc;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v2

    .line 92
    .local v2, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v2, :cond_2

    .line 93
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static toIdl(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcfc;
    .locals 6
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 101
    if-nez p0, :cond_1

    .line 102
    const/4 v1, 0x0

    .line 138
    :cond_0
    :goto_0
    return-object v1

    .line 104
    :cond_1
    new-instance v1, Lcfc;

    invoke-direct {v1}, Lcfc;-><init>()V

    .line 105
    .local v1, "orgNodeItemModel":Lcfc;
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->toValue(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcfc;->a:Ljava/lang/Integer;

    .line 106
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v3, :cond_2

    .line 107
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->toIDLModel()Lcen;

    move-result-object v3

    iput-object v3, v1, Lcfc;->c:Lcen;

    .line 109
    :cond_2
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;-><init>()V

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->toIDLFromObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)Lcew;

    move-result-object v3

    iput-object v3, v1, Lcfc;->b:Lcew;

    .line 110
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->toIdl(Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;)Lcfe;

    move-result-object v3

    iput-object v3, v1, Lcfc;->e:Lcfe;

    .line 111
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_3

    .line 112
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->toIDLModel()Lcgk;

    move-result-object v3

    iput-object v3, v1, Lcfc;->f:Lcgk;

    .line 114
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcfc;->d:Ljava/util/List;

    .line 115
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    if-eqz v3, :cond_7

    .line 116
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 117
    .local v2, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v2, :cond_4

    .line 120
    new-instance v0, Lcfc;

    invoke-direct {v0}, Lcfc;-><init>()V

    .line 121
    .local v0, "orgNodeItem":Lcfc;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->toValue(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcfc;->a:Ljava/lang/Integer;

    .line 122
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v4, :cond_5

    .line 123
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->toIDLModel()Lcen;

    move-result-object v4

    iput-object v4, v0, Lcfc;->c:Lcen;

    .line 125
    :cond_5
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;-><init>()V

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->toIDLFromObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)Lcew;

    move-result-object v4

    iput-object v4, v0, Lcfc;->b:Lcew;

    .line 126
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->toIdl(Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;)Lcfe;

    move-result-object v4

    iput-object v4, v0, Lcfc;->e:Lcfe;

    .line 127
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v4, :cond_6

    .line 128
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->toIDLModel()Lcgk;

    move-result-object v4

    iput-object v4, v0, Lcfc;->f:Lcgk;

    .line 130
    :cond_6
    iget-object v4, v1, Lcfc;->d:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 133
    .end local v0    # "orgNodeItem":Lcfc;
    .end local v2    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_7
    iget v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcfc;->g:Ljava/lang/Integer;

    .line 134
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->hitField:Ljava/lang/String;

    iput-object v3, v1, Lcfc;->h:Ljava/lang/String;

    .line 135
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    if-eqz v3, :cond_0

    .line 136
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;)Lcec;

    move-result-object v3

    iput-object v3, v1, Lcfc;->i:Lcec;

    goto/16 :goto_0
.end method
