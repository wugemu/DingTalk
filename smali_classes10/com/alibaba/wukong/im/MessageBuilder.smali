.class public interface abstract Lcom/alibaba/wukong/im/MessageBuilder;
.super Ljava/lang/Object;
.source "MessageBuilder.java"


# virtual methods
.method public abstract appendAtOpenIdExList(Lcom/alibaba/wukong/im/Message;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/OpenIdExObject;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract appendAtOpenIdInfo(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract appendAttributes(Lcom/alibaba/wukong/im/Message;I)Lcom/alibaba/wukong/im/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract appendAttributes(Lcom/alibaba/wukong/im/Message;JLjava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/XPNInfo;)Lcom/alibaba/wukong/im/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract appendLocalExtra(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract appendSenderName(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildAudioMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildAudioMessage(Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract buildAudioMessage(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract buildAudioMessage(Ljava/lang/String;Z)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildCommonVideoContent(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;)Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
.end method

.method public abstract buildCommonVideoMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildCommonVideoMessage(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildCustomMessage(ILjava/util/List;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;"
        }
    .end annotation
.end method

.method public abstract buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;)",
            "Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;"
        }
    .end annotation
.end method

.method public abstract buildEncryptAudioMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract buildEncryptCommonVideoContent(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;)Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;
.end method

.method public abstract buildEncryptCommonVideoMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildEncryptImageContent(Lcom/alibaba/wukong/im/MessageContent;IILjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/MessageContent;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;"
        }
    .end annotation
.end method

.method public abstract buildEncryptImageMessage(IIIILjava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract buildEncryptImageMessage(IIIILjava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract buildEncryptImageMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IIII)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildEncryptImageMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildEncryptMessage(ILjava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract buildEncryptMessage(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract buildEncryptMessageContent(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;)Lcom/alibaba/wukong/im/MessageContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/MessageContent;"
        }
    .end annotation
.end method

.method public abstract buildEncryptVideoMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;I)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildFileMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildGeoMessage(Ljava/lang/String;DDLjava/lang/String;)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildImageMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildImageMessage(Ljava/lang/String;Ljava/lang/String;JI)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildImageMessage(Ljava/lang/String;Ljava/lang/String;JII)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildImageMessage(Ljava/lang/String;Ljava/lang/String;JIILjava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract buildImageMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract buildLinkedMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildLinkedMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract buildLinkedNonMenuMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildLinkedNonMenuMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildRobotMarkdownExMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent$BtnDes;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract buildRobotMarkdownExMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent$BtnDes;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract buildRobotMarkdownIconExMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract buildRobotMarkdownMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildRobotMarkdownMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract buildRobotMarkdownMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract buildTextMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildTextMessage(Ljava/lang/String;J)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract buildTextMessage(Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract buildVideoMessage(Ljava/lang/String;JLjava/lang/String;JIILjava/lang/String;JLjava/lang/String;)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract buildVideoMessage(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
.end method

.method public abstract setMessageExcludeReceivers(Lcom/alibaba/wukong/im/Message;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method

.method public abstract setMessageReceivers(Lcom/alibaba/wukong/im/Message;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation
.end method
