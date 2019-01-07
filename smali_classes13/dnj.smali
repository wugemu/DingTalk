.class public final Ldnj;
.super Ldni;
.source "EmphasisNodeHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldni",
        "<",
        "Llcs;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Llcs;Ldnx;)V
    .locals 0
    .param p1, "node"    # Llcs;
    .param p2, "textColorProvider"    # Ldnx;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ldni;-><init>(Lldd;Ldnx;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected final b(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p1, "ssb"    # Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    invoke-static {p1}, Ldnj;->c(Landroid/text/SpannableStringBuilder;)Ljava/util/List;

    move-result-object v1

    .line 30
    .local v1, "fontSpanList":Ljava/util/List;, "Ljava/util/List<Ldnp<Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;>;>;"
    new-instance v0, Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    invoke-virtual {p0}, Ldnj;->a()Ldnx;

    move-result-object v4

    invoke-interface {v4}, Ldnx;->b()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;-><init>(FII)V

    .line 31
    .local v0, "fontSpan":Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 32
    invoke-static {p1, v0, v1}, Ldnj;->a(Landroid/text/SpannableStringBuilder;Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;Ljava/util/List;)V

    .line 33
    return-object p1
.end method
