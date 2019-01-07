.class public final Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Strings.kt"

# interfaces
.implements Lkhm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkf;
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
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "Lkotlin/Pair",
        "<+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\r\n\u0002\u0008\u0002\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Pair;",
        "",
        "",
        "startIndex",
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
.field final synthetic $delimiters:[C

.field final synthetic $ignoreCase:Z


# direct methods
.method constructor <init>([CZ)V
    .locals 1

    iput-object p1, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$delimiters:[C

    iput-boolean p2, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$ignoreCase:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->invoke(Ljava/lang/CharSequence;I)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/CharSequence;I)Lkotlin/Pair;
    .locals 13
    .param p1, "$receiver"    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Lkotlin/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v1, "$receiver"

    invoke-static {p1, v1}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1098
    iget-object v5, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$delimiters:[C

    iget-boolean v6, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$ignoreCase:Z

    .line 3790
    if-nez v6, :cond_2

    array-length v1, v5

    if-ne v1, v12, :cond_2

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 3791
    const-string/jumbo v1, "$receiver"

    invoke-static {v5, v1}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5138
    array-length v1, v5

    packed-switch v1, :pswitch_data_0

    .line 5141
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Array has more than one element."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 5139
    :pswitch_0
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string/jumbo v2, "Array is empty."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 5140
    :pswitch_1
    aget-char v2, v5, v3

    .line 3792
    check-cast p1, Ljava/lang/String;

    .end local p1    # "$receiver":Ljava/lang/CharSequence;
    if-nez p1, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string/jumbo v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 3793
    if-gez v1, :cond_1

    move-object v0, v4

    .line 1098
    :goto_0
    if-eqz v0, :cond_8

    check-cast v0, Lkotlin/Pair;

    .local v0, "it":Lkotlin/Pair;
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkfq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    .end local v0    # "it":Lkotlin/Pair;
    :goto_1
    return-object v1

    .line 3793
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v1, v2}, Lkfq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_0

    .line 3796
    .restart local p1    # "$receiver":Ljava/lang/CharSequence;
    :cond_2
    invoke-static {p2, v3}, Lkiv;->b(II)I

    move-result v2

    new-instance v1, Lkir;

    invoke-static {p1}, Lkjy;->a(Ljava/lang/CharSequence;)I

    move-result v7

    invoke-direct {v1, v2, v7}, Lkir;-><init>(II)V

    check-cast v1, Lkip;

    .line 6094
    iget v2, v1, Lkip;->a:I

    .line 6099
    iget v7, v1, Lkip;->b:I

    .line 6104
    iget v8, v1, Lkip;->c:I

    .line 3797
    if-lez v8, :cond_3

    if-gt v2, v7, :cond_7

    move v1, v2

    .line 3798
    :goto_2
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 4330
    array-length v2, v5

    add-int/lit8 v10, v2, -0x1

    if-ltz v10, :cond_5

    move v2, v3

    .line 4331
    :goto_3
    aget-char v11, v5, v2

    .line 3799
    invoke-static {v11, v9, v6}, Lkjn;->a(CCZ)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 3800
    :goto_4
    if-ltz v2, :cond_6

    .line 3801
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-char v2, v5, v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v1, v2}, Lkfq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_0

    .line 3797
    :cond_3
    if-lt v2, v7, :cond_7

    move v1, v2

    goto :goto_2

    .line 4330
    :cond_4
    if-eq v2, v10, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4335
    :cond_5
    const/4 v2, -0x1

    goto :goto_4

    .line 3797
    :cond_6
    if-eq v1, v7, :cond_7

    add-int/2addr v1, v8

    goto :goto_2

    :cond_7
    move-object v0, v4

    .line 3804
    goto :goto_0

    .end local p1    # "$receiver":Ljava/lang/CharSequence;
    :cond_8
    move-object v1, v4

    .line 1098
    goto :goto_1

    .line 5138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
