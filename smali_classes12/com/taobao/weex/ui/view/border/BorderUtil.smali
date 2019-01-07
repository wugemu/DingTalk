.class Lcom/taobao/weex/ui/view/border/BorderUtil;
.super Ljava/lang/Object;
.source "BorderUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fetchFromSparseArray(Landroid/util/SparseIntArray;II)I
    .locals 1
    .param p0, "array"    # Landroid/util/SparseIntArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "position"    # I
    .param p2, "fallback"    # I

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    .end local p2    # "fallback":I
    :goto_0
    return p2

    .line 31
    .restart local p2    # "fallback":I
    :cond_0
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    .line 32
    invoke-virtual {v0}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    goto :goto_0
.end method

.method static updateSparseArray(Landroid/util/SparseIntArray;II)V
    .locals 1
    .param p0, "array"    # Landroid/util/SparseIntArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "position"    # I
    .param p2, "value"    # I

    .prologue
    .line 36
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 37
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method
