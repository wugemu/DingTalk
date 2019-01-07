.class public Lcom/taobao/weex/dom/CSSShorthand;
.super Ljava/lang/Object;
.source "CSSShorthand.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/dom/CSSShorthand$TYPE;,
        Lcom/taobao/weex/dom/CSSShorthand$CORNER;,
        Lcom/taobao/weex/dom/CSSShorthand$EDGE;,
        Lcom/taobao/weex/dom/CSSShorthand$CSSProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<+",
        "Lcom/taobao/weex/dom/CSSShorthand$CSSProperty;",
        ">;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private values:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/taobao/weex/dom/CSSShorthand;, "Lcom/taobao/weex/dom/CSSShorthand<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>(Z)V

    .line 52
    return-void
.end method

.method constructor <init>(Z)V
    .locals 2
    .param p1, "fillWithNaN"    # Z

    .prologue
    .line 54
    .local p0, "this":Lcom/taobao/weex/dom/CSSShorthand;, "Lcom/taobao/weex/dom/CSSShorthand<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->values()[Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->values()[Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/taobao/weex/dom/CSSShorthand;->values:[F

    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/taobao/weex/dom/CSSShorthand;->values:[F

    const/high16 v1, 0x7fc00000    # NaNf

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 59
    :cond_0
    return-void
.end method

.method public constructor <init>([F)V
    .locals 0
    .param p1, "values"    # [F

    .prologue
    .line 46
    .local p0, "this":Lcom/taobao/weex/dom/CSSShorthand;, "Lcom/taobao/weex/dom/CSSShorthand<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/taobao/weex/dom/CSSShorthand;->replace([F)V

    .line 48
    return-void
.end method

.method private getInternal(Ljava/lang/Enum;)F
    .locals 2
    .param p1    # Ljava/lang/Enum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<+",
            "Lcom/taobao/weex/dom/CSSShorthand$CSSProperty;",
            ">;)F"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    .local p0, "this":Lcom/taobao/weex/dom/CSSShorthand;, "Lcom/taobao/weex/dom/CSSShorthand<TT;>;"
    .local p1, "edge":Ljava/lang/Enum;, "Ljava/lang/Enum<+Lcom/taobao/weex/dom/CSSShorthand$CSSProperty;>;"
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->ALL:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/dom/CSSShorthand;->values:[F

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private setInternal(Ljava/lang/Enum;F)V
    .locals 2
    .param p1    # Ljava/lang/Enum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<+",
            "Lcom/taobao/weex/dom/CSSShorthand$CSSProperty;",
            ">;F)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    .local p0, "this":Lcom/taobao/weex/dom/CSSShorthand;, "Lcom/taobao/weex/dom/CSSShorthand<TT;>;"
    .local p1, "edge":Ljava/lang/Enum;, "Ljava/lang/Enum<+Lcom/taobao/weex/dom/CSSShorthand$CSSProperty;>;"
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->ALL:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    if-ne p1, v0, :cond_1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/dom/CSSShorthand;->values:[F

    invoke-static {v0, p2}, Ljava/util/Arrays;->fill([FF)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/dom/CSSShorthand;->values:[F

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput p2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/taobao/weex/dom/CSSShorthand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/taobao/weex/dom/CSSShorthand;, "Lcom/taobao/weex/dom/CSSShorthand<TT;>;"
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/dom/CSSShorthand;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/taobao/weex/dom/CSSShorthand;, "Lcom/taobao/weex/dom/CSSShorthand<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/dom/CSSShorthand;->clone()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F
    .locals 1
    .param p1, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$CORNER;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    .local p0, "this":Lcom/taobao/weex/dom/CSSShorthand;, "Lcom/taobao/weex/dom/CSSShorthand<TT;>;"
    invoke-direct {p0, p1}, Lcom/taobao/weex/dom/CSSShorthand;->getInternal(Ljava/lang/Enum;)F

    move-result v0

    return v0
.end method

.method public get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F
    .locals 1
    .param p1, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    .local p0, "this":Lcom/taobao/weex/dom/CSSShorthand;, "Lcom/taobao/weex/dom/CSSShorthand<TT;>;"
    invoke-direct {p0, p1}, Lcom/taobao/weex/dom/CSSShorthand;->getInternal(Ljava/lang/Enum;)F

    move-result v0

    return v0
.end method

.method public final replace([F)V
    .locals 0
    .param p1, "values"    # [F
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/taobao/weex/dom/CSSShorthand;, "Lcom/taobao/weex/dom/CSSShorthand<TT;>;"
    iput-object p1, p0, Lcom/taobao/weex/dom/CSSShorthand;->values:[F

    .line 94
    return-void
.end method

.method public set(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V
    .locals 0
    .param p1, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$CORNER;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # F
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/taobao/weex/dom/CSSShorthand;, "Lcom/taobao/weex/dom/CSSShorthand<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/dom/CSSShorthand;->setInternal(Ljava/lang/Enum;F)V

    .line 69
    return-void
.end method

.method public set(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 0
    .param p1, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # F
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/taobao/weex/dom/CSSShorthand;, "Lcom/taobao/weex/dom/CSSShorthand<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/dom/CSSShorthand;->setInternal(Ljava/lang/Enum;F)V

    .line 64
    return-void
.end method
