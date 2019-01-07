.class final Lclj$a;
.super Ljava/lang/Object;
.source "MvpPresenter.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lclj;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lclj;Lcli;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lclj$a;, "Lclj<TT;>.a;"
    .local p2, "view":Lcli;, "TT;"
    iput-object p1, p0, Lclj$a;->a:Lclj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lclj$a;->b:Ljava/lang/ref/WeakReference;

    .line 91
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lclj$a;, "Lclj<TT;>.a;"
    iget-object v0, p0, Lclj$a;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lclj$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lclj$a;->b:Ljava/lang/ref/WeakReference;

    .line 98
    :cond_0
    return-void
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 103
    .local p0, "this":Lclj$a;, "Lclj<TT;>.a;"
    iget-object v1, p0, Lclj$a;->b:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lclj$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcli;

    .line 105
    .local v0, "t":Lcli;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcli;->s_()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 112
    .end local v0    # "t":Lcli;, "TT;"
    :goto_0
    return-object v1

    .line 108
    .restart local v0    # "t":Lcli;, "TT;"
    :cond_0
    invoke-virtual {p0}, Lclj$a;->a()V

    .line 111
    .end local v0    # "t":Lcli;, "TT;"
    :cond_1
    const-string/jumbo v1, "mvp"

    const-string/jumbo v2, "MvpPresenter"

    const-string/jumbo v3, " invoke method ,view null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x0

    goto :goto_0
.end method
