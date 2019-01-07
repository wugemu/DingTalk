.class public interface abstract Lcom/alibaba/wukong/im/MessageService;
.super Ljava/lang/Object;
.source "MessageService.java"


# virtual methods
.method public abstract addMessageChangeListener(Lcom/alibaba/wukong/im/MessageChangeListener;)V
.end method

.method public abstract addMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V
.end method

.method public abstract clearMemoryCache()V
.end method

.method public abstract combineForward(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract combineForward(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/ContentModel;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract forwardMessages(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract forwardWithTransformBatch(Ljava/util/List;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract listAtMeMessages(JILcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract listMessageByIds(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract parseMessageContent(ILjava/lang/String;)Lcom/alibaba/wukong/im/MessageContent;
.end method

.method public abstract querySecretMsgReadStatus(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public varargs abstract removeLocalMessages(Lcom/alibaba/wukong/Callback;Ljava/lang/String;[Ljava/lang/Long;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeMessageChangeListener(Lcom/alibaba/wukong/im/MessageChangeListener;)V
.end method

.method public abstract removeMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V
.end method

.method public varargs abstract removeMessages(Lcom/alibaba/wukong/Callback;Ljava/lang/String;[Ljava/lang/Long;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setMessageEncryptHelper(Lcom/alibaba/wukong/im/EncryptHelper;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setMessageProxy(Lcom/alibaba/wukong/im/MessageProxy;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract updateMsgAllRead(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
