.class public interface abstract Lcom/alibaba/wukong/im/MessageContent;
.super Ljava/lang/Object;
.source "MessageContent.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/im/MessageContent$DingCardContent;,
        Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;,
        Lcom/alibaba/wukong/im/MessageContent$CommentContent;,
        Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;,
        Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconContent;,
        Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;,
        Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;,
        Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;,
        Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;,
        Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;,
        Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;,
        Lcom/alibaba/wukong/im/MessageContent$EncryptContent;,
        Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;,
        Lcom/alibaba/wukong/im/MessageContent$GeoContent;,
        Lcom/alibaba/wukong/im/MessageContent$VideoContent;,
        Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;,
        Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;,
        Lcom/alibaba/wukong/im/MessageContent$LinkedContent;,
        Lcom/alibaba/wukong/im/MessageContent$FileContent;,
        Lcom/alibaba/wukong/im/MessageContent$AudioContent;,
        Lcom/alibaba/wukong/im/MessageContent$ImageContent;,
        Lcom/alibaba/wukong/im/MessageContent$MediaContent;,
        Lcom/alibaba/wukong/im/MessageContent$TextContent;,
        Lcom/alibaba/wukong/im/MessageContent$MessageTemplate;,
        Lcom/alibaba/wukong/im/MessageContent$FileType;,
        Lcom/alibaba/wukong/im/MessageContent$MessageContentType;
    }
.end annotation


# virtual methods
.method public abstract cloneContent()Lcom/alibaba/wukong/im/MessageContent;
.end method

.method public abstract type()I
.end method
