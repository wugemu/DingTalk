.class public final Lkotlin/coroutines/experimental/CoroutineContextImplKt$plusImpl$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lkhm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkgz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkhm",
        "<",
        "Lkgy;",
        "Lkgy$a;",
        "Lkgy;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "acc",
        "element",
        "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/coroutines/experimental/CoroutineContextImplKt$plusImpl$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/coroutines/experimental/CoroutineContextImplKt$plusImpl$1;

    invoke-direct {v0}, Lkotlin/coroutines/experimental/CoroutineContextImplKt$plusImpl$1;-><init>()V

    sput-object v0, Lkotlin/coroutines/experimental/CoroutineContextImplKt$plusImpl$1;->INSTANCE:Lkotlin/coroutines/experimental/CoroutineContextImplKt$plusImpl$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkgy;

    check-cast p2, Lkgy$a;

    invoke-virtual {p0, p1, p2}, Lkotlin/coroutines/experimental/CoroutineContextImplKt$plusImpl$1;->invoke(Lkgy;Lkgy$a;)Lkgy;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkgy;Lkgy$a;)Lkgy;
    .locals 5
    .param p1, "acc"    # Lkgy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "element"    # Lkgy$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-string/jumbo v3, "acc"

    invoke-static {p1, v3}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "element"

    invoke-static {p2, v3}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-interface {p2}, Lkgy$a;->b()Lkgy$b;

    move-result-object v3

    invoke-interface {p1, v3}, Lkgy;->b(Lkgy$b;)Lkgy;

    move-result-object v2

    .line 121
    .local v2, "removed":Lkgy;
    sget-object v3, Lkha;->a:Lkha;

    if-ne v2, v3, :cond_0

    move-object v3, p2

    .line 124
    .end local p2    # "element":Lkgy$a;
    :goto_0
    check-cast v3, Lkgy;

    .line 129
    return-object v3

    .line 123
    .restart local p2    # "element":Lkgy$a;
    :cond_0
    sget-object v3, Lkgx;->a:Lkgx$a;

    check-cast v3, Lkgy$b;

    invoke-interface {v2, v3}, Lkgy;->a(Lkgy$b;)Lkgy$a;

    move-result-object v0

    check-cast v0, Lkgx;

    .line 124
    .local v0, "interceptor":Lkgx;
    if-nez v0, :cond_1

    new-instance v3, Lkgv;

    invoke-direct {v3, v2, p2}, Lkgv;-><init>(Lkgy;Lkgy$a;)V

    goto :goto_0

    .line 125
    :cond_1
    sget-object v3, Lkgx;->a:Lkgx$a;

    check-cast v3, Lkgy$b;

    invoke-interface {v2, v3}, Lkgy;->b(Lkgy$b;)Lkgy;

    move-result-object v1

    .line 126
    .local v1, "left":Lkgy;
    sget-object v3, Lkha;->a:Lkha;

    if-ne v1, v3, :cond_2

    new-instance v3, Lkgv;

    check-cast p2, Lkgy;

    .end local p2    # "element":Lkgy$a;
    check-cast v0, Lkgy$a;

    .end local v0    # "interceptor":Lkgx;
    invoke-direct {v3, p2, v0}, Lkgv;-><init>(Lkgy;Lkgy$a;)V

    goto :goto_0

    .line 127
    .restart local v0    # "interceptor":Lkgx;
    .restart local p2    # "element":Lkgy$a;
    :cond_2
    new-instance v4, Lkgv;

    new-instance v3, Lkgv;

    invoke-direct {v3, v1, p2}, Lkgv;-><init>(Lkgy;Lkgy$a;)V

    check-cast v3, Lkgy;

    check-cast v0, Lkgy$a;

    .end local v0    # "interceptor":Lkgx;
    invoke-direct {v4, v3, v0}, Lkgv;-><init>(Lkgy;Lkgy$a;)V

    move-object v3, v4

    goto :goto_0
.end method
