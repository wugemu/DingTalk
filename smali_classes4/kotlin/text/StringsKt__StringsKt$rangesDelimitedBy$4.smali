.class public final Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4;
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
.field final synthetic $delimitersList:Ljava/util/List;

.field final synthetic $ignoreCase:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 1

    iput-object p1, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4;->$delimitersList:Ljava/util/List;

    iput-boolean p2, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4;->$ignoreCase:Z

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

    invoke-virtual {p0, p1, v0}, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4;->invoke(Ljava/lang/CharSequence;I)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/CharSequence;I)Lkotlin/Pair;
    .locals 12
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

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-string/jumbo v0, "$receiver"

    invoke-static {p1, v0}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4;->$delimitersList:Ljava/util/List;

    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    iget-boolean v5, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4;->$ignoreCase:Z

    .line 2852
    if-nez v5, :cond_6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 2853
    check-cast v6, Ljava/lang/Iterable;

    const-string/jumbo v0, "$receiver"

    invoke-static {v6, v0}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3451
    instance-of v0, v6, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast v6, Ljava/util/List;

    const-string/jumbo v0, "$receiver"

    invoke-static {v6, v0}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3468
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "List has more than one element."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 3469
    :pswitch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "List is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 3470
    :pswitch_1
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    move-object v8, v0

    .line 2853
    check-cast v8, Ljava/lang/String;

    .line 3959
    const/4 v4, 0x0

    const-string/jumbo v0, "$receiver"

    invoke-static {p1, v0}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "string"

    invoke-static {v8, v0}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3960
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_3

    move-object v1, v8

    .line 3961
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lkkf;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZI)I

    move-result v0

    .line 2855
    .end local p1    # "$receiver":Ljava/lang/CharSequence;
    :goto_0
    if-gez v0, :cond_5

    const/4 v7, 0x0

    .line 1120
    :goto_1
    if-eqz v7, :cond_12

    check-cast v7, Lkotlin/Pair;

    .local v7, "it":Lkotlin/Pair;
    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lkfq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .end local v7    # "it":Lkotlin/Pair;
    :goto_2
    return-object v0

    .line 3453
    .restart local p1    # "$receiver":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3454
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3455
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "Collection is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 3456
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3457
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Collection has more than one element."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 3963
    :cond_3
    check-cast p1, Ljava/lang/String;

    .end local p1    # "$receiver":Ljava/lang/CharSequence;
    if-nez p1, :cond_4

    new-instance v0, Lkotlin/TypeCastException;

    const-string/jumbo v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v8, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 2855
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v8}, Lkfq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    goto :goto_1

    .line 2858
    .restart local p1    # "$receiver":Ljava/lang/CharSequence;
    :cond_6
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lkiv;->b(II)I

    move-result v1

    new-instance v0, Lkir;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lkir;-><init>(II)V

    check-cast v0, Lkip;

    .line 2860
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 4094
    iget v3, v0, Lkip;->a:I

    .line 4099
    iget v9, v0, Lkip;->b:I

    .line 4104
    iget v10, v0, Lkip;->c:I

    .line 2861
    if-lez v10, :cond_9

    if-gt v3, v9, :cond_a

    :cond_7
    :goto_3
    move-object v0, v6

    .line 2862
    check-cast v0, Ljava/lang/Iterable;

    .line 3336
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    .line 2862
    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static/range {v0 .. v5}, Lkjy;->a(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v8

    :goto_4
    check-cast v0, Ljava/lang/String;

    .line 2863
    if-eqz v0, :cond_c

    .line 2864
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v0}, Lkfq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    goto/16 :goto_1

    .line 2861
    :cond_9
    if-ge v3, v9, :cond_7

    .line 2874
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 3337
    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    .line 2861
    :cond_c
    if-eq v3, v9, :cond_a

    add-int/2addr v3, v10

    goto :goto_3

    .line 5094
    :cond_d
    iget v3, v0, Lkip;->a:I

    .line 5099
    iget v9, v0, Lkip;->b:I

    .line 5104
    iget v10, v0, Lkip;->c:I

    .line 2867
    if-lez v10, :cond_f

    if-gt v3, v9, :cond_a

    :goto_5
    move-object v0, v6

    .line 2868
    check-cast v0, Ljava/lang/Iterable;

    .line 3338
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 2868
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lkjy;->a(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, v8

    :goto_6
    check-cast v0, Ljava/lang/String;

    .line 2869
    if-eqz v0, :cond_11

    .line 2870
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v0}, Lkfq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    goto/16 :goto_1

    .line 2867
    :cond_f
    if-lt v3, v9, :cond_a

    goto :goto_5

    .line 3339
    :cond_10
    const/4 v0, 0x0

    goto :goto_6

    .line 2867
    :cond_11
    if-eq v3, v9, :cond_a

    add-int/2addr v3, v10

    goto :goto_5

    .line 1120
    .end local p1    # "$receiver":Ljava/lang/CharSequence;
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 3468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
