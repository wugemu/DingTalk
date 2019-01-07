.class public Lcom/alibaba/android/search/model/idl/objects/MessageObject;
.super Ljava/lang/Object;
.source "MessageObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public content:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public transient contentType:I

.field public messageId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public senderUid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public timeStamp:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lepb;)Lcom/alibaba/android/search/model/idl/objects/MessageObject;
    .locals 6
    .param p0, "model"    # Lepb;

    .prologue
    const-wide/16 v4, 0x0

    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/MessageObject;-><init>()V

    .line 56
    .local v0, "object":Lcom/alibaba/android/search/model/idl/objects/MessageObject;
    iget-object v1, p0, Lepb;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->messageId:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lepb;->b:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 57
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->senderUid:J

    .line 58
    iget-object v1, p0, Lepb;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->cid:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lepb;->d:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 59
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->timeStamp:J

    .line 60
    iget-object v1, p0, Lepb;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->content:Ljava/lang/String;

    goto :goto_0
.end method

.method public static fromIDLModelList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lepb;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/MessageObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Lepb;>;"
    if-nez p0, :cond_1

    .line 69
    const/4 v1, 0x0

    .line 80
    :cond_0
    return-object v1

    .line 72
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v1, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/MessageObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepb;

    .line 74
    .local v0, "model":Lepb;
    if-eqz v0, :cond_2

    .line 77
    invoke-static {v0}, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->fromIDLModel(Lepb;)Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
