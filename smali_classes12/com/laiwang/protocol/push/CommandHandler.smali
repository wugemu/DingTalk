.class public Lcom/laiwang/protocol/push/CommandHandler;
.super Ljava/lang/Object;
.source "CommandHandler.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Receive;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/push/CommandHandler$Command;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/laiwang/protocol/android/Receive",
        "<",
        "Lcom/laiwang/protocol/core/Request;",
        "Lcom/laiwang/protocol/core/Response;",
        ">;"
    }
.end annotation


# static fields
.field private static commandMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/push/CommandHandler$Command;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field ioExecutor:Lcom/laiwang/protocol/android/bu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/push/CommandHandler;->commandMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/laiwang/protocol/android/bu;)V
    .locals 0
    .param p1, "ioExecutor"    # Lcom/laiwang/protocol/android/bu;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/laiwang/protocol/push/CommandHandler;->ioExecutor:Lcom/laiwang/protocol/android/bu;

    .line 36
    return-void
.end method

.method public static register(Ljava/lang/String;Lcom/laiwang/protocol/push/CommandHandler$Command;)V
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "command"    # Lcom/laiwang/protocol/push/CommandHandler$Command;

    .prologue
    .line 26
    sget-object v1, Lcom/laiwang/protocol/push/CommandHandler;->commandMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 27
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/push/CommandHandler$Command;>;"
    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/push/CommandHandler$Command;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/push/CommandHandler$Command;>;"
    sget-object v1, Lcom/laiwang/protocol/push/CommandHandler;->commandMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method


# virtual methods
.method public apply(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/lang/Callback;)V
    .locals 9
    .param p1, "request"    # Lcom/laiwang/protocol/core/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laiwang/protocol/core/Request;",
            "Lcom/laiwang/protocol/lang/Callback",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    .local p2, "callback":Lcom/laiwang/protocol/lang/Callback;, "Lcom/laiwang/protocol/lang/Callback<Lcom/laiwang/protocol/core/Response;>;"
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "cmd":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Request;->payload()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Request;->payload()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 47
    .local v4, "body":Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/laiwang/protocol/push/CommandHandler;->commandMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 48
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/push/CommandHandler$Command;>;"
    if-nez v6, :cond_2

    .line 49
    sget-object v0, Lcom/laiwang/protocol/core/Constants$Status;->BAD_REQUEST:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-static {p1, v0}, Lcom/laiwang/protocol/core/Response;->response(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;)Lcom/laiwang/protocol/core/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/core/Response$Builder;->build()Lcom/laiwang/protocol/core/Response;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    .line 69
    :cond_0
    return-void

    .line 45
    .end local v4    # "body":Ljava/lang/String;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/push/CommandHandler$Command;>;"
    :cond_1
    const-string/jumbo v4, ""

    .restart local v4    # "body":Ljava/lang/String;
    goto :goto_0

    .line 51
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/push/CommandHandler$Command;>;"
    :cond_2
    new-instance v5, Lcom/laiwang/protocol/push/CommandHandler$1;

    invoke-direct {v5, p0, p1, p2}, Lcom/laiwang/protocol/push/CommandHandler$1;-><init>(Lcom/laiwang/protocol/push/CommandHandler;Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/lang/Callback;)V

    .line 59
    .local v5, "cb":Lcom/laiwang/protocol/lang/Callback;, "Lcom/laiwang/protocol/lang/Callback<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/laiwang/protocol/push/CommandHandler$Command;

    .line 60
    .local v3, "command":Lcom/laiwang/protocol/push/CommandHandler$Command;
    iget-object v8, p0, Lcom/laiwang/protocol/push/CommandHandler;->ioExecutor:Lcom/laiwang/protocol/android/bu;

    new-instance v0, Lcom/laiwang/protocol/push/CommandHandler$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/laiwang/protocol/push/CommandHandler$2;-><init>(Lcom/laiwang/protocol/push/CommandHandler;Ljava/lang/String;Lcom/laiwang/protocol/push/CommandHandler$Command;Ljava/lang/String;Lcom/laiwang/protocol/lang/Callback;)V

    invoke-virtual {v8, v0}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    goto :goto_1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Lcom/laiwang/protocol/lang/Callback;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/laiwang/protocol/core/Request;

    invoke-virtual {p0, p1, p2}, Lcom/laiwang/protocol/push/CommandHandler;->apply(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/lang/Callback;)V

    return-void
.end method
