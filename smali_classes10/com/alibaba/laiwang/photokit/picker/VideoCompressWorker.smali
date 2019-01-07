.class public interface abstract Lcom/alibaba/laiwang/photokit/picker/VideoCompressWorker;
.super Ljava/lang/Object;
.source "VideoCompressWorker.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract compress(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDestroy(Landroid/app/Activity;)V
.end method
