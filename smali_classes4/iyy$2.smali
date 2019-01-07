.class final Liyy$2;
.super Ljava/lang/Object;
.source "DispatchMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liyy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/core/Request;

.field final synthetic b:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

.field final synthetic c:Lcom/laiwang/idl/client/push/ReceiverMessageHandler;

.field final synthetic d:Liyy;


# direct methods
.method constructor <init>(Liyy;Lcom/laiwang/protocol/core/Request;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Lcom/laiwang/idl/client/push/ReceiverMessageHandler;)V
    .locals 0
    .param p1, "this$0"    # Liyy;

    .prologue
    .line 85
    iput-object p1, p0, Liyy$2;->d:Liyy;

    iput-object p2, p0, Liyy$2;->a:Lcom/laiwang/protocol/core/Request;

    iput-object p3, p0, Liyy$2;->b:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    iput-object p4, p0, Liyy$2;->c:Lcom/laiwang/idl/client/push/ReceiverMessageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 89
    iget-object v2, p0, Liyy$2;->a:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v2}, Lcom/laiwang/protocol/core/Request;->payload()[B

    move-result-object v0

    .line 90
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 91
    iget-object v2, p0, Liyy$2;->b:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    const-string/jumbo v3, "payload is empty"

    invoke-interface {v2, v3}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a(Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    iget-object v2, p0, Liyy$2;->c:Lcom/laiwang/idl/client/push/ReceiverMessageHandler;

    iget-object v3, p0, Liyy$2;->a:Lcom/laiwang/protocol/core/Request;

    const-string/jumbo v4, "dt"

    invoke-virtual {v3, v4}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v3

    iget-object v4, p0, Liyy$2;->c:Lcom/laiwang/idl/client/push/ReceiverMessageHandler;

    invoke-virtual {v4}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;->getReturnType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Liyy$2;->b:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    invoke-virtual {v2, v3, v4}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;->onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Liyy$2;->b:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
