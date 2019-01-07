.class public interface abstract Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;
.super Ljava/lang/Object;
.source "ImgResIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract addCustomEmotion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addEmotion(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/idl/CustomEmotionAddResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addImAuthEmotion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/idl/CustomEmotionAddResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addLoginAuthEmotion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/idl/CustomEmotionAddResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCelebrateListModel(JLiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Liyv",
            "<",
            "Ldsn;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDynamicEmotionById(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ldsy;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getEmotionByVersions(Ldte;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldte;",
            "Liyv",
            "<",
            "Ldtd;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getEmotionIcon(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ldtb;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getEmotions(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/idl/CustomEmotionPackageModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getHotDynamicEmotions(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Ldsy;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getLikeEmotions(JLiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Liyv",
            "<",
            "Ldty;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getRecommendEmotionByVersion(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lduh;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getTopicEmotionDetail(JJLiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Liyv",
            "<",
            "Ldus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getTopicEmotions(JJILiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Liyv",
            "<",
            "Ldur;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeCustomEmotions(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Liyv",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract searchDynamicEmotions(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Ldsy;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract searchDynamicEmotionsWithCursor(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ldsz;",
            ">;)V"
        }
    .end annotation
.end method
