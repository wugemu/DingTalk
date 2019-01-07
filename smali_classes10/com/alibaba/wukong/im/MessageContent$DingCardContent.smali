.class public interface abstract Lcom/alibaba/wukong/im/MessageContent$DingCardContent;
.super Ljava/lang/Object;
.source "MessageContent.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/MessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DingCardContent"
.end annotation


# virtual methods
.method public abstract bizType()Ljava/lang/String;
.end method

.method public abstract cardVersion()Ljava/lang/String;
.end method

.method public abstract content()Ljava/lang/String;
.end method

.method public abstract dingId()J
.end method

.method public abstract dingSubBizType()Ljava/lang/String;
.end method

.method public abstract endTime()J
.end method

.method public abstract getAudioContent()Ljava/lang/Object;
.end method

.method public abstract getDingAttachments()Ljava/lang/Object;
.end method

.method public abstract getDingAttachmentsStr()Ljava/lang/String;
.end method

.method public abstract getExecutorUids()Ljava/util/List;
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

.method public abstract location()Ljava/lang/String;
.end method

.method public abstract msgType()Ljava/lang/String;
.end method

.method public abstract senderId()Ljava/lang/String;
.end method

.method public abstract setAudioContent(Ljava/lang/Object;)V
.end method

.method public abstract setDingAttachments(Ljava/lang/Object;)V
.end method

.method public abstract startTime()J
.end method

.method public abstract toMap()Ljava/util/Map;
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
