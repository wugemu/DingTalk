.class public Lcom/taobao/ma/encode/MaGenerator;
.super Ljava/lang/Object;
.source "MaGenerator.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-string/jumbo v1, "MaGenerator: loading so files"

    invoke-static {v1}, Ljmy;->a(Ljava/lang/String;)V

    .line 21
    sget-boolean v1, Ljmx;->f:Z

    if-nez v1, :cond_0

    .line 23
    :try_start_0
    const-string/jumbo v1, "tbdecode"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 24
    const/4 v1, 0x1

    sput-boolean v1, Ljmx;->f:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    :goto_0
    return-void

    .line 25
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 26
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "Failed to load libtbdecode.so"

    invoke-static {v1, v0}, Ljmy;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native generateBWQRCode(Ljava/lang/String;Ljava/lang/String;IIIIC)[B
.end method

.method private static native generateGen3Code(Ljava/lang/String;[BIIIIIIIICCIII)[B
.end method

.method private static native generateLogoQRCode(Ljava/lang/String;III[BIIIIIII)[B
.end method
