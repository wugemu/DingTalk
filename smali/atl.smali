.class public abstract Latl;
.super Lcmi;
.source "CalendarRequestCallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcmi",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcmi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcmi",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcmi;)V
    .locals 0
    .param p1, "callback"    # Lcmi;

    .prologue
    .line 38
    .local p0, "this":Latl;, "Latl<TT;>;"
    invoke-direct {p0}, Lcmi;-><init>()V

    .line 39
    iput-object p1, p0, Latl;->a:Lcmi;

    .line 40
    return-void
.end method

.method static synthetic a(Latl;)Lcmi;
    .locals 1
    .param p0, "x0"    # Latl;

    .prologue
    .line 31
    iget-object v0, p0, Latl;->a:Lcmi;

    return-object v0
.end method


# virtual methods
.method public handleCaught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "r"    # Lcom/laiwang/idl/service/ResultError;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    .local p0, "this":Latl;, "Latl<TT;>;"
    invoke-virtual {p0, p1, p2}, Latl;->caughtImpl(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 61
    .local p0, "this":Latl;, "Latl<TT;>;"
    iget-object v0, p0, Latl;->a:Lcmi;

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    new-instance v1, Latl$2;

    invoke-direct {v1, p0, p1, p2, p3}, Latl$2;-><init>(Latl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Latf;->a(Ljava/lang/Runnable;)V

    .line 69
    :cond_0
    return-void
.end method

.method public onLoadSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Latl;, "Latl<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 44
    .local p0, "this":Latl;, "Latl<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Latl;->a:Lcmi;

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    new-instance v1, Latl$1;

    invoke-direct {v1, p0, p1}, Latl$1;-><init>(Latl;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Latf;->a(Ljava/lang/Runnable;)V

    .line 52
    :cond_0
    return-void
.end method
