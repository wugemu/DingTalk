.class public interface abstract Lcom/alibaba/android/dingtalkim/models/idl/service/EmotionPackageService;
.super Ljava/lang/Object;
.source "EmotionPackageService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract getEmotionPackageDetail(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageDetailModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getEmotionPackageList(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageList;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getEmotionPackagePurchaseHistory(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract purchaseEmotionPackage(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
