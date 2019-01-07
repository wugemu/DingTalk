.class public Ltv/danmaku/ijk/media/player/IjkMediaException;
.super Ljava/lang/Exception;
.source "IjkMediaException.java"


# static fields
.field private static final serialVersionUID:J = 0x6467291a39c51ef2L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method
