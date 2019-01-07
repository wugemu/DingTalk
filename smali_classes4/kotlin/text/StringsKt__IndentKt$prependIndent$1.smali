.class public final Lkotlin/text/StringsKt__IndentKt$prependIndent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Indent.kt"

# interfaces
.implements Lkhl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkjz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkhl",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic $indent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lkotlin/text/StringsKt__IndentKt$prependIndent$1;->$indent:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlin/text/StringsKt__IndentKt$prependIndent$1;->invoke(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "it"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "it"

    invoke-static {p1, v0}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    .line 93
    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "$receiver"

    invoke-static {v0, v1}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1321
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "$receiver"

    invoke-static {v0, v1}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2277
    new-instance v1, Lkir;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v3, v2}, Lkir;-><init>(II)V

    .line 1321
    check-cast v1, Ljava/lang/Iterable;

    .line 1443
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v2

    check-cast v1, Lkgn;

    invoke-virtual {v1}, Lkgn;->a()I

    move-result v1

    .line 1321
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 3077
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    move v1, v4

    .line 1321
    :goto_0
    if-nez v1, :cond_0

    move v0, v3

    .line 1444
    :goto_1
    if-eqz v0, :cond_6

    :cond_2
    move v0, v4

    .line 93
    :goto_2
    if-eqz v0, :cond_7

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lkotlin/text/StringsKt__IndentKt$prependIndent$1;->$indent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lkotlin/text/StringsKt__IndentKt$prependIndent$1;->$indent:Ljava/lang/String;

    :goto_3
    move-object p1, v0

    .line 100
    .end local p1    # "it":Ljava/lang/String;
    :cond_3
    return-object p1

    .restart local p1    # "it":Ljava/lang/String;
    :cond_4
    move v1, v3

    .line 3077
    goto :goto_0

    :cond_5
    move v0, v4

    .line 1444
    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_2

    .line 99
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlin/text/StringsKt__IndentKt$prependIndent$1;->$indent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
