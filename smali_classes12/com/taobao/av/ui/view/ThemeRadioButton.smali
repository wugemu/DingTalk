.class public Lcom/taobao/av/ui/view/ThemeRadioButton;
.super Landroid/widget/RadioButton;
.source "ThemeRadioButton.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/taobao/av/ui/view/ThemeRadioButton;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0}, Lcom/taobao/av/ui/view/ThemeRadioButton;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    invoke-direct {p0}, Lcom/taobao/av/ui/view/ThemeRadioButton;->a()V

    .line 20
    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/taobao/av/ui/view/ThemeRadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/taobao/av/ui/view/ThemeRadioButton;->a:I

    .line 34
    invoke-virtual {p0}, Lcom/taobao/av/ui/view/ThemeRadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ljou$a;->taorecorder_filter_theme_selected_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/taobao/av/ui/view/ThemeRadioButton;->b:I

    .line 36
    invoke-virtual {p0, p0}, Lcom/taobao/av/ui/view/ThemeRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 37
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 41
    if-eqz p2, :cond_0

    .line 42
    iget v0, p0, Lcom/taobao/av/ui/view/ThemeRadioButton;->b:I

    invoke-virtual {p0, v0}, Lcom/taobao/av/ui/view/ThemeRadioButton;->setBackgroundColor(I)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    iget v0, p0, Lcom/taobao/av/ui/view/ThemeRadioButton;->a:I

    invoke-virtual {p0, v0}, Lcom/taobao/av/ui/view/ThemeRadioButton;->setBackgroundColor(I)V

    goto :goto_0
.end method
