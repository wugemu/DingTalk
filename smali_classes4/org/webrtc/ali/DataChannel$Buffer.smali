.class public Lorg/webrtc/ali/DataChannel$Buffer;
.super Ljava/lang/Object;
.source "DataChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/DataChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Buffer"
.end annotation


# instance fields
.field public final binary:Z

.field public final data:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 0
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "binary"    # Z

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/webrtc/ali/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    .line 56
    iput-boolean p2, p0, Lorg/webrtc/ali/DataChannel$Buffer;->binary:Z

    .line 57
    return-void
.end method
