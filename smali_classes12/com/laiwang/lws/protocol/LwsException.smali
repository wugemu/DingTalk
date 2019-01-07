.class public Lcom/laiwang/lws/protocol/LwsException;
.super Ljava/io/IOException;
.source "LwsException.java"


# static fields
.field private static final serialVersionUID:J = 0x3e9a5079c293dfe7L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg1"    # Ljava/lang/String;
    .param p2, "msg2"    # Ljava/lang/Throwable;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p2}, Lcom/laiwang/lws/protocol/LwsException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Throwable;

    .prologue
    .line 21
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/laiwang/lws/protocol/LwsException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 23
    return-void

    .line 21
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
