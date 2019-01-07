.class public final Ldns;
.super Llcm;
.source "CoreLayoutNodeRenderer.java"

# interfaces
.implements Lldy;


# instance fields
.field final a:Ldnu;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Character;

.field private e:Ljava/lang/Character;

.field private f:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ldno;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/text/SpannableStringBuilder;

.field private i:I

.field private j:Z

.field private k:I

.field private l:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Ldnu;)V
    .locals 2
    .param p1, "context"    # Ldnu;

    .prologue
    .line 92
    invoke-direct {p0}, Llcm;-><init>()V

    .line 522
    new-instance v0, Ldns$4;

    invoke-direct {v0, p0}, Ldns$4;-><init>(Ldns;)V

    iput-object v0, p0, Ldns;->l:Landroid/view/View$OnLongClickListener;

    .line 93
    iput-object p1, p0, Ldns;->a:Ldnu;

    .line 94
    iget-object v0, p0, Ldns;->a:Ldnu;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "LayoutNodeRendererContext cannot be null when CoreLayoutNodeRenderer construct"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    .line 98
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Ldns;->f:Ljava/util/Stack;

    .line 99
    invoke-interface {p1}, Ldnu;->a()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Ldns;->g:Landroid/view/ViewGroup;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldns;->b:Ljava/util/List;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldns;->j:Z

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Ldns;->k:I

    .line 103
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 694
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    new-instance v0, Landroid/text/SpannableString;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 703
    :cond_0
    :goto_0
    return-object v0

    .line 698
    :cond_1
    invoke-static {}, Lcok;->a()Lcok;

    .line 699
    iget-object v1, p0, Ldns;->a:Ldnu;

    invoke-interface {v1}, Ldnu;->a()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-static {v1, p1, v2}, Ldpu;->a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;

    move-result-object v0

    .line 700
    .local v0, "spannableString":Landroid/text/SpannableString;
    if-nez v0, :cond_0

    .line 701
    new-instance v0, Landroid/text/SpannableString;

    .end local v0    # "spannableString":Landroid/text/SpannableString;
    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Llcy;Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;
    .locals 1
    .param p1, "image"    # Llcy;
    .param p2, "text"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 709
    iget-object v0, p0, Ldns;->a:Ldnu;

    invoke-interface {v0}, Ldnu;->l()Ldng;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 710
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->buildDefault(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;

    move-result-object v0

    .line 712
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Ldoe;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .param p0, "ssb"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 316
    if-eqz p0, :cond_0

    .line 317
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 319
    const-string/jumbo v1, "\n"

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 322
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static a(Landroid/widget/TextView;)V
    .locals 8
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 194
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    :cond_0
    return-void

    .line 197
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    instance-of v3, v3, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    .line 198
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spanned;

    .line 199
    .local v1, "spanned":Landroid/text/Spanned;
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v6, Ldoc;

    invoke-interface {v1, v5, v3, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ldoc;

    .line 200
    .local v2, "spans":[Ldoc;
    if-eqz v1, :cond_0

    .line 201
    array-length v7, v2

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v0, v2, v6

    .line 202
    .local v0, "imageSpanAdapter":Ldoc;
    if-eqz v0, :cond_2

    .line 2081
    iput-object p0, v0, Ldoc;->a:Landroid/widget/TextView;

    .line 2222
    iget-object v3, v0, Ldoc;->a:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget-object v3, v0, Ldoc;->b:Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate;

    if-eqz v3, :cond_3

    iget-object v3, v0, Ldoc;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    if-eqz v3, :cond_3

    iget-object v3, v0, Ldoc;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    .line 2082
    :goto_1
    if-eqz v3, :cond_2

    .line 2083
    invoke-virtual {v0, v4}, Ldoc;->a(Z)V

    .line 201
    :cond_2
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_0

    :cond_3
    move v3, v5

    .line 2222
    goto :goto_1
.end method

.method private a(Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;)V
    .locals 6
    .param p1, "levelFrameLayout"    # Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;
    .param p2, "textStyle"    # Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 248
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const/4 v3, 0x0

    .line 252
    .local v3, "withTopMargin":Z
    iget-boolean v4, p0, Ldns;->j:Z

    if-eqz v4, :cond_2

    .line 253
    const/4 v4, 0x0

    iput-boolean v4, p0, Ldns;->j:Z

    .line 254
    const/4 v3, 0x1

    .line 256
    :cond_2
    invoke-static {p2}, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->hasMargin(Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 258
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    instance-of v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 261
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 262
    .local v2, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$d;->chat_item_md_text_padding:I

    .line 263
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 264
    .local v1, "margin":I
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 265
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 266
    if-eqz v3, :cond_0

    .line 267
    sget v4, Ldnt;->a:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "literal"    # Ljava/lang/String;
    .param p2, "toggleLine"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 653
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 654
    iget-object v2, p0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 655
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 656
    .local v1, "ssb":Landroid/text/SpannableStringBuilder;
    if-eqz p2, :cond_0

    .line 657
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 659
    :cond_0
    invoke-direct {p0, p1}, Ldns;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 660
    if-eqz p2, :cond_1

    .line 661
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 663
    :cond_1
    iget-object v2, p0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldno;

    .line 664
    .local v0, "peek":Ldno;
    invoke-interface {v0}, Ldno;->c()Landroid/text/SpannableStringBuilder;

    move-result-object v2

    if-nez v2, :cond_3

    .line 665
    invoke-interface {v0, v1}, Ldno;->a(Landroid/text/SpannableStringBuilder;)V

    .line 679
    .end local v0    # "peek":Ldno;
    .end local v1    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_2
    :goto_0
    return-void

    .line 667
    .restart local v0    # "peek":Ldno;
    .restart local v1    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_3
    invoke-interface {v0}, Ldno;->c()Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-interface {v0, v2}, Ldno;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 670
    .end local v0    # "peek":Ldno;
    .end local v1    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_4
    if-eqz p2, :cond_5

    .line 671
    iget-object v2, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    invoke-static {v2}, Ldns;->a(Landroid/text/SpannableStringBuilder;)V

    .line 673
    :cond_5
    iget-object v2, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1}, Ldns;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 674
    if-eqz p2, :cond_2

    .line 675
    iget-object v2, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    invoke-static {v2}, Ldns;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 220
    iget-object v4, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "content":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 222
    iget-object v4, p0, Ldns;->a:Ldnu;

    invoke-interface {v4}, Ldnu;->a()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0}, Ldns;->e()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->getTextStyle()Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    move-result-object v5

    invoke-direct {p0}, Ldns;->e()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->getTextColorProvider()Ldnx;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ldnt;->b(Landroid/content/Context;Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;Ldnx;)Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;

    move-result-object v2

    .line 223
    .local v2, "levelFrameLayout":Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;
    iget v4, p0, Ldns;->i:I

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->setLevel(I)V

    .line 224
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, "childAt":Landroid/view/View;
    if-eqz v0, :cond_2

    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    move-object v3, v0

    .line 226
    check-cast v3, Landroid/widget/TextView;

    .line 227
    .local v3, "textView":Landroid/widget/TextView;
    const-string/jumbo v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    iget-object v4, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 230
    :cond_0
    iget-object v4, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    invoke-static {v4}, Ldom;->a(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v4, p0, Ldns;->a:Ldnu;

    invoke-interface {v4}, Ldnu;->k()Ldnu$c;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 232
    new-instance v4, Ldns$2;

    invoke-direct {v4, p0}, Ldns$2;-><init>(Ldns;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 239
    :cond_1
    iget-object v4, p0, Ldns;->g:Landroid/view/ViewGroup;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    invoke-direct {p0}, Ldns;->e()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->getTextStyle()Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Ldns;->a(Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;)V

    .line 241
    invoke-static {v3}, Ldns;->a(Landroid/widget/TextView;)V

    .line 243
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_2
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v4, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    .line 245
    .end local v0    # "childAt":Landroid/view/View;
    .end local v2    # "levelFrameLayout":Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;
    :cond_3
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldno;

    invoke-interface {v0}, Ldno;->c()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {v0}, Ldns;->a(Landroid/text/SpannableStringBuilder;)V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Ldns;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 549
    iget-object v3, p0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 550
    iget-object v3, p0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldno;

    .line 551
    .local v2, "pop":Ldno;
    invoke-interface {v2}, Ldno;->b()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 552
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 553
    iget-object v3, p0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldno;

    .line 554
    .local v1, "peek":Ldno;
    invoke-interface {v1}, Ldno;->c()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    if-nez v3, :cond_1

    .line 555
    invoke-interface {v1, v0}, Ldno;->a(Landroid/text/SpannableStringBuilder;)V

    .line 567
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v1    # "peek":Ldno;
    .end local v2    # "pop":Ldno;
    :cond_0
    :goto_0
    return-void

    .line 557
    .restart local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .restart local v1    # "peek":Ldno;
    .restart local v2    # "pop":Ldno;
    :cond_1
    if-eqz v0, :cond_0

    .line 558
    invoke-interface {v1}, Ldno;->c()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-interface {v1, v3}, Ldno;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 562
    .end local v1    # "peek":Ldno;
    :cond_2
    if-eqz v0, :cond_0

    .line 563
    iget-object v3, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private e()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Ldns;->a:Ldnu;

    invoke-interface {v0}, Ldnu;->j()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 683
    sget-object v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->NORMAL:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    .line 685
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldns;->a:Ldnu;

    invoke-interface {v0}, Ldnu;->j()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lldd;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Llcr;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Llcv;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lldf;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Llco;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Llcp;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Llct;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Llcw;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lldj;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Llcz;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Llda;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lldc;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Llde;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-class v3, Llcy;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-class v3, Llcs;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-class v3, Lldh;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-class v3, Lldi;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-class v3, Llcq;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-class v3, Llcx;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-class v3, Lldg;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-class v3, Llcu;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final a(Llco;)V
    .locals 1
    .param p1, "blockQuote"    # Llco;

    .prologue
    .line 212
    invoke-direct {p0}, Ldns;->b()V

    .line 213
    iget v0, p0, Ldns;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldns;->i:I

    .line 214
    invoke-virtual {p0, p1}, Ldns;->b(Lldd;)V

    .line 215
    invoke-direct {p0}, Ldns;->b()V

    .line 216
    iget v0, p0, Ldns;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ldns;->i:I

    .line 217
    return-void
.end method

.method public final a(Llcp;)V
    .locals 1
    .param p1, "bulletList"    # Llcp;

    .prologue
    .line 274
    .line 3013
    iget-char v0, p1, Llcp;->a:C

    .line 274
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Ldns;->e:Ljava/lang/Character;

    .line 275
    invoke-virtual {p0, p1}, Ldns;->b(Lldd;)V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Ldns;->e:Ljava/lang/Character;

    .line 277
    return-void
.end method

.method public final a(Llcq;)V
    .locals 2
    .param p1, "code"    # Llcq;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 281
    .line 3020
    iget-object v0, p1, Llcq;->a:Ljava/lang/String;

    .line 281
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ldns;->a(Ljava/lang/String;Z)V

    .line 282
    return-void
.end method

.method public final a(Llcr;)V
    .locals 6
    .param p1, "document"    # Llcr;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Ldns;->b(Lldd;)V

    .line 1145
    iget-object v0, p0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1146
    :cond_0
    :goto_0
    iget-object v0, p0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1147
    iget-object v0, p0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldno;

    .line 1148
    invoke-interface {v0}, Ldno;->b()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 1149
    iget-object v0, p0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1150
    iget-object v0, p0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldno;

    .line 1151
    invoke-interface {v0}, Ldno;->c()Landroid/text/SpannableStringBuilder;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1152
    invoke-interface {v0, v1}, Ldno;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 1154
    :cond_1
    if-eqz v1, :cond_0

    .line 1155
    invoke-interface {v0}, Ldno;->c()Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Ldno;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 1159
    :cond_2
    if-eqz v1, :cond_0

    .line 1160
    iget-object v0, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 1165
    :cond_3
    iget-object v0, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1166
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1167
    iget-object v0, p0, Ldns;->a:Ldnu;

    invoke-interface {v0}, Ldnu;->a()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Ldns;->e()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->getTextStyle()Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    move-result-object v2

    invoke-direct {p0}, Ldns;->e()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->getTextColorProvider()Ldnx;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ldnt;->b(Landroid/content/Context;Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;Ldnx;)Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;

    move-result-object v2

    .line 1168
    iget v0, p0, Ldns;->i:I

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->setLevel(I)V

    .line 1169
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1170
    if-eqz v0, :cond_6

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .line 1171
    check-cast v0, Landroid/widget/TextView;

    .line 1172
    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1173
    iget-object v3, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1175
    :cond_4
    iget-object v1, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Ldom;->a(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    iget-object v1, p0, Ldns;->a:Ldnu;

    invoke-interface {v1}, Ldnu;->k()Ldnu$c;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1177
    new-instance v1, Ldns$1;

    invoke-direct {v1, p0}, Ldns$1;-><init>(Ldns;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1184
    :cond_5
    iget-object v1, p0, Ldns;->g:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1185
    invoke-direct {p0}, Ldns;->e()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->getTextStyle()Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Ldns;->a(Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;)V

    .line 1186
    invoke-static {v0}, Ldns;->a(Landroid/widget/TextView;)V

    .line 1188
    :cond_6
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    .line 1190
    :cond_7
    iget-object v0, p0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 142
    return-void
.end method

.method public final a(Llcs;)V
    .locals 3
    .param p1, "emphasis"    # Llcs;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 647
    iget-object v0, p0, Ldns;->f:Ljava/util/Stack;

    new-instance v1, Ldnj;

    invoke-direct {p0}, Ldns;->e()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->getTextColorProvider()Ldnx;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ldnj;-><init>(Llcs;Ldnx;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    invoke-virtual {p0, p1}, Ldns;->b(Lldd;)V

    .line 649
    invoke-direct {p0}, Ldns;->d()V

    .line 650
    return-void
.end method

.method public final a(Llct;)V
    .locals 2
    .param p1, "fencedCodeBlock"    # Llct;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 286
    .line 3053
    iget-object v0, p1, Llct;->e:Ljava/lang/String;

    .line 286
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ldns;->a(Ljava/lang/String;Z)V

    .line 287
    return-void
.end method

.method public final a(Llcu;)V
    .locals 0
    .param p1, "hardLineBreak"    # Llcu;

    .prologue
    .line 605
    invoke-direct {p0}, Ldns;->c()V

    .line 606
    return-void
.end method

.method public final a(Llcv;)V
    .locals 5
    .param p1, "heading"    # Llcv;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 291
    invoke-direct {p0}, Ldns;->c()V

    .line 292
    invoke-direct {p0}, Ldns;->e()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->getTextStyle()Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->WITH_MARGIN_HEADER:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    if-ne v2, v3, :cond_0

    .line 293
    iget-object v2, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 294
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v2, " "

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 295
    .local v1, "ssb":Landroid/text/SpannableStringBuilder;
    new-instance v0, Ldod;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v2}, Ldod;-><init>(F)V

    .line 296
    .local v0, "absoluteSizeSpan":Ldod;
    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 297
    iget-object v2, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 298
    iget-object v2, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    invoke-static {v2}, Ldns;->a(Landroid/text/SpannableStringBuilder;)V

    .line 301
    .end local v0    # "absoluteSizeSpan":Ldod;
    .end local v1    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_0
    iget-object v2, p0, Ldns;->f:Ljava/util/Stack;

    new-instance v3, Ldnk;

    invoke-direct {p0}, Ldns;->e()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->getTextColorProvider()Ldnx;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ldnk;-><init>(Llcv;Ldnx;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {p0, p1}, Ldns;->b(Lldd;)V

    .line 303
    invoke-direct {p0}, Ldns;->c()V

    .line 304
    invoke-direct {p0}, Ldns;->d()V

    .line 305
    return-void
.end method

.method public final a(Llcw;)V
    .locals 0
    .param p1, "htmlBlock"    # Llcw;

    .prologue
    .line 401
    return-void
.end method

.method public final a(Llcx;)V
    .locals 12
    .param p1, "htmlInline"    # Llcx;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x7

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 361
    .line 4018
    iget-object v5, p1, Llcx;->a:Ljava/lang/String;

    .line 361
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 5018
    :cond_1
    iget-object v4, p1, Llcx;->a:Ljava/lang/String;

    .line 365
    .local v4, "text":Ljava/lang/String;
    sget-object v5, Ldnl;->i:Ljava/util/regex/Matcher;

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 366
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 367
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-le v5, v6, :cond_0

    .line 368
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "colorStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 370
    const-string/jumbo v5, "#"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 371
    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v6, "#"

    aput-object v6, v5, v9

    aput-object v1, v5, v10

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    :cond_2
    invoke-direct {p0}, Ldns;->e()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->getTextColorProvider()Ldnx;

    move-result-object v5

    invoke-interface {v5}, Ldnx;->a()I

    move-result v0

    .line 375
    .local v0, "color":I
    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 382
    :goto_1
    iget-object v5, p0, Ldns;->f:Ljava/util/Stack;

    new-instance v6, Ldnl;

    invoke-direct {p0}, Ldns;->e()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->getTextColorProvider()Ldnx;

    move-result-object v7

    invoke-direct {v6, p1, v0, v7}, Ldnl;-><init>(Lldd;ILdnx;)V

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 376
    :catch_0
    move-exception v2

    .line 377
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    const-string/jumbo v5, "im"

    const/4 v6, 0x0

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "[CoreLayoutNodeRenderer]"

    aput-object v8, v7, v9

    const-string/jumbo v8, " parseColor:"

    aput-object v8, v7, v10

    aput-object v1, v7, v11

    const/4 v8, 0x3

    const-string/jumbo v9, ", exception:"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    .line 380
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 379
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 378
    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 386
    .end local v0    # "color":I
    .end local v1    # "colorStr":Ljava/lang/String;
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_3
    sget-object v5, Ldnl;->j:Ljava/util/regex/Matcher;

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 387
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ldnl;

    if-eqz v5, :cond_0

    .line 388
    invoke-direct {p0}, Ldns;->d()V

    goto/16 :goto_0
.end method

.method public final a(Llcy;)V
    .locals 17
    .param p1, "image"    # Llcy;

    .prologue
    .line 405
    move-object/from16 v0, p0

    iget v3, v0, Ldns;->k:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_1

    .line 407
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lctk$i;->dt_md_picuture_over_limit:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Ldns;->a(Ljava/lang/String;Z)V

    .line 12495
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Ldns;->k:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ldns;->k:I

    .line 411
    const/4 v11, 0x0

    .line 412
    .local v11, "dtImageFormat":Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;
    move-object/from16 v0, p0

    iget-object v3, v0, Ldns;->a:Ldnu;

    invoke-interface {v3}, Ldnu;->l()Ldng;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 413
    move-object/from16 v0, p0

    iget-object v3, v0, Ldns;->a:Ldnu;

    invoke-interface {v3}, Ldnu;->l()Ldng;

    move-result-object v3

    .line 5048
    if-nez p1, :cond_3

    .line 5049
    const/4 v11, 0x0

    .line 416
    :goto_1
    if-nez v11, :cond_2

    .line 417
    if-eqz p1, :cond_2

    .line 6022
    move-object/from16 v0, p1

    iget-object v3, v0, Lldd;->g:Lldd;

    .line 418
    instance-of v3, v3, Lldi;

    if-eqz v3, :cond_4

    .line 7022
    move-object/from16 v0, p1

    iget-object v3, v0, Lldd;->g:Lldd;

    .line 419
    check-cast v3, Lldi;

    check-cast v3, Lldi;

    .line 8020
    iget-object v3, v3, Lldi;->a:Ljava/lang/String;

    .line 419
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Ldns;->a(Llcy;Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;

    move-result-object v11

    .line 423
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Ldns;->a:Ldnu;

    invoke-interface {v3}, Ldnu;->l()Ldng;

    move-result-object v3

    .line 8055
    if-eqz p1, :cond_2

    .line 8058
    iget-object v3, v3, Ldng;->a:Landroid/util/LruCache;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v11}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_2
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->isInlineImage()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 428
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 431
    .local v13, "imageStringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_im_md_support_inline_img"

    invoke-virtual {v3, v4}, Lchx;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 432
    new-instance v2, Ldoc;

    move-object/from16 v0, p0

    iget-object v3, v0, Ldns;->a:Ldnu;

    invoke-interface {v3}, Ldnu;->a()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Ldns;->a:Ldnu;

    .line 433
    invoke-interface {v4}, Ldnu;->c()Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v4

    .line 9022
    move-object/from16 v0, p1

    iget-object v5, v0, Llcy;->a:Ljava/lang/String;

    .line 433
    move-object/from16 v0, p0

    iget-object v6, v0, Ldns;->a:Ldnu;

    invoke-interface {v6}, Ldnu;->g()Lcom/alibaba/wukong/im/Message;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Ldns;->a:Ldnu;

    .line 434
    invoke-interface {v7}, Ldnu;->f()Ljava/util/Map;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Ldns;->a:Ldnu;

    invoke-interface {v8}, Ldnu;->b()Landroid/widget/ListView;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ldoc;-><init>(Landroid/content/Context;Lcom/alibaba/doraemon/image/ImageMagician;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Ljava/util/Map;Landroid/widget/AbsListView;)V

    .line 435
    .local v2, "imageSpanAdapter":Ldoc;
    const-string/jumbo v3, " "

    invoke-virtual {v13, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 436
    const/4 v3, 0x0

    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x11

    invoke-virtual {v13, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 445
    .end local v2    # "imageSpanAdapter":Ldoc;
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 446
    move-object/from16 v0, p0

    iget-object v3, v0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ldno;

    .line 447
    .local v15, "peek":Ldno;
    invoke-interface {v15}, Ldno;->c()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    if-nez v3, :cond_7

    .line 448
    invoke-interface {v15, v13}, Ldno;->a(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    .line 5051
    .end local v13    # "imageStringBuilder":Landroid/text/SpannableStringBuilder;
    .end local v15    # "peek":Ldno;
    :cond_3
    iget-object v3, v3, Ldng;->a:Landroid/util/LruCache;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;

    move-object v11, v3

    goto/16 :goto_1

    .line 421
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Ldns;->a(Llcy;Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;

    move-result-object v11

    goto/16 :goto_2

    .line 438
    .restart local v13    # "imageStringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_5
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->getTips()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 439
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lctk$i;->lst_msg_tip_pic:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 441
    :cond_6
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->getTips()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 450
    .restart local v15    # "peek":Ldno;
    :cond_7
    invoke-interface {v15}, Ldno;->c()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-interface {v15, v3}, Ldno;->a(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    .line 453
    .end local v15    # "peek":Ldno;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 456
    .end local v13    # "imageStringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_9
    invoke-direct/range {p0 .. p0}, Ldns;->b()V

    .line 10022
    move-object/from16 v0, p1

    iget-object v3, v0, Llcy;->a:Ljava/lang/String;

    .line 457
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 11022
    move-object/from16 v0, p1

    iget-object v3, v0, Llcy;->a:Ljava/lang/String;

    .line 458
    move-object/from16 v0, p0

    iget-object v4, v0, Ldns;->a:Ldnu;

    invoke-interface {v4}, Ldnu;->g()Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ldns;->a:Ldnu;

    invoke-interface {v5}, Ldnu;->f()Ljava/util/Map;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Ldns;->e()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->getImageStyle()Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Ldof;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;)Ldof$a;

    move-result-object v12

    .line 459
    .local v12, "imageInfo":Ldof$a;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ldof$a;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Ldns;->a:Ldnu;

    invoke-interface {v3}, Ldnu;->a()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ldnt;->b(Landroid/content/Context;)Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;

    move-result-object v14

    .line 463
    .local v14, "levelImageFrameLayout":Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;
    if-eqz v14, :cond_0

    .line 464
    move-object/from16 v0, p0

    iget v3, v0, Ldns;->i:I

    invoke-virtual {v14, v3}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->setLevel(I)V

    .line 465
    new-instance v3, Ldns$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Ldns$3;-><init>(Ldns;Llcy;)V

    invoke-virtual {v14, v3}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Ldns;->l:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v14, v3}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v6, v0, Ldns;->a:Ldnu;

    move-object/from16 v0, p0

    iget-object v3, v0, Ldns;->a:Ldnu;

    invoke-interface {v3}, Ldnu;->e()Z

    move-result v16

    .line 11078
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ldof$a;->a()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v6, :cond_b

    .line 475
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Ldns;->b:Ljava/util/List;

    .line 12022
    move-object/from16 v0, p1

    iget-object v4, v0, Llcy;->a:Ljava/lang/String;

    .line 475
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    move-object/from16 v0, p0

    iget-object v3, v0, Ldns;->g:Landroid/view/ViewGroup;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    invoke-direct/range {p0 .. p0}, Ldns;->e()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->getTextStyle()Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    move-result-object v3

    .line 12486
    if-eqz v14, :cond_0

    if-eqz v3, :cond_0

    .line 12489
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ldns;->j:Z

    if-eqz v4, :cond_11

    .line 12490
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Ldns;->j:Z

    goto/16 :goto_0

    .line 11081
    :cond_b
    iget-object v3, v14, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->a:Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;

    if-eqz v3, :cond_e

    .line 11083
    iget-object v3, v14, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->a:Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 11084
    iget v4, v12, Ldof$a;->f:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    iget v5, v12, Ldof$a;->e:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 11085
    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_c

    .line 11086
    const/high16 v4, 0x40000000    # 2.0f

    .line 11088
    :cond_c
    iget-object v5, v14, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->a:Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;

    invoke-virtual {v5, v4}, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->setHeightWidthRatio(F)V

    .line 11089
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_d

    .line 11090
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11091
    sget v4, Ldnt;->c:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 11094
    :cond_d
    invoke-interface {v6}, Ldnu;->c()Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 11095
    invoke-interface {v6}, Ldnu;->c()Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v3

    iget-object v4, v14, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->a:Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;

    iget-object v5, v12, Ldof$a;->b:Ljava/lang/String;

    invoke-interface {v6}, Ldnu;->b()Landroid/widget/ListView;

    move-result-object v6

    iget v7, v12, Ldof$a;->a:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v12, Ldof$a;->h:Ljava/util/Map;

    invoke-interface/range {v3 .. v10}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 11098
    :cond_e
    iget-boolean v3, v12, Ldof$a;->g:Z

    if-nez v3, :cond_f

    .line 11099
    iget-object v3, v14, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->b:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11100
    iget-object v3, v14, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->c:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 11102
    :cond_f
    if-eqz v16, :cond_10

    .line 11103
    iget-object v3, v14, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->b:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11104
    iget-object v3, v14, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->c:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 11106
    :cond_10
    iget-object v3, v14, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->b:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11107
    iget-object v3, v14, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->c:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 12492
    :cond_11
    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->hasMargin(Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12493
    invoke-virtual {v14}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 12494
    if-eqz v3, :cond_0

    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_0

    .line 12497
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 12498
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$d;->chat_item_md_text_padding:I

    .line 12499
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 12500
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 12501
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 12502
    sget v4, Ldnt;->a:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_0
.end method

.method public final a(Llcz;)V
    .locals 2
    .param p1, "indentedCodeBlock"    # Llcz;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 532
    .line 13013
    iget-object v0, p1, Llcz;->a:Ljava/lang/String;

    .line 532
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ldns;->a(Ljava/lang/String;Z)V

    .line 533
    return-void
.end method

.method public final a(Llda;)V
    .locals 7
    .param p1, "link"    # Llda;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 537
    iget-object v6, p0, Ldns;->f:Ljava/util/Stack;

    new-instance v0, Ldnm;

    iget-object v1, p0, Ldns;->a:Ldnu;

    invoke-interface {v1}, Ldnu;->d()J

    move-result-wide v2

    iget-object v1, p0, Ldns;->a:Ldnu;

    invoke-interface {v1}, Ldnu;->h()Ldnu$b;

    move-result-object v4

    invoke-direct {p0}, Ldns;->e()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->getTextColorProvider()Ldnx;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ldnm;-><init>(Llda;JLdnu$b;Ldnx;)V

    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    invoke-virtual {p0, p1}, Ldns;->b(Lldd;)V

    .line 539
    invoke-direct {p0}, Ldns;->d()V

    .line 541
    return-void
.end method

.method public final a(Lldc;)V
    .locals 5
    .param p1, "listItem"    # Lldc;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 571
    iget-object v0, p0, Ldns;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Ldns;->f:Ljava/util/Stack;

    new-instance v1, Ldnn;

    iget-object v2, p0, Ldns;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0}, Ldns;->e()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->getTextColorProvider()Ldnx;

    move-result-object v3

    invoke-direct {v1, p1, v2, v4, v3}, Ldnn;-><init>(Lldc;ILandroid/widget/TextView;Ldnx;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    invoke-virtual {p0, p1}, Ldns;->b(Lldd;)V

    .line 574
    iget-object v0, p0, Ldns;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldns;->c:Ljava/lang/Integer;

    .line 579
    :cond_0
    :goto_0
    invoke-direct {p0}, Ldns;->d()V

    .line 580
    invoke-direct {p0}, Ldns;->c()V

    .line 581
    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Ldns;->e:Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Ldns;->f:Ljava/util/Stack;

    new-instance v1, Ldnn;

    const/4 v2, 0x0

    invoke-direct {p0}, Ldns;->e()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->getTextColorProvider()Ldnx;

    move-result-object v3

    invoke-direct {v1, p1, v2, v4, v3}, Ldnn;-><init>(Lldc;ILandroid/widget/TextView;Ldnx;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    invoke-virtual {p0, p1}, Ldns;->b(Lldd;)V

    goto :goto_0
.end method

.method public final a(Lldd;)V
    .locals 0
    .param p1, "node"    # Lldd;

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p1, p0}, Lldd;->a(Lldk;)V

    .line 136
    :cond_0
    return-void
.end method

.method public final a(Llde;)V
    .locals 2
    .param p1, "orderedList"    # Llde;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 585
    .line 13014
    iget v0, p1, Llde;->a:I

    .line 585
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldns;->c:Ljava/lang/Integer;

    .line 13022
    iget-char v0, p1, Llde;->c:C

    .line 586
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Ldns;->d:Ljava/lang/Character;

    .line 587
    invoke-virtual {p0, p1}, Ldns;->b(Lldd;)V

    .line 588
    iput-object v1, p0, Ldns;->c:Ljava/lang/Integer;

    .line 589
    iput-object v1, p0, Ldns;->d:Ljava/lang/Character;

    .line 590
    return-void
.end method

.method public final a(Lldf;)V
    .locals 1
    .param p1, "paragraph"    # Lldf;

    .prologue
    .line 594
    iget-object v0, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Ldns;->a(Landroid/text/SpannableStringBuilder;)V

    .line 595
    invoke-virtual {p0, p1}, Ldns;->b(Lldd;)V

    .line 596
    return-void
.end method

.method public final a(Lldg;)V
    .locals 2
    .param p1, "softLineBreak"    # Lldg;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 600
    .line 13326
    iget-object v0, p0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13327
    iget-object v0, p0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldno;

    invoke-interface {v0}, Ldno;->c()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 13331
    :goto_0
    if-eqz v0, :cond_0

    .line 13332
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 601
    :cond_0
    return-void

    .line 13329
    :cond_1
    iget-object v0, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method public final a(Lldh;)V
    .locals 3
    .param p1, "strongEmphasis"    # Lldh;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 640
    iget-object v0, p0, Ldns;->f:Ljava/util/Stack;

    new-instance v1, Ldnq;

    invoke-direct {p0}, Ldns;->e()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->getTextColorProvider()Ldnx;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ldnq;-><init>(Lldh;Ldnx;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    invoke-virtual {p0, p1}, Ldns;->b(Lldd;)V

    .line 642
    invoke-direct {p0}, Ldns;->d()V

    .line 643
    return-void
.end method

.method public final a(Lldi;)V
    .locals 3
    .param p1, "text"    # Lldi;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 610
    iget-object v1, p0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 611
    iget-object v1, p0, Ldns;->f:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldno;

    .line 612
    .local v0, "peek":Ldno;
    invoke-interface {v0}, Ldno;->c()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 14020
    iget-object v1, p1, Lldi;->a:Ljava/lang/String;

    .line 613
    if-eqz v1, :cond_0

    .line 614
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 15020
    iget-object v2, p1, Lldi;->a:Ljava/lang/String;

    .line 614
    invoke-direct {p0, v2}, Ldns;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Ldno;->a(Landroid/text/SpannableStringBuilder;)V

    .line 626
    .end local v0    # "peek":Ldno;
    :cond_0
    :goto_0
    return-void

    .line 16020
    .restart local v0    # "peek":Ldno;
    :cond_1
    iget-object v1, p1, Lldi;->a:Ljava/lang/String;

    .line 617
    if-eqz v1, :cond_0

    .line 618
    invoke-interface {v0}, Ldno;->c()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 17020
    iget-object v2, p1, Lldi;->a:Ljava/lang/String;

    .line 618
    invoke-direct {p0, v2}, Ldns;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Ldno;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 18020
    .end local v0    # "peek":Ldno;
    :cond_2
    iget-object v1, p1, Lldi;->a:Ljava/lang/String;

    .line 622
    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Ldns;->h:Landroid/text/SpannableStringBuilder;

    .line 19020
    iget-object v2, p1, Lldi;->a:Ljava/lang/String;

    .line 623
    invoke-direct {p0, v2}, Ldns;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method public final a(Lldj;)V
    .locals 7
    .param p1, "thematicBreak"    # Lldj;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 348
    invoke-direct {p0}, Ldns;->b()V

    .line 349
    iget-object v1, p0, Ldns;->a:Ldnu;

    invoke-interface {v1}, Ldnu;->a()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldnt;->c(Landroid/content/Context;)Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;

    move-result-object v0

    .line 350
    .local v0, "levelLineFrameLayout":Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;
    if-eqz v0, :cond_0

    .line 351
    iget v1, p0, Ldns;->i:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;->setLevel(I)V

    .line 352
    iget-object v1, p0, Ldns;->g:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    invoke-direct {p0}, Ldns;->e()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->getTextStyle()Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    move-result-object v1

    .line 3508
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 3515
    :cond_0
    :goto_0
    return-void

    .line 3511
    :cond_1
    iget-boolean v2, p0, Ldns;->j:Z

    if-eqz v2, :cond_2

    .line 3512
    iput-boolean v5, p0, Ldns;->j:Z

    .line 3514
    :cond_2
    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->hasMargin(Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3515
    const/4 v1, 0x7

    const/16 v2, 0x8

    invoke-virtual {v0, v6, v1, v6, v2}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;->a(IIII)V

    goto :goto_0

    .line 3518
    :cond_3
    const/4 v1, 0x5

    invoke-virtual {v0, v5, v6, v5, v1}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;->a(IIII)V

    goto :goto_0
.end method

.method protected final b(Lldd;)V
    .locals 3
    .param p1, "parent"    # Lldd;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 630
    .line 19022
    iget-object v1, p1, Lldd;->g:Lldd;

    .line 631
    .local v1, "node":Lldd;
    :goto_0
    if-eqz v1, :cond_0

    .line 20014
    iget-object v0, v1, Lldd;->j:Lldd;

    .line 633
    .local v0, "next":Lldd;
    iget-object v2, p0, Ldns;->a:Ldnu;

    invoke-interface {v2, v1}, Ldnu;->a(Lldd;)V

    .line 634
    move-object v1, v0

    .line 635
    goto :goto_0

    .line 636
    .end local v0    # "next":Lldd;
    :cond_0
    return-void
.end method
