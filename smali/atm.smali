.class public abstract Latm;
.super Lcmi;
.source "HolidayRequestCallbackProxy.java"


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
    .line 34
    .local p0, "this":Latm;, "Latm<TT;>;"
    invoke-direct {p0}, Lcmi;-><init>()V

    .line 35
    iput-object p1, p0, Latm;->a:Lcmi;

    .line 36
    return-void
.end method

.method static synthetic a(Latm;)Lcmi;
    .locals 1
    .param p0, "x0"    # Latm;

    .prologue
    .line 27
    iget-object v0, p0, Latm;->a:Lcmi;

    return-object v0
.end method


# virtual methods
.method public handleCaught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "r"    # Lcom/laiwang/idl/service/ResultError;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 52
    .local p0, "this":Latm;, "Latm<TT;>;"
    invoke-virtual {p0, p1, p2}, Latm;->caughtImpl(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V

    .line 53
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
    .line 57
    .local p0, "this":Latm;, "Latm<TT;>;"
    iget-object v0, p0, Latm;->a:Lcmi;

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lath;->a()Lath;

    move-result-object v0

    new-instance v1, Latm$2;

    invoke-direct {v1, p0, p1, p2, p3}, Latm$2;-><init>(Latm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lath;->a(Ljava/lang/Runnable;)V

    .line 65
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
    .line 70
    .local p0, "this":Latm;, "Latm<TT;>;"
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
    .line 40
    .local p0, "this":Latm;, "Latm<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Latm;->a:Lcmi;

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lath;->a()Lath;

    move-result-object v0

    new-instance v1, Latm$1;

    invoke-direct {v1, p0, p1}, Latm$1;-><init>(Latm;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lath;->a(Ljava/lang/Runnable;)V

    .line 48
    :cond_0
    return-void
.end method
