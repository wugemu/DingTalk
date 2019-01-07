.class public Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;
.super Landroid/widget/FrameLayout;
.source "HomeActionBarButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lecw;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->g:Ljava/util/HashMap;

    .line 38
    const v3, 0x7f1004d1

    invoke-static {v3}, Leda;->b(I)I

    move-result v3

    iput v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->h:I

    .line 1087
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04052f

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1088
    const v3, 0x7f1116c8

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->a:Landroid/widget/ImageView;

    .line 1089
    const v3, 0x7f1116c9

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->c:Landroid/widget/TextView;

    .line 1090
    const v3, 0x7f1116ca

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->b:Landroid/view/View;

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Leid$a;->HomeActionBarButton:[I

    invoke-virtual {v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "iconFont":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 57
    .local v2, "iconResId":I
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->f:Ljava/lang/String;

    .line 58
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->f:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 61
    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setIcon(Ljava/lang/String;)V

    .line 65
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    new-instance v3, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton$a;

    invoke-direct {v3, p0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton$a;-><init>(Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;)V

    iput-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->i:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton$a;

    .line 67
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->i:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton$a;

    .line 2012
    invoke-virtual {v3}, Lcmr;->d()V

    .line 68
    return-void

    .line 62
    :cond_1
    if-lez v2, :cond_0

    .line 63
    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setIconDrawable(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->h:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    .prologue
    .line 25
    iget v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->h:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "iconFont"    # Ljava/lang/String;
    .param p2, "redDot"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 99
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->a:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    .line 117
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->g:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lecw;

    .line 104
    .local v0, "drawable":Lecw;
    if-nez v0, :cond_1

    .line 105
    new-instance v1, Lecw;

    iget v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->h:I

    invoke-direct {v1, p1, v3}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 106
    .local v1, "dtIconFontDrawable":Lecw;
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    .line 2079
    .local v2, "size":I
    iput v2, v1, Lecw;->b:I

    .line 3070
    iput v2, v1, Lecw;->a:I

    .line 109
    move-object v0, v1

    .line 110
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->g:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .end local v1    # "dtIconFontDrawable":Lecw;
    .end local v2    # "size":I
    :cond_1
    if-eqz p2, :cond_2

    .line 113
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Lecx;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public getRedCount()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->e:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->i:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton$a;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->i:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton$a;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton$a;->c()V

    .line 76
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->i:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton$a;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->i:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton$a;

    .line 2016
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcmq;->b(Lcmq$a;)V

    .line 84
    :cond_0
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 1
    .param p1, "iconFont"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->a(Ljava/lang/String;Z)V

    .line 95
    return-void
.end method

.method public setIconDrawable(I)V
    .locals 2
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    return-void
.end method

.method public setRedCount(I)V
    .locals 6
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/16 v1, 0x8

    const/4 v5, 0x0

    .line 124
    if-nez p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :goto_0
    iput p1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->e:I

    .line 144
    return-void

    .line 128
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->d:Z

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->c:Landroid/widget/TextView;

    const-string/jumbo v1, "99+"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :goto_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->f:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string/jumbo v1, " "

    aput-object v1, v0, v4

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0906d5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->c:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRedCountNumberShow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->d:Z

    .line 152
    iget v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->e:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setRedCount(I)V

    .line 153
    return-void
.end method
