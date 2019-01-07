.class public Lcom/google/webp/libwebpJNI;
.super Ljava/lang/Object;
.source "libwebpJNI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native WebPDecodeARGBFast([BJ[I[I[B)I
.end method

.method public static final native WebPDecodeRGB565Fast([BJ[I[I[B)I
.end method

.method public static final native WebPGetFeatures([BJ[I[I[I)I
.end method

.method public static final native testLibraryLoaded()Z
.end method
