.class public interface abstract Lcom/alibaba/wukong/im/VideoCompress;
.super Ljava/lang/Object;
.source "VideoCompress.java"


# virtual methods
.method public abstract compress(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract compressEncryptVideo(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;",
            ">;)V"
        }
    .end annotation
.end method
