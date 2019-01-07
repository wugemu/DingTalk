.class public final Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;
.super Ljava/lang/Object;
.source "HotSearchWordObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4bc7234ec4e5c689L


# instance fields
.field public authMediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "authMediaId"
    .end annotation
.end field

.field public mediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mediaId"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "name"
    .end annotation
.end field

.field public wordId:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "wordId"
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

.method public static fromIdl(Ldtt;)Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;
    .locals 4
    .param p0, "model"    # Ldtt;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;-><init>()V

    .line 34
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;
    iget-object v1, p0, Ldtt;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;->name:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Ldtt;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;->authMediaId:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Ldtt;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;->mediaId:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Ldtt;->d:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 37
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;->wordId:J

    goto :goto_0
.end method

.method public static fromIdlList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldtt;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Ldtt;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 52
    :cond_1
    return-object v2

    .line 45
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldtt;

    .line 47
    .local v0, "model":Ldtt;
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;->fromIdl(Ldtt;)Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;

    move-result-object v1

    .line 48
    .local v1, "object":Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;
    if-eqz v1, :cond_3

    .line 49
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
