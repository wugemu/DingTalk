.class public final Lkotlin/text/StringsKt___StringsKt$withIndex$1;
.super Lkotlin/jvm/internal/Lambda;
.source "_Strings.kt"

# interfaces
.implements Lkhk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkhk",
        "<",
        "Lkgb;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/collections/CharIterator;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# instance fields
.field final synthetic receiver$0:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lkotlin/text/StringsKt___StringsKt$withIndex$1;->receiver$0:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlin/text/StringsKt___StringsKt$withIndex$1;->invoke()Lkgb;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkgb;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 810
    iget-object v1, p0, Lkotlin/text/StringsKt___StringsKt$withIndex$1;->receiver$0:Ljava/lang/CharSequence;

    const-string/jumbo v0, "$receiver"

    invoke-static {v1, v0}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1261
    new-instance v0, Lkkf$a;

    invoke-direct {v0, v1}, Lkkf$a;-><init>(Ljava/lang/CharSequence;)V

    check-cast v0, Lkgb;

    .line 810
    return-object v0
.end method
