.class public Lcom/alibaba/android/user/widget/IconFontSpan;
.super Landroid/text/style/TypefaceSpan;
.source "IconFontSpan.java"


# instance fields
.field private final newType:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "family"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcka;->a()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/widget/IconFontSpan;->newType:Landroid/graphics/Typeface;

    .line 21
    return-void
.end method

.method private static applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .locals 4
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 36
    .local v1, "old":Landroid/graphics/Typeface;
    if-nez v1, :cond_2

    .line 37
    const/4 v2, 0x0

    .line 42
    .local v2, "oldStyle":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int v0, v2, v3

    .line 43
    .local v0, "fake":I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    .line 44
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 47
    :cond_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 48
    const/high16 v3, -0x41800000    # -0.25f

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 51
    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 52
    return-void

    .line 39
    .end local v0    # "fake":I
    .end local v2    # "oldStyle":I
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    .restart local v2    # "oldStyle":I
    goto :goto_0
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/android/user/widget/IconFontSpan;->newType:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lcom/alibaba/android/user/widget/IconFontSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 26
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/user/widget/IconFontSpan;->newType:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lcom/alibaba/android/user/widget/IconFontSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 31
    return-void
.end method
