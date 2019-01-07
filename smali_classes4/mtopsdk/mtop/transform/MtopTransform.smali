.class public interface abstract Lmtopsdk/mtop/transform/MtopTransform;
.super Ljava/lang/Object;
.source "MtopTransform.java"


# virtual methods
.method public abstract asyncTransform(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/MtopProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lmtopsdk/mtop/common/ApiID;"
        }
    .end annotation
.end method

.method public abstract convertNetworkRequest(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Llj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/MtopProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Llj;"
        }
    .end annotation
.end method

.method public abstract syncTransform(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Lmtopsdk/mtop/domain/MtopResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/MtopProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmtopsdk/mtop/domain/MtopResponse;"
        }
    .end annotation
.end method
