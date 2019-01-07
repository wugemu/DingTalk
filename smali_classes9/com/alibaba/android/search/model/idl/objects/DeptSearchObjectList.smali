.class public Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;
.super Ljava/lang/Object;
.source "DeptSearchObjectList.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public deptList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;",
            ">;"
        }
    .end annotation
.end field

.field public hasMore:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public logMap:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nextCursor:Ljava/lang/String;
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
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Leok;)Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;
    .locals 6
    .param p0, "model"    # Leok;

    .prologue
    const/4 v5, 0x0

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 65
    :goto_0
    return-object v1

    .line 54
    :cond_0
    new-instance v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;

    invoke-direct {v1}, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;-><init>()V

    .line 55
    .local v1, "object":Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;
    iget-object v2, p0, Leok;->a:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Leok;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;->deptList:Ljava/util/List;

    .line 57
    iget-object v2, p0, Leok;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leoj;

    .line 58
    .local v0, "deptSearchModel":Leoj;
    iget-object v3, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;->deptList:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->fromIDLModel(Leoj;)Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61
    .end local v0    # "deptSearchModel":Leoj;
    :cond_1
    iget-object v2, p0, Leok;->b:Ljava/lang/Integer;

    .line 1033
    invoke-static {v2, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 61
    iput v2, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;->totalCount:I

    .line 62
    iget-object v2, p0, Leok;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;->nextCursor:Ljava/lang/String;

    .line 63
    iget-object v2, p0, Leok;->d:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v2, v5}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 63
    iput-boolean v2, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;->hasMore:Z

    .line 64
    iget-object v2, p0, Leok;->e:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;->logMap:Ljava/lang/String;

    goto :goto_0
.end method
