.class final Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$b;
.super Landroid/text/InputFilter$LengthFilter;
.source "EditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;ILjava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;
    .param p2, "max"    # I
    .param p3, "showTip"    # Ljava/lang/String;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$b;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    .line 454
    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 455
    iput p2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$b;->b:I

    .line 456
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p1}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f091cca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$b;->c:Ljava/lang/String;

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    iput-object p3, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$b;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 470
    iget v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$b;->b:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 472
    .local v0, "keep":I
    if-gtz v0, :cond_0

    .line 473
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$b;->c:Ljava/lang/String;

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 474
    const-string/jumbo v1, ""

    .line 486
    :goto_0
    return-object v1

    .line 475
    :cond_0
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_1

    .line 476
    const/4 v1, 0x0

    goto :goto_0

    .line 478
    :cond_1
    add-int/2addr v0, p2

    .line 479
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 480
    add-int/lit8 v0, v0, -0x1

    .line 481
    if-ne v0, p2, :cond_2

    .line 482
    const-string/jumbo v1, ""

    goto :goto_0

    .line 486
    :cond_2
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method
