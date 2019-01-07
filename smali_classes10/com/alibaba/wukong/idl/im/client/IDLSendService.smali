.class public interface abstract Lcom/alibaba/wukong/idl/im/client/IDLSendService;
.super Ljava/lang/Object;
.source "IDLSendService.java"

# interfaces
.implements Lizl;


# virtual methods
.method public abstract combineForward(Lcom/alibaba/wukong/idl/im/models/CombineForwardModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/idl/im/models/CombineForwardModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/MessageModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract forward(Lcom/alibaba/wukong/idl/im/models/ForwardMessageModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/idl/im/models/ForwardMessageModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/SendResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract forwardBatch(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/ForwardMessageModel;",
            ">;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/SendResultModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract forwardWithTransform(Lcom/alibaba/wukong/idl/im/models/ForwardMessageModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/idl/im/models/ForwardMessageModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/MessageModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract forwardWithTransformBatch(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/ForwardMessageModel;",
            ">;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/MessageModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract send(Lcom/alibaba/wukong/idl/im/models/SendMessageModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/idl/im/models/SendMessageModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/SendResultModel;",
            ">;)V"
        }
    .end annotation
.end method
