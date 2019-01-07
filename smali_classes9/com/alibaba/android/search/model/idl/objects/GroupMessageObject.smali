.class public Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;
.super Ljava/lang/Object;
.source "GroupMessageObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public content:Ljava/lang/String;

.field public mediaIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/SearchUserIconObject;",
            ">;"
        }
    .end annotation
.end field

.field public msgCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public msgList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Leon;)Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;
    .locals 3
    .param p0, "model"    # Leon;

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    .line 56
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;-><init>()V

    .line 58
    .local v0, "object":Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;
    iget-object v1, p0, Leon;->b:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 58
    iput v1, v0, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->msgCount:I

    .line 60
    iget-object v1, p0, Leon;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->fromIDLModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->msgList:Ljava/util/List;

    .line 61
    iget-object v1, p0, Leon;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->cid:Ljava/lang/String;

    goto :goto_0
.end method

.method public static fromIDLModelList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Leon;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Leon;>;"
    if-nez p0, :cond_1

    .line 68
    const/4 v1, 0x0

    .line 79
    :cond_0
    return-object v1

    .line 71
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v1, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leon;

    .line 73
    .local v0, "model":Leon;
    if-eqz v0, :cond_2

    .line 76
    invoke-static {v0}, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->fromIDLModel(Leon;)Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
