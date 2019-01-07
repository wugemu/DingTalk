.class final Lcom/laiwang/protocol/upload/ErrorMsg$3;
.super Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;
.source "ErrorMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/upload/ErrorMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;-><init>(ILjava/lang/String;)V

    return-void
.end method
