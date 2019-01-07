.class Lcom/laiwang/protocol/a$2;
.super Ljava/lang/Object;
.source "Bootstrap.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Receive;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/a;->a(Landroid/app/Application;Landroid/content/Context;Ljava/lang/Class;Lcom/laiwang/protocol/android/Extension;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/a;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/a;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/laiwang/protocol/a$2;->a:Lcom/laiwang/protocol/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/lang/Callback;)V
    .locals 1
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

    .prologue
    .line 133
    .local p2, "callback":Lcom/laiwang/protocol/lang/Callback;, "Lcom/laiwang/protocol/lang/Callback<Lcom/laiwang/protocol/core/Response;>;"
    sget-object v0, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-static {p1, v0}, Lcom/laiwang/protocol/core/Response;->response(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;)Lcom/laiwang/protocol/core/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/core/Response$Builder;->build()Lcom/laiwang/protocol/core/Response;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public synthetic apply(Ljava/lang/Object;Lcom/laiwang/protocol/lang/Callback;)V
    .locals 0

    .prologue
    .line 130
    check-cast p1, Lcom/laiwang/protocol/core/Request;

    invoke-virtual {p0, p1, p2}, Lcom/laiwang/protocol/a$2;->a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/lang/Callback;)V

    return-void
.end method
