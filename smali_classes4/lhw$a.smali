.class final Llhw$a;
.super Llgy;
.source "SingleFromObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llhw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llgy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Llgx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgx",
            "<-TT;>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method constructor <init>(Llgx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgx",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Llhw$a;, "Llhw$a<TT;>;"
    .local p1, "actual":Llgx;, "Llgx<-TT;>;"
    invoke-direct {p0}, Llgy;-><init>()V

    .line 56
    iput-object p1, p0, Llhw$a;->a:Llgx;

    .line 57
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 83
    .local p0, "this":Llhw$a;, "Llhw$a<TT;>;"
    iget v0, p0, Llhw$a;->c:I

    .line 84
    .local v0, "s":I
    if-nez v0, :cond_1

    .line 85
    iget-object v2, p0, Llhw$a;->a:Llgx;

    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-virtual {v2, v3}, Llgx;->a(Ljava/lang/Throwable;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 87
    const/4 v2, 0x2

    iput v2, p0, Llhw$a;->c:I

    .line 88
    iget-object v1, p0, Llhw$a;->b:Ljava/lang/Object;

    .line 89
    .local v1, "v":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    iput-object v2, p0, Llhw$a;->b:Ljava/lang/Object;

    .line 90
    iget-object v2, p0, Llhw$a;->a:Llgx;

    invoke-virtual {v2, v1}, Llgx;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 73
    .local p0, "this":Llhw$a;, "Llhw$a<TT;>;"
    iget v0, p0, Llhw$a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 74
    invoke-static {p1}, Llkm;->a(Ljava/lang/Throwable;)V

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Llhw$a;->b:Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Llhw$a;->a:Llgx;

    invoke-virtual {v0, p1}, Llgx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Llhw$a;, "Llhw$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    .line 61
    iget v0, p0, Llhw$a;->c:I

    .line 62
    .local v0, "s":I
    if-nez v0, :cond_1

    .line 63
    iput v1, p0, Llhw$a;->c:I

    .line 64
    iput-object p1, p0, Llhw$a;->b:Ljava/lang/Object;

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    if-ne v0, v1, :cond_0

    .line 66
    const/4 v1, 0x2

    iput v1, p0, Llhw$a;->c:I

    .line 67
    iget-object v1, p0, Llhw$a;->a:Llgx;

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v3, "The upstream produced more than one value"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Llgx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
