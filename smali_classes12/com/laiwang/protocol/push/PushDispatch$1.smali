.class final Lcom/laiwang/protocol/push/PushDispatch$1;
.super Ljava/lang/Object;
.source "PushDispatch.java"

# interfaces
.implements Lcom/laiwang/protocol/lang/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/push/PushDispatch;->dispatch(Lcom/laiwang/protocol/core/Request;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/laiwang/protocol/lang/Callback",
        "<",
        "Lcom/laiwang/protocol/core/Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$request:Lcom/laiwang/protocol/core/Request;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/core/Request;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/laiwang/protocol/push/PushDispatch$1;->val$request:Lcom/laiwang/protocol/core/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/laiwang/protocol/core/Response;)V
    .locals 3
    .param p1, "response"    # Lcom/laiwang/protocol/core/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lcom/laiwang/protocol/push/PushDispatch$1;->val$request:Lcom/laiwang/protocol/core/Request;

    sget-object v1, Lcom/laiwang/protocol/attribute/Attributes;->REMOTE:Lcom/laiwang/protocol/attribute/AttributeKey;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/laiwang/protocol/core/Request;->booleanAttr(Lcom/laiwang/protocol/attribute/AttributeKey;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    sget-object v0, Lcom/laiwang/protocol/push/PushDispatch;->remoteAgent:Lcom/laiwang/protocol/android/c;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/c;->b(Lcom/laiwang/protocol/core/Response;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->startLine()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/laiwang/protocol/push/PushDispatch$1;->val$request:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v0}, Lcom/laiwang/protocol/core/Request;->getReply()Lcom/laiwang/protocol/android/Reply;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/laiwang/protocol/android/Reply;->on(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Lcom/laiwang/protocol/core/Response;

    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/push/PushDispatch$1;->apply(Lcom/laiwang/protocol/core/Response;)V

    return-void
.end method
