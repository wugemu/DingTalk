.class public interface abstract Lcom/alipay/mobile/security/faceauth/model/RecordService;
.super Ljava/lang/Object;
.source "RecordService.java"


# virtual methods
.method public abstract getUniqueID()Ljava/lang/String;
.end method

.method public abstract setExtProperty(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setUniqueID(Ljava/lang/String;)V
.end method

.method public abstract write(I)V
.end method

.method public abstract write(ILjava/lang/String;)V
.end method

.method public abstract write(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract write(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
