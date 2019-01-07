.class public Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;
.super Ljava/lang/Object;
.source "RecommendEmotionObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x417d233372695a57L


# instance fields
.field public recommendEmotionDetails:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "recommendEmotionDetails"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;",
            ">;"
        }
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
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lduh;)Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;
    .locals 4
    .param p0, "model"    # Lduh;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 30
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;-><init>()V

    .line 31
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;
    iget-object v1, p0, Lduh;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;->fromIdlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;->recommendEmotionDetails:Ljava/util/List;

    .line 32
    iget-object v1, p0, Lduh;->b:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 32
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;->version:J

    goto :goto_0
.end method
