.class public interface abstract Lcom/alibaba/wukong/im/MessageContent$ImageContent;
.super Ljava/lang/Object;
.source "MessageContent.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$MediaContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/MessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageContent"
.end annotation


# virtual methods
.method public abstract fileType()I
.end method

.method public abstract filename()Ljava/lang/String;
.end method

.method public abstract getData()[B
.end method

.method public abstract getHeight()I
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract picType()I
.end method
