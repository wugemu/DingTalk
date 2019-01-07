.class public Lcom/alibaba/android/dingtalkim/models/TopicResultObject;
.super Ljava/lang/Object;
.source "TopicResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x668deb319edbdc09L


# instance fields
.field public topicDataObjectList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "topicDataObjectList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/TopicDataObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Ldut;)Lcom/alibaba/android/dingtalkim/models/TopicResultObject;
    .locals 2
    .param p0, "model"    # Ldut;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;-><init>()V

    .line 30
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/TopicResultObject;
    iget-object v1, p0, Ldut;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->fromIdlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public copy()Lcom/alibaba/android/dingtalkim/models/TopicResultObject;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 35
    new-instance v1, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;-><init>()V

    .line 36
    .local v1, "object":Lcom/alibaba/android/dingtalkim/models/TopicResultObject;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 37
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    .line 38
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    .line 39
    .local v2, "topicDataObject":Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->copy()Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    move-result-object v0

    .line 41
    .local v0, "copiedTopicData":Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    if-eqz v0, :cond_0

    .line 42
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    .end local v0    # "copiedTopicData":Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    .end local v2    # "topicDataObject":Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    :cond_1
    return-object v1
.end method

.method public filterNotOnlineOrEmptyTopic()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 54
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 55
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 56
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkim/models/TopicDataObject;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    .line 58
    .local v1, "next":Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->isOnline()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    .line 59
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 65
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkim/models/TopicDataObject;>;"
    .end local v1    # "next":Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    :cond_2
    return-void
.end method

.method public isValid()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
