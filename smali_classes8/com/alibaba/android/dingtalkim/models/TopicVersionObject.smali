.class public Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;
.super Ljava/lang/Object;
.source "TopicVersionObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6b058873b641a26eL


# instance fields
.field public topicId:J

.field public version:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lduu;)Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;
    .locals 6
    .param p0, "model"    # Lduu;

    .prologue
    const-wide/16 v4, 0x0

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;-><init>()V

    .line 29
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;
    iget-object v1, p0, Lduu;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 29
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;->topicId:J

    .line 30
    iget-object v1, p0, Lduu;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 30
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;->version:J

    goto :goto_0
.end method

.method public static fromIdlList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lduu;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Lduu;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 45
    :cond_1
    return-object v2

    .line 38
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lduu;

    .line 40
    .local v0, "model":Lduu;
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;->fromIdl(Lduu;)Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;

    move-result-object v1

    .line 41
    .local v1, "object":Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;
    if-eqz v1, :cond_3

    .line 42
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static fromTopicDataObject(Lcom/alibaba/android/dingtalkim/models/TopicDataObject;)Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;
    .locals 4
    .param p0, "topicDataObject"    # Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 76
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;-><init>()V

    .line 77
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;->topicId:J

    .line 78
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->version:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;->version:J

    goto :goto_0
.end method

.method public static fromTopicDataObjectList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/TopicDataObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "topicDataObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/TopicDataObject;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    :cond_0
    const/4 v2, 0x0

    .line 93
    :cond_1
    return-object v2

    .line 86
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v2, "versionObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    .line 88
    .local v0, "dataObject":Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;->fromTopicDataObject(Lcom/alibaba/android/dingtalkim/models/TopicDataObject;)Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;

    move-result-object v1

    .line 89
    .local v1, "versionObject":Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;
    if-eqz v1, :cond_3

    .line 90
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static toIdl(Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;)Lduu;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;

    .prologue
    .line 49
    if-nez p0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    .line 52
    :cond_0
    new-instance v0, Lduu;

    invoke-direct {v0}, Lduu;-><init>()V

    .line 53
    .local v0, "model":Lduu;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;->topicId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lduu;->a:Ljava/lang/Long;

    .line 54
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;->version:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lduu;->b:Ljava/lang/Long;

    goto :goto_0
.end method

.method public static toIdlList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lduu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    :cond_0
    const/4 v1, 0x0

    .line 69
    :cond_1
    return-object v1

    .line 62
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v1, "modelList":Ljava/util/List;, "Ljava/util/List<Lduu;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;

    .line 64
    .local v2, "object":Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;
    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;->toIdl(Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;)Lduu;

    move-result-object v0

    .line 65
    .local v0, "model":Lduu;
    if-eqz v0, :cond_3

    .line 66
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
