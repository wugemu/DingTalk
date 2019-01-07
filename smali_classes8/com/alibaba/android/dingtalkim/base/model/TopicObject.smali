.class public Lcom/alibaba/android/dingtalkim/base/model/TopicObject;
.super Ljava/lang/Object;
.source "TopicObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2a09e781f960f95cL


# instance fields
.field public desc:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public rank:J

.field public sourceId:Ljava/lang/String;

.field public sourceType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Ldcm;)Lcom/alibaba/android/dingtalkim/base/model/TopicObject;
    .locals 4
    .param p0, "model"    # Ldcm;

    .prologue
    .line 25
    if-eqz p0, :cond_0

    .line 26
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/TopicObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/TopicObject;-><init>()V

    .line 27
    .local v0, "object":Lcom/alibaba/android/dingtalkim/base/model/TopicObject;
    iget-object v1, p0, Ldcm;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/TopicObject;->icon:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Ldcm;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/TopicObject;->name:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Ldcm;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/TopicObject;->desc:Ljava/lang/String;

    .line 30
    iget-object v1, p0, Ldcm;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/TopicObject;->sourceId:Ljava/lang/String;

    .line 31
    iget-object v1, p0, Ldcm;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/TopicObject;->sourceType:Ljava/lang/String;

    .line 32
    iget-object v1, p0, Ldcm;->f:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 32
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/base/model/TopicObject;->rank:J

    .line 35
    .end local v0    # "object":Lcom/alibaba/android/dingtalkim/base/model/TopicObject;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromListIdl(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldcm;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/TopicObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Ldcm;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/TopicObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcm;

    .line 42
    .local v0, "model":Ldcm;
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/base/model/TopicObject;->fromIdl(Ldcm;)Lcom/alibaba/android/dingtalkim/base/model/TopicObject;

    move-result-object v1

    .line 43
    .local v1, "object":Lcom/alibaba/android/dingtalkim/base/model/TopicObject;
    if-eqz v1, :cond_0

    .line 44
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    .end local v0    # "model":Ldcm;
    .end local v1    # "object":Lcom/alibaba/android/dingtalkim/base/model/TopicObject;
    .end local v2    # "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/TopicObject;>;"
    :cond_1
    const/4 v2, 0x0

    :cond_2
    return-object v2
.end method
