.class public Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;
.super Ljava/lang/Object;
.source "MessageObjectList.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public groupMsgModelList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;",
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

.field public nextCursor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public totalMsgCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Leoq;)Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;
    .locals 3
    .param p0, "model"    # Leoq;

    .prologue
    const/4 v2, 0x0

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 49
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;-><init>()V

    .line 50
    .local v0, "object":Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;
    iget-object v1, p0, Leoq;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->fromIDLModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;->msgList:Ljava/util/List;

    .line 51
    iget-object v1, p0, Leoq;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->fromIDLModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;->groupMsgModelList:Ljava/util/List;

    .line 52
    iget-object v1, p0, Leoq;->c:Ljava/lang/Integer;

    .line 1033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 52
    iput v1, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;->totalMsgCount:I

    .line 53
    iget-object v1, p0, Leoq;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;->nextCursor:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Leoq;->e:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 54
    iput-boolean v1, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;->hasMore:Z

    .line 55
    iget-object v1, p0, Leoq;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;->logMap:Ljava/lang/String;

    goto :goto_0
.end method
