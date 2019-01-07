.class public interface abstract Lorg/webrtc/ali/VideoFrame$TextureBuffer;
.super Ljava/lang/Object;
.source "VideoFrame.java"

# interfaces
.implements Lorg/webrtc/ali/VideoFrame$Buffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/VideoFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TextureBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;
    }
.end annotation


# virtual methods
.method public abstract getTextureId()I
.end method

.method public abstract getType()Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;
.end method
