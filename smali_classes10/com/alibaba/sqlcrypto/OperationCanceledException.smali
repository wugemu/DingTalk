.class public Lcom/alibaba/sqlcrypto/OperationCanceledException;
.super Ljava/lang/RuntimeException;
.source "OperationCanceledException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .end local p1    # "message":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void

    .line 30
    .restart local p1    # "message":Ljava/lang/String;
    :cond_0
    const-string/jumbo p1, "The operation has been canceled."

    goto :goto_0
.end method
