.class final Lcom/alibaba/android/user/connection/ui/ExtendEditText$b;
.super Ljava/lang/Object;
.source "ExtendEditText.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/ui/ExtendEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/ui/ExtendEditText;

.field private b:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/ui/ExtendEditText;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/ui/ExtendEditText;
    .param p2, "max"    # I

    .prologue
    .line 534
    iput-object p1, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/ExtendEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    iput p2, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText$b;->b:I

    .line 536
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/ExtendEditText;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->b(Lcom/alibaba/android/user/connection/ui/ExtendEditText;)Lcom/alibaba/android/user/connection/ui/ExtendEditText$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/ExtendEditText;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->b(Lcom/alibaba/android/user/connection/ui/ExtendEditText;)Lcom/alibaba/android/user/connection/ui/ExtendEditText$c;

    .line 584
    :cond_0
    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 540
    iget-object v4, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/ExtendEditText;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->a(Lcom/alibaba/android/user/connection/ui/ExtendEditText;)Lcom/alibaba/android/user/connection/ui/ExtendEditText$a;

    move-result-object v2

    .line 542
    .local v2, "lengthConvertor":Lcom/alibaba/android/user/connection/ui/ExtendEditText$a;
    if-nez v2, :cond_0

    .line 543
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    sub-int v5, p6, p5

    sub-int v0, v4, v5

    .line 549
    .local v0, "destReserveLen":I
    :goto_0
    if-nez v2, :cond_1

    .line 550
    sub-int v3, p3, p2

    .line 555
    .local v3, "srcLen":I
    :goto_1
    iget v4, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText$b;->b:I

    sub-int v1, v4, v0

    .line 557
    .local v1, "keep":I
    if-gtz v1, :cond_2

    .line 558
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText$b;->a()V

    .line 559
    const-string/jumbo v4, ""

    .line 577
    :goto_2
    return-object v4

    .line 545
    .end local v0    # "destReserveLen":I
    .end local v1    # "keep":I
    .end local v3    # "srcLen":I
    :cond_0
    const/4 v4, 0x0

    invoke-interface {v2, p4, v4, p5}, Lcom/alibaba/android/user/connection/ui/ExtendEditText$a;->a(Ljava/lang/CharSequence;II)I

    move-result v4

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v5

    invoke-interface {v2, p4, p6, v5}, Lcom/alibaba/android/user/connection/ui/ExtendEditText$a;->a(Ljava/lang/CharSequence;II)I

    move-result v5

    add-int v0, v4, v5

    .restart local v0    # "destReserveLen":I
    goto :goto_0

    .line 552
    :cond_1
    invoke-interface {v2, p1, p2, p3}, Lcom/alibaba/android/user/connection/ui/ExtendEditText$a;->a(Ljava/lang/CharSequence;II)I

    move-result v3

    .restart local v3    # "srcLen":I
    goto :goto_1

    .line 560
    .restart local v1    # "keep":I
    :cond_2
    if-lt v1, v3, :cond_3

    .line 561
    const/4 v4, 0x0

    goto :goto_2

    .line 563
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText$b;->a()V

    .line 564
    if-eqz v2, :cond_4

    .line 565
    add-int v4, p2, v1

    invoke-interface {v2, p1, p2, v4}, Lcom/alibaba/android/user/connection/ui/ExtendEditText$a;->b(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 566
    if-gtz v1, :cond_4

    .line 567
    const-string/jumbo v4, ""

    goto :goto_2

    .line 570
    :cond_4
    add-int/2addr v1, p2

    .line 571
    add-int/lit8 v4, v1, -0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 572
    add-int/lit8 v1, v1, -0x1

    .line 573
    if-ne v1, p2, :cond_5

    .line 574
    const-string/jumbo v4, ""

    goto :goto_2

    .line 577
    :cond_5
    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_2
.end method
