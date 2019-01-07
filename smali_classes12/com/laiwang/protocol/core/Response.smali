.class public Lcom/laiwang/protocol/core/Response;
.super Lcom/laiwang/protocol/android/bd;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/core/Response$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/protocol/android/bd",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "startline"    # Ljava/lang/Integer;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/bd;-><init>(Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lcom/laiwang/protocol/core/MessageID;)V
    .locals 0
    .param p1, "startline"    # Ljava/lang/Integer;
    .param p2, "messageID"    # Lcom/laiwang/protocol/core/MessageID;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/laiwang/protocol/android/bd;-><init>(Ljava/lang/Object;Lcom/laiwang/protocol/core/MessageID;)V

    .line 18
    return-void
.end method

.method public static response(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;)Lcom/laiwang/protocol/core/Response$Builder;
    .locals 2
    .param p0, "request"    # Lcom/laiwang/protocol/core/Request;
    .param p1, "status"    # Lcom/laiwang/protocol/core/Constants$Status;

    .prologue
    .line 24
    new-instance v0, Lcom/laiwang/protocol/core/Response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/laiwang/protocol/core/Response$Builder;-><init>(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;Lcom/laiwang/protocol/core/Response$1;)V

    return-object v0
.end method

.method public static response(Lcom/laiwang/protocol/core/Request;I)Lcom/laiwang/protocol/core/Response;
    .locals 3
    .param p0, "request"    # Lcom/laiwang/protocol/core/Request;
    .param p1, "status"    # I

    .prologue
    .line 21
    new-instance v0, Lcom/laiwang/protocol/core/Response;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/laiwang/protocol/core/Request;->getMessageID()Lcom/laiwang/protocol/core/MessageID;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/core/Response;-><init>(Ljava/lang/Integer;Lcom/laiwang/protocol/core/MessageID;)V

    return-object v0
.end method


# virtual methods
.method public status()Lcom/laiwang/protocol/core/Constants$Status;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/laiwang/protocol/core/Response;->startline:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/laiwang/protocol/core/Constants$Status;->valueOf(I)Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v0

    return-object v0
.end method
