.class public final Ldnk;
.super Ldni;
.source "HeaderNodeHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldni",
        "<",
        "Llcv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Llcv;Ldnx;)V
    .locals 0
    .param p1, "node"    # Llcv;
    .param p2, "textColorProvider"    # Ldnx;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ldni;-><init>(Lldd;Ldnx;)V

    .line 24
    return-void
.end method

.method private a(Ljava/lang/CharSequence;FI)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "s"    # F
    .param p3, "color"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ldnk;->a(Ljava/lang/CharSequence;FIZ)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;FIZ)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "s"    # F
    .param p3, "color"    # I
    .param p4, "isBold"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 63
    .local v2, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-static {v2}, Ldnk;->c(Landroid/text/SpannableStringBuilder;)Ljava/util/List;

    move-result-object v1

    .line 64
    .local v1, "fontSpanList":Ljava/util/List;, "Ljava/util/List<Ldnp<Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;>;>;"
    new-instance v0, Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;

    if-eqz p4, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-direct {v0, p2, v3, p3}, Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;-><init>(FII)V

    .line 65
    .local v0, "fontSpan":Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v5, 0x21

    invoke-virtual {v2, v0, v4, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 66
    invoke-static {v2, v0, v1}, Ldnk;->a(Landroid/text/SpannableStringBuilder;Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;Ljava/util/List;)V

    .line 67
    return-object v2

    .end local v0    # "fontSpan":Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;
    :cond_0
    move v3, v4

    .line 64
    goto :goto_0
.end method


# virtual methods
.method protected final b(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 3
    .param p1, "ssb"    # Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const v1, 0x3fa3d70a    # 1.28f

    .line 28
    iget-object v0, p0, Ldnk;->h:Lldd;

    check-cast v0, Llcv;

    .line 1013
    iget v0, v0, Llcv;->a:I

    .line 28
    packed-switch v0, :pswitch_data_0

    .line 51
    :goto_0
    return-object p1

    .line 1073
    :pswitch_0
    invoke-virtual {p0}, Ldnk;->a()Ldnx;

    move-result-object v0

    invoke-interface {v0}, Ldnx;->b()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Ldnk;->a(Ljava/lang/CharSequence;FI)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 1077
    :pswitch_1
    invoke-virtual {p0}, Ldnk;->a()Ldnx;

    move-result-object v0

    invoke-interface {v0}, Ldnx;->b()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Ldnk;->a(Ljava/lang/CharSequence;FI)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 1081
    :pswitch_2
    invoke-virtual {p0}, Ldnk;->a()Ldnx;

    move-result-object v0

    invoke-interface {v0}, Ldnx;->b()I

    move-result v0

    invoke-direct {p0, p1, v1, v0, v2}, Ldnk;->a(Ljava/lang/CharSequence;FIZ)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 1085
    :pswitch_3
    const v0, 0x3f91eb85    # 1.14f

    invoke-virtual {p0}, Ldnk;->a()Ldnx;

    move-result-object v1

    invoke-interface {v1}, Ldnx;->b()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Ldnk;->a(Ljava/lang/CharSequence;FI)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 1089
    :pswitch_4
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Ldnk;->a()Ldnx;

    move-result-object v1

    invoke-interface {v1}, Ldnx;->c()I

    move-result v1

    invoke-direct {p0, p1, v0, v1, v2}, Ldnk;->a(Ljava/lang/CharSequence;FIZ)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 1093
    :pswitch_5
    const v0, 0x3f5c28f6    # 0.86f

    invoke-virtual {p0}, Ldnk;->a()Ldnx;

    move-result-object v1

    invoke-interface {v1}, Ldnx;->d()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Ldnk;->a(Ljava/lang/CharSequence;FI)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
