.class public Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;
.super Ljava/lang/Object;
.source "DynamicDefaultEmotionObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1743c23924f52397L


# instance fields
.field public dynamicDefaultEmotionList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "dynamicDefaultEmotionList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/mgr/emotion/defaultemotion/DynamicDefaultEmotion;",
            ">;"
        }
    .end annotation
.end field

.field public packageAuthMediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "packageAuthMediaId"
    .end annotation
.end field

.field public packageMediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "authMediaId"
    .end annotation
.end field

.field public version:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "version"
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

.method public static fromIdl(Ldsx;)Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;
    .locals 6
    .param p0, "model"    # Ldsx;

    .prologue
    .line 33
    if-nez p0, :cond_1

    .line 34
    const/4 v2, 0x0

    .line 51
    :cond_0
    return-object v2

    .line 36
    :cond_1
    new-instance v2, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;-><init>()V

    .line 37
    .local v2, "object":Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;
    iget-object v3, p0, Ldsx;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->packageMediaId:Ljava/lang/String;

    .line 38
    iget-object v3, p0, Ldsx;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->packageAuthMediaId:Ljava/lang/String;

    .line 39
    iget-object v3, p0, Ldsx;->b:Ljava/lang/Long;

    .line 1044
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 39
    iput-wide v4, v2, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->version:J

    .line 40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->dynamicDefaultEmotionList:Ljava/util/List;

    .line 41
    iget-object v3, p0, Ldsx;->a:Ljava/util/List;

    invoke-static {v3}, Leax;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    iget-object v3, p0, Ldsx;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldsw;

    .line 43
    .local v1, "emotionModel":Ldsw;
    new-instance v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/defaultemotion/DynamicDefaultEmotion;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/defaultemotion/DynamicDefaultEmotion;-><init>()V

    .line 44
    .local v0, "defaultEmotion":Lcom/alibaba/android/dingtalkim/mgr/emotion/defaultemotion/DynamicDefaultEmotion;
    iget-object v4, v1, Ldsw;->a:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/defaultemotion/DynamicDefaultEmotion;->emotionId:Ljava/lang/String;

    .line 45
    iget-object v4, v1, Ldsw;->b:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/defaultemotion/DynamicDefaultEmotion;->name:Ljava/lang/String;

    .line 46
    iget-object v4, v1, Ldsw;->c:Ljava/util/Map;

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/defaultemotion/DynamicDefaultEmotion;->nameMap:Ljava/util/Map;

    .line 47
    iget-object v4, v1, Ldsw;->e:Ljava/lang/Integer;

    .line 2033
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/defaultemotion/DynamicDefaultEmotion;->showType:Ljava/lang/Integer;

    .line 48
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->dynamicDefaultEmotionList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public copy()Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 55
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;-><init>()V

    .line 56
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->packageMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->packageMediaId:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->packageAuthMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->packageAuthMediaId:Ljava/lang/String;

    .line 58
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->version:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->version:J

    .line 59
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->dynamicDefaultEmotionList:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->dynamicDefaultEmotionList:Ljava/util/List;

    .line 60
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    if-ne p0, p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    instance-of v3, p1, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;

    if-nez v3, :cond_2

    move v1, v2

    .line 67
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 70
    check-cast v0, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;

    .line 72
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->packageAuthMediaId:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->packageAuthMediaId:Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->packageAuthMediaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->packageAuthMediaId:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->packageAuthMediaId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->packageAuthMediaId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
