.class public interface abstract Lcom/alipay/mobile/security/faceauth/model/strategy/ActionStrategy;
.super Ljava/lang/Object;
.source "ActionStrategy.java"


# virtual methods
.method public abstract getDetectionTypes(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/megvii/livenessdetection/Detector$DetectionType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMotionCount()I
.end method

.method public abstract getRandom(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
