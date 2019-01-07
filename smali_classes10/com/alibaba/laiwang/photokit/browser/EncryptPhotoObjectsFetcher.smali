.class public interface abstract Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;
.super Ljava/lang/Object;
.source "EncryptPhotoObjectsFetcher.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract cancelGet(Lcom/alibaba/wukong/im/Message;)V
.end method

.method public abstract fetchPhotoObjects(Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getPhotoObject(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
.end method

.method public abstract getPhotoUrl(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
