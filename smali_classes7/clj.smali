.class public abstract Lclj;
.super Ljava/lang/Object;
.source "MvpPresenter.java"

# interfaces
.implements Lclg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcli;",
        ">",
        "Ljava/lang/Object;",
        "Lclg",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected a:Lcli;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Lclj$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lclj",
            "<TT;>.a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    .local p0, "this":Lclj;, "Lclj<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 78
    .local p0, "this":Lclj;, "Lclj<TT;>;"
    iget-object v0, p0, Lclj;->b:Lclj$a;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lclj;->b:Lclj$a;

    invoke-virtual {v0}, Lclj$a;->a()V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string/jumbo v0, "mvp"

    const-string/jumbo v1, "MvpPresenter"

    const-string/jumbo v2, "invocation handler null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic a(Lclh;)Z
    .locals 1

    .prologue
    .line 20
    .local p0, "this":Lclj;, "Lclj<TT;>;"
    check-cast p1, Lcli;

    invoke-virtual {p0, p1}, Lclj;->a(Lcli;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcli;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 31
    .local p0, "this":Lclj;, "Lclj<TT;>;"
    .local p1, "view":Lcli;, "TT;"
    if-nez p1, :cond_0

    .line 32
    const-string/jumbo v0, "mvp"

    const-string/jumbo v1, "MvpPresenter"

    const-string/jumbo v2, "view null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    .line 36
    :cond_0
    new-instance v0, Lclj$a;

    invoke-direct {v0, p0, p1}, Lclj$a;-><init>(Lclj;Lcli;)V

    iput-object v0, p0, Lclj;->b:Lclj$a;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lclj;->b:Lclj$a;

    .line 38
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcli;

    iput-object v0, p0, Lclj;->a:Lcli;

    .line 42
    const/4 v0, 0x1

    goto :goto_0
.end method
