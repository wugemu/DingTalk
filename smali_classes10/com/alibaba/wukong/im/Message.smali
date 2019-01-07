.class public interface abstract Lcom/alibaba/wukong/im/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/im/Message$ReadStatus;,
        Lcom/alibaba/wukong/im/Message$MessageType;,
        Lcom/alibaba/wukong/im/Message$MessageStatus;,
        Lcom/alibaba/wukong/im/Message$CreatorType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract allReceiversRead()Z
.end method

.method public abstract atOpenIdExList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/OpenIdExObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract atOpenIds()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract atStatusObjects()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/AtMeStatusObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract canRecall()Z
.end method

.method public abstract compareOffset(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Lcom/alibaba/wukong/im/Message$CreatorType;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract conversation()Lcom/alibaba/wukong/im/Conversation;
.end method

.method public abstract createdAt()J
.end method

.method public abstract creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;
.end method

.method public abstract delete(Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract extension(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract extension()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAudioStreamController()Lcom/alibaba/wukong/im/AudioStreamController;
.end method

.method public abstract getOffsetMessage(ILcom/alibaba/wukong/im/Message$CreatorType;ZLcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/wukong/im/Message$CreatorType;",
            "Z",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUploadController()Lifu;
.end method

.method public abstract iHaveRead()Z
.end method

.method public abstract isAt()Z
.end method

.method public abstract isAtAll()Z
.end method

.method public abstract isDecrypted()Z
.end method

.method public abstract isRead()Z
.end method

.method public abstract isView()Z
.end method

.method public abstract lastUpdateUnreadCount()J
.end method

.method public abstract localExtras()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract localId()Ljava/lang/String;
.end method

.method public abstract messageContent()Lcom/alibaba/wukong/im/MessageContent;
.end method

.method public abstract messageId()J
.end method

.method public abstract messageReceivers(Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/MessageReceiver;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract messageType()Lcom/alibaba/wukong/im/Message$MessageType;
.end method

.method public abstract passSendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract passSendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/SendNameAppender;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract privateExtension(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract privateTag()J
.end method

.method public abstract read()V
.end method

.method public abstract read(Z)V
.end method

.method public abstract recallMessage(Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract recallStatus()I
.end method

.method public abstract receiverCount()I
.end method

.method public abstract receiverUids()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract resetEncryptStatusAndContent(Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendEncryptVideo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/VideoCompress;",
            "Lcom/alibaba/wukong/im/Uploader;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendEncryptVideo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/VideoCompress;",
            "Lcom/alibaba/wukong/im/Uploader;",
            "Lcom/alibaba/wukong/im/SendNameAppender;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendProgress()I
.end method

.method public abstract sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/SendNameAppender;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/Uploader;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/Uploader;",
            "Lcom/alibaba/wukong/im/SendNameAppender;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendToLocal(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendToLocal(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Z",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendToLocalAtTime(Lcom/alibaba/wukong/im/Conversation;JLcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendToLocalAtTime(Lcom/alibaba/wukong/im/Conversation;JZLcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "JZ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendToVideo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/VideoCompress;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendToVideo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/VideoCompress;",
            "Lcom/alibaba/wukong/im/SendNameAppender;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract senderId()J
.end method

.method public abstract senderVersion()J
.end method

.method public abstract shieldMessage(Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract shieldStatus()I
.end method

.method public abstract status()Lcom/alibaba/wukong/im/Message$MessageStatus;
.end method

.method public abstract tag()J
.end method

.method public abstract translateVoice(Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract tryToDecryptSync()Z
.end method

.method public abstract tryToDecryptSync(Z)Z
.end method

.method public abstract unReadCount()I
.end method

.method public abstract unreadMembers(Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/MessageReceiver;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract updateExtension(Ljava/util/Map;)V
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

.method public abstract updateLocalAtStatus(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/AtMeStatusObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateLocalExtension(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateLocalExtras(Ljava/util/Map;)V
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

.method public abstract updateLocalExtrasByKeys(Ljava/util/Map;)V
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

.method public abstract updateLocalExtrasByKeys(Ljava/util/Map;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract updateLocalRecallStatus(I)V
.end method

.method public abstract updateLocalShieldStatus(I)V
.end method

.method public abstract updatePrivateExtension(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updatePrivateExtension(Ljava/util/Map;)V
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

.method public abstract updatePrivateTag(J)V
.end method

.method public abstract viewMessage()V
.end method
