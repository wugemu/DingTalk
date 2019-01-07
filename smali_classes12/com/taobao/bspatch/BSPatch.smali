.class public Lcom/taobao/bspatch/BSPatch;
.super Ljava/lang/Object;
.source "BSPatch.java"


# static fields
.field static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    const/4 v1, 0x0

    sput-boolean v1, Lcom/taobao/bspatch/BSPatch;->a:Z

    .line 12
    :try_start_0
    const-string/jumbo v1, "BSPatch"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    const/4 v1, 0x1

    sput-boolean v1, Lcom/taobao/bspatch/BSPatch;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 14
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 15
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native bspatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method
