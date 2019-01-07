.class public interface abstract Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
.super Ljava/lang/Object;
.source "MessageContent.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$FileContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/MessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CommonVideoContent"
.end annotation


# virtual methods
.method public abstract duration()J
.end method

.method public abstract getHeight()I
.end method

.method public abstract getPicAuthCode()Ljava/lang/String;
.end method

.method public abstract getPicAuthUrl()Ljava/lang/String;
.end method

.method public abstract getPicHeight()I
.end method

.method public abstract getPicWidth()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract picUrl()Ljava/lang/String;
.end method

.method public abstract setPicAuthCode(Ljava/lang/String;)V
.end method

.method public abstract setPicAuthUrl(Ljava/lang/String;)V
.end method

.method public abstract setPicUrl(Ljava/lang/String;)V
.end method
