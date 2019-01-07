.class public interface abstract Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;
.super Ljava/lang/Object;
.source "MessageContent.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$EncryptContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/MessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EncryptCommonVideoContent"
.end annotation


# virtual methods
.method public abstract duration()J
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract picUrl()Ljava/lang/String;
.end method
