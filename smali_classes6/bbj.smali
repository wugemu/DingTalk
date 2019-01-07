.class public final Lbbj;
.super Ljava/lang/Object;
.source "ApiEventListenerProxy.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcma",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lbbj;, "Lbbj<TT;>;"
    .local p1, "observer":Lcma;, "Lcma<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lbbj;->a:Lcma;

    .line 37
    return-void
.end method

.method static synthetic a(Lbbj;)Lcma;
    .locals 1
    .param p0, "x0"    # Lbbj;

    .prologue
    .line 24
    iget-object v0, p0, Lbbj;->a:Lcma;

    return-object v0
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 42
    .local p0, "this":Lbbj;, "Lbbj<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lbbj;->a:Lcma;

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    new-instance v1, Lbbj$1;

    invoke-direct {v1, p0, p1}, Lbbj$1;-><init>(Lbbj;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lbbp;->a(Ljava/lang/Runnable;)V

    .line 52
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 70
    .local p0, "this":Lbbj;, "Lbbj<TT;>;"
    iget-object v0, p0, Lbbj;->a:Lcma;

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    new-instance v1, Lbbj$3;

    invoke-direct {v1, p0, p1, p2}, Lbbj$3;-><init>(Lbbj;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbbp;->a(Ljava/lang/Runnable;)V

    .line 80
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 56
    .local p0, "this":Lbbj;, "Lbbj<TT;>;"
    iget-object v0, p0, Lbbj;->a:Lcma;

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    new-instance v1, Lbbj$2;

    invoke-direct {v1, p0, p1, p2}, Lbbj$2;-><init>(Lbbj;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lbbp;->a(Ljava/lang/Runnable;)V

    .line 66
    :cond_0
    return-void
.end method
