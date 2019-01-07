.class public Lcom/taobao/ma/decode/MaDecode;
.super Ljava/lang/Object;
.source "MaDecode.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v1, "Madecode: loading so files"

    invoke-static {v1}, Ljmy;->a(Ljava/lang/String;)V

    .line 37
    sget-boolean v1, Ljmx;->f:Z

    if-nez v1, :cond_0

    .line 39
    :try_start_0
    const-string/jumbo v1, "tbdecode"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    const/4 v1, 0x1

    sput-boolean v1, Ljmx;->f:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/taobao/ma/decode/MaDecode;->a:Z

    return-void

    .line 41
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 42
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "Failed to load libtbdecode.so"

    invoke-static {v1, v0}, Ljmy;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native codeDecodeWithQr([BIIII)Lcom/taobao/ma/decode/DecodeResult;
.end method

.method private static native detectMarkers([BII[I[IIIIIIIILjms;)V
.end method

.method private static native encode(Ljava/lang/String;[BIIIIIIIICCIII)[B
.end method

.method private static native releaseMemory()V
.end method

.method private static native yuvcodeDecode([BIIILandroid/graphics/Rect;ILjava/lang/String;[Ljava/lang/String;)Lcom/taobao/ma/decode/DecodeResult;
.end method
