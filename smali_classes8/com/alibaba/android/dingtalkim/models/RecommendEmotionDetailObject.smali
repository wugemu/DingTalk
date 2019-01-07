.class public Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;
.super Ljava/lang/Object;
.source "RecommendEmotionDetailObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x74c665dc5755146dL


# instance fields
.field public mediaIds:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mediaIds"
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

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Ldug;)Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;
    .locals 2
    .param p0, "model"    # Ldug;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 34
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;-><init>()V

    .line 35
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;
    iget-object v1, p0, Ldug;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;->name:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Ldug;->b:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;->mediaIds:Ljava/util/List;

    goto :goto_0
.end method

.method public static fromIdlList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldug;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Ldug;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 42
    :cond_0
    const/4 v2, 0x0

    .line 51
    :cond_1
    return-object v2

    .line 44
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldug;

    .line 46
    .local v0, "model":Ldug;
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;->fromIdl(Ldug;)Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;

    move-result-object v1

    .line 47
    .local v1, "object":Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;
    if-eqz v1, :cond_3

    .line 48
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public filterEmptyAndTrim()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 63
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;->mediaIds:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;->mediaIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 64
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;->mediaIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 65
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v2, "resultMediaIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    .local v1, "mediaId":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 71
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    .end local v1    # "mediaId":Ljava/lang/String;
    :cond_2
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;->mediaIds:Ljava/util/List;

    .line 77
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "resultMediaIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method public isValid()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;->mediaIds:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;->mediaIds:Ljava/util/List;

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
