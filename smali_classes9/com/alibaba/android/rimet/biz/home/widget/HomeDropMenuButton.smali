.class public Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;
.super Landroid/widget/FrameLayout;
.source "HomeDropMenuButton.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1040
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040532

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1041
    const v0, 0x7f1108b4

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->a:Landroid/widget/TextView;

    .line 1042
    const v0, 0x7f111279

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->b:Landroid/view/View;

    .line 1043
    const v0, 0x7f111277

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->c:Landroid/view/View;

    .line 1044
    const v0, 0x7f111278

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->d:Landroid/widget/TextView;

    .line 1045
    const v0, 0x7f11037e

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->e:Landroid/view/View;

    .line 37
    return-void
.end method


# virtual methods
.method public setIcon(I)V
    .locals 3
    .param p1, "iconRes"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 57
    if-lez p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 59
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 63
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIconFont(Ljava/lang/String;)V
    .locals 4
    .param p1, "iconFont"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const v3, 0x7f0b01b1

    const/4 v2, 0x0

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    new-instance v0, Lecw;

    const v1, 0x7f1004d1

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 68
    .local v0, "icon":Lecw;
    invoke-static {v3}, Leda;->d(I)I

    move-result v1

    .line 1070
    iput v1, v0, Lecw;->a:I

    .line 69
    invoke-static {v3}, Leda;->d(I)I

    move-result v1

    .line 1079
    iput v1, v0, Lecw;->b:I

    .line 70
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 74
    .end local v0    # "icon":Lecw;
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setRedCount(I)V
    .locals 3
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 77
    if-nez p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->d:Landroid/widget/TextView;

    const-string/jumbo v1, "99+"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->d:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setRedCountNumberShow(Z)V
    .locals 3
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 92
    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setText(I)V
    .locals 1
    .param p1, "stringRes"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 50
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method
