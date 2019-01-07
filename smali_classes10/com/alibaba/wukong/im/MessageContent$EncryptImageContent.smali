.class public interface abstract Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
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
    name = "EncryptImageContent"
.end annotation


# virtual methods
.method public abstract getOrientation()I
.end method

.method public abstract getPicHeight()I
.end method

.method public abstract getPicWidth()I
.end method

.method public abstract getThumbId()Ljava/lang/String;
.end method

.method public abstract picType()I
.end method

.method public abstract setThumbId(Ljava/lang/String;)V
.end method
