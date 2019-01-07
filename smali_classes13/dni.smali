.class public abstract Ldni;
.super Ljava/lang/Object;
.source "BaseNodeHandler.java"

# interfaces
.implements Ldno;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lldd;",
        ">",
        "Ljava/lang/Object;",
        "Ldno;"
    }
.end annotation


# static fields
.field protected static final a:I

.field protected static final b:I

.field protected static final c:I

.field protected static final d:I

.field protected static final e:I

.field protected static final f:I

.field protected static final g:I


# instance fields
.field protected h:Lldd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private i:Landroid/text/SpannableStringBuilder;

.field private j:Ldnx;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldni;->a:I

    .line 26
    const-string/jumbo v0, "#666666"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldni;->b:I

    .line 27
    const-string/jumbo v0, "#999999"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldni;->c:I

    .line 28
    const-string/jumbo v0, "#E4E4E4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldni;->d:I

    .line 29
    const-string/jumbo v0, "#F0F0F0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldni;->e:I

    .line 30
    const-string/jumbo v0, "#38ADFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldni;->f:I

    .line 31
    const-string/jumbo v0, "#eeeeee"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldni;->g:I

    return-void
.end method

.method public constructor <init>(Lldd;Ldnx;)V
    .locals 1
    .param p2, "textColorProvider"    # Ldnx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ldnx;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Ldni;, "Ldni<TT;>;"
    .local p1, "t":Lldd;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Ldni;->h:Lldd;

    .line 48
    iput-object p2, p0, Ldni;->j:Ldnx;

    .line 49
    iget-object v0, p0, Ldni;->j:Ldnx;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ldnr;

    invoke-direct {v0}, Ldnr;-><init>()V

    iput-object v0, p0, Ldni;->j:Ldnx;

    .line 52
    :cond_0
    return-void
.end method

.method protected static a(Landroid/text/SpannableStringBuilder;Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;Ljava/util/List;)V
    .locals 6
    .param p0, "ssb"    # Landroid/text/SpannableStringBuilder;
    .param p1, "outterFontSpan"    # Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;",
            "Ljava/util/List",
            "<",
            "Ldnp",
            "<",
            "Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "fontSpanList":Ljava/util/List;, "Ljava/util/List<Ldnp<Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;>;>;"
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    :cond_0
    return-void

    .line 93
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldnp;

    .line 94
    .local v0, "fontSpanSpanSpecific":Ldnp;, "Ldnp<Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;>;"
    if-eqz v0, :cond_2

    .line 1016
    iget-object v1, v0, Ldnp;->a:Ljava/lang/Object;

    .line 94
    if-eqz v1, :cond_2

    .line 1024
    iget v1, v0, Ldnp;->b:I

    .line 95
    if-ltz v1, :cond_2

    .line 2024
    iget v1, v0, Ldnp;->b:I

    .line 95
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2032
    iget v1, v0, Ldnp;->c:I

    .line 96
    if-lez v1, :cond_2

    .line 3032
    iget v1, v0, Ldnp;->c:I

    .line 96
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-gt v1, v3, :cond_2

    .line 97
    new-instance v3, Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;->getSize()F

    move-result v4

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;->getStyle()I

    move-result v5

    .line 4016
    iget-object v1, v0, Ldnp;->a:Ljava/lang/Object;

    .line 98
    check-cast v1, Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;->getColor()I

    move-result v1

    invoke-direct {v3, v4, v5, v1}, Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;-><init>(FII)V

    .line 4024
    iget v1, v0, Ldnp;->b:I

    .line 4032
    iget v4, v0, Ldnp;->c:I

    .line 99
    const/16 v5, 0x21

    .line 97
    invoke-virtual {p0, v3, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method protected static c(Landroid/text/SpannableStringBuilder;)Ljava/util/List;
    .locals 8
    .param p0, "ssb"    # Landroid/text/SpannableStringBuilder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            ")",
            "Ljava/util/List",
            "<",
            "Ldnp",
            "<",
            "Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 106
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v5

    const-string/jumbo v6, "f_im_md_header_parse_with_color"

    .line 4083
    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v5

    .line 106
    if-nez v5, :cond_1

    .line 127
    :cond_0
    return-object v1

    .line 109
    :cond_1
    if-eqz p0, :cond_0

    .line 112
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const-class v6, Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;

    invoke-virtual {p0, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;

    .line 113
    .local v3, "spans":[Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;
    const/4 v1, 0x0

    .line 114
    .local v1, "fontSpanList":Ljava/util/List;, "Ljava/util/List<Ldnp<Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;>;>;"
    if-eqz v3, :cond_0

    array-length v5, v3

    if-lez v5, :cond_0

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "fontSpanList":Ljava/util/List;, "Ljava/util/List<Ldnp<Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;>;>;"
    array-length v5, v3

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .restart local v1    # "fontSpanList":Ljava/util/List;, "Ljava/util/List<Ldnp<Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;>;>;"
    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v3, v4

    .line 118
    .local v0, "fontSpan":Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;
    if-eqz v0, :cond_2

    .line 119
    new-instance v2, Ldnp;

    invoke-direct {v2}, Ldnp;-><init>()V

    .line 5020
    .local v2, "fontSpanSpecific":Ldnp;, "Ldnp<Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;>;"
    iput-object v0, v2, Ldnp;->a:Ljava/lang/Object;

    .line 121
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 5028
    iput v6, v2, Ldnp;->b:I

    .line 122
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 5036
    iput v6, v2, Ldnp;->c:I

    .line 123
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v2    # "fontSpanSpecific":Ldnp;, "Ldnp<Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected final a()Ldnx;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Ldni;, "Ldni<TT;>;"
    iget-object v0, p0, Ldni;->j:Ldnx;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ldnr;

    invoke-direct {v0}, Ldnr;-><init>()V

    iput-object v0, p0, Ldni;->j:Ldnx;

    .line 59
    :cond_0
    iget-object v0, p0, Ldni;->j:Ldnx;

    return-object v0
.end method

.method public final a(Landroid/text/SpannableStringBuilder;)V
    .locals 0
    .param p1, "ssb"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 64
    .local p0, "this":Ldni;, "Ldni<TT;>;"
    iput-object p1, p0, Ldni;->i:Landroid/text/SpannableStringBuilder;

    .line 65
    return-void
.end method

.method public final b()Landroid/text/SpannableStringBuilder;
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Ldni;, "Ldni<TT;>;"
    iget-object v0, p0, Ldni;->h:Lldd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldni;->i:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_1

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ldni;->i:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Ldni;->b(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract b(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
.end method

.method public final c()Landroid/text/SpannableStringBuilder;
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Ldni;, "Ldni<TT;>;"
    iget-object v0, p0, Ldni;->i:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method
