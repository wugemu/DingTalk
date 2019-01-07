.class public Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;
.super Landroid/widget/LinearLayout;
.source "ProgressTextBar.java"


# instance fields
.field protected a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;->a()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;->a()V

    .line 36
    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lhdn$i;->progress_bar:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    sget v0, Lhdn$h;->ProgressTextView:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;->a:Landroid/widget/TextView;

    .line 47
    return-void
.end method


# virtual methods
.method public setText(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 51
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    return-void
.end method
