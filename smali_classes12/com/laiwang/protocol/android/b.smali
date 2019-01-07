.class public Lcom/laiwang/protocol/android/b;
.super Ljava/lang/Object;
.source "LocalAgent.java"

# interfaces
.implements Lcom/laiwang/protocol/android/a;


# instance fields
.field private a:Lcom/laiwang/protocol/android/w;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/w;)V
    .locals 0
    .param p1, "transmission"    # Lcom/laiwang/protocol/android/w;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/laiwang/protocol/android/b;->a:Lcom/laiwang/protocol/android/w;

    .line 22
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/laiwang/protocol/android/b;->a:Lcom/laiwang/protocol/android/w;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/w;->a()V

    .line 32
    return-void
.end method

.method public a(Lcom/laiwang/protocol/ResetListener;)V
    .locals 1
    .param p1, "resetListener"    # Lcom/laiwang/protocol/ResetListener;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/laiwang/protocol/android/b;->a:Lcom/laiwang/protocol/android/w;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/w;->a(Lcom/laiwang/protocol/ResetListener;)V

    .line 37
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/NetworkListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/laiwang/protocol/android/NetworkListener;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/laiwang/protocol/android/b;->a:Lcom/laiwang/protocol/android/w;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/w;->a(Lcom/laiwang/protocol/android/NetworkListener;)V

    .line 62
    return-void
.end method

.method public a(Lcom/laiwang/protocol/core/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/laiwang/protocol/core/Request;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/laiwang/protocol/android/b;->a:Lcom/laiwang/protocol/android/w;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/w;->a(Lcom/laiwang/protocol/android/bd;)V

    .line 27
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    iget-object v0, p0, Lcom/laiwang/protocol/android/b;->a:Lcom/laiwang/protocol/android/w;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/android/w;->a(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V

    .line 47
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/laiwang/protocol/android/b;->a:Lcom/laiwang/protocol/android/w;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/w;->e()V

    .line 72
    return-void
.end method

.method public b(Lcom/laiwang/protocol/android/NetworkListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/laiwang/protocol/android/NetworkListener;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/laiwang/protocol/android/b;->a:Lcom/laiwang/protocol/android/w;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/w;->b(Lcom/laiwang/protocol/android/NetworkListener;)V

    .line 67
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    iget-object v0, p0, Lcom/laiwang/protocol/android/b;->a:Lcom/laiwang/protocol/android/w;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/android/w;->b(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V

    .line 52
    return-void
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    iget-object v0, p0, Lcom/laiwang/protocol/android/b;->a:Lcom/laiwang/protocol/android/w;

    sget-object v1, Lcom/laiwang/protocol/android/ab;->h:Lcom/laiwang/protocol/android/ab$c;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/w;->a(Ljava/io/IOException;)V

    .line 42
    return-void
.end method

.method public c(Lcom/laiwang/protocol/android/NetworkListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/laiwang/protocol/android/NetworkListener;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/laiwang/protocol/android/b;->a:Lcom/laiwang/protocol/android/w;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/w;->c(Lcom/laiwang/protocol/android/NetworkListener;)V

    .line 87
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/laiwang/protocol/a;->a()Lcom/laiwang/protocol/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/a;->c()V

    .line 57
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/laiwang/protocol/android/b;->a:Lcom/laiwang/protocol/android/w;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/w;->f()V

    .line 77
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/laiwang/protocol/android/b;->a:Lcom/laiwang/protocol/android/w;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/w;->g()Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/laiwang/protocol/android/b;->a:Lcom/laiwang/protocol/android/w;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/w;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
