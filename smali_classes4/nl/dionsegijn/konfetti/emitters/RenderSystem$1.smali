.class public final Lnl/dionsegijn/konfetti/emitters/RenderSystem$1;
.super Lkotlin/jvm/internal/FunctionReference;
.source "RenderSystem.kt"

# interfaces
.implements Lkhk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklw;-><init>(Lkma;Lkmd;[Lkmb;[Lnl/dionsegijn/konfetti/models/Shape;[ILklz;Lklv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lkhk",
        "<",
        "Lkfs;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# direct methods
.method public constructor <init>(Lklw;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "addConfetti"

    return-object v0
.end method

.method public final getOwner()Lkjb;
    .locals 1

    const-class v0, Lklw;

    invoke-static {v0}, Lkii;->a(Ljava/lang/Class;)Lkja;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "addConfetti()V"

    return-object v0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lnl/dionsegijn/konfetti/emitters/RenderSystem$1;->invoke()V

    sget-object v0, Lkfs;->a:Lkfs;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .prologue
    iget-object v0, p0, Lnl/dionsegijn/konfetti/emitters/RenderSystem$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lklw;

    .line 30
    invoke-static {v0}, Lklw;->a(Lklw;)V

    return-void
.end method
