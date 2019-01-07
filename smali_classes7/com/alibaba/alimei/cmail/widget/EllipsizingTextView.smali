.class public Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;
.super Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;
.source "EllipsizingTextView.java"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;-><init>(Landroid/content/Context;)V

    .line 15
    const-string/jumbo v0, "..."

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->a:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->b:I

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const-string/jumbo v0, "..."

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->a:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->b:I

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const-string/jumbo v0, "..."

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->a:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->b:I

    .line 28
    return-void
.end method

.method private getVisibleLength()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 71
    .local v1, "start":I
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->getMaxLines()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineEnd(I)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 75
    .local v0, "end":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .end local v0    # "end":I
    :goto_0
    return v2

    .line 73
    :catch_0
    move-exception v2

    const/4 v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getMaxLines()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 80
    invoke-super {p0}, Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;->getMaxLines()I

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 32
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;->onMeasure(II)V

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->getMaxLines()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 36
    .local v0, "originalLength":I
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->getVisibleLength()I

    move-result v1

    .line 37
    .local v1, "visibleLength":I
    if-gez v1, :cond_1

    .line 45
    .end local v0    # "originalLength":I
    .end local v1    # "visibleLength":I
    :cond_0
    :goto_0
    return-void

    .line 41
    .restart local v0    # "originalLength":I
    .restart local v1    # "visibleLength":I
    :cond_1
    if-le v0, v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->b:I

    sub-int v3, v1, v3

    .line 1048
    if-nez v2, :cond_3

    .line 1049
    const/4 v2, 0x0

    .line 42
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1050
    :cond_3
    if-lez v3, :cond_2

    .line 1052
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 1054
    if-ne v3, v5, :cond_4

    .line 1055
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1057
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 1058
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v3, v5, v3

    .line 1059
    div-int/lit8 v5, v3, 0x2

    int-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 1060
    sub-int/2addr v3, v5

    .line 1062
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v5, v4, v5

    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/alimei/cmail/widget/EllipsizingTextView;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
