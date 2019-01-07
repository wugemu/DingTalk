.class public Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;
.super Landroid/widget/FrameLayout;
.source "HomeBottomTabButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private j:Z

.field private k:Landroid/view/animation/Animation;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:I

.field private s:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a:I

    .line 36
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const v3, 0x7f10047a

    invoke-static {v3}, Leda;->b(I)I

    move-result v3

    iput v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->p:I

    .line 56
    const v3, 0x7f1004d1

    invoke-static {v3}, Leda;->b(I)I

    move-result v3

    iput v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->r:I

    .line 1112
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040531

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1113
    const v3, 0x7f1116d3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->c:Landroid/widget/ImageView;

    .line 1114
    const v3, 0x7f1116d4

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->d:Landroid/widget/ImageView;

    .line 1115
    const v3, 0x7f1116d5

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->e:Landroid/widget/TextView;

    .line 1116
    const v3, 0x7f1116d6

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->f:Landroid/widget/TextView;

    .line 1117
    const v3, 0x7f1116d7

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->g:Landroid/widget/TextView;

    .line 1118
    const v3, 0x7f1116d8

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->h:Landroid/view/View;

    .line 1119
    const v3, 0x7f1116d1

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1120
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 1121
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setAlpha(F)V

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Leid$a;->HomeBottomTabButton:[I

    invoke-virtual {v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "iconFont":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->setIcon(Ljava/lang/String;)V

    .line 80
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->setText(Ljava/lang/String;)V

    .line 83
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->n:Ljava/lang/String;

    .line 84
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->n:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->t:Ljava/lang/String;

    .line 87
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->u:Ljava/lang/String;

    .line 89
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    new-instance v3, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;

    invoke-direct {v3, p0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;-><init>(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)V

    iput-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->s:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;

    .line 92
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->s:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;

    .line 2012
    invoke-virtual {v3}, Lcmr;->d()V

    .line 93
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->b:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->p:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->o:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->t:Ljava/lang/String;

    return-object v0
.end method

.method private a(IZI)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "showCount"    # Z
    .param p3, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 229
    if-lez p3, :cond_2

    .line 230
    if-eqz p2, :cond_1

    .line 231
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->h:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    const/16 v1, 0x63

    if-le p3, v1, :cond_0

    .line 235
    const-string/jumbo v0, "99+"

    .line 239
    .local v0, "countString":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-static {}, Lejv;->a()Lejv;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lejv;->a(II)V

    .line 242
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->n:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0906d5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 253
    .end local v0    # "countString":Ljava/lang/String;
    :goto_1
    return-void

    .line 237
    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "countString":Ljava/lang/String;
    goto :goto_0

    .line 244
    .end local v0    # "countString":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->h:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 246
    invoke-static {}, Lejv;->a()Lejv;

    move-result-object v1

    invoke-virtual {v1, p1, v5}, Lejv;->a(II)V

    goto :goto_1

    .line 249
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->h:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    invoke-static {}, Lejv;->a()Lejv;

    move-result-object v1

    invoke-virtual {v1, p1, v5}, Lejv;->a(II)V

    goto :goto_1
.end method

.method private static a(Landroid/view/View;I)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "size"    # I

    .prologue
    .line 144
    if-nez p0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 148
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 151
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, p1, :cond_2

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, p1, :cond_0

    .line 152
    :cond_2
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 153
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 154
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 33
    invoke-static {p1, p2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->r:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->q:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    .prologue
    .line 33
    iget v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->p:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->q:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    .prologue
    .line 33
    iget v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->r:I

    return v0
.end method

.method static synthetic k(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->f:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a(FZ)V
    .locals 7
    .param p1, "alpha"    # F
    .param p2, "showAnim"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 197
    cmpl-float v0, p1, v5

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->l:Z

    .line 198
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->j:Z

    if-eqz v0, :cond_5

    .line 4174
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4176
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4177
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v2

    .line 4178
    sget v3, Lcib;->a:I

    sget v4, Lcib;->a:I

    invoke-virtual {v2, v0, v3, v4}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 4179
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 203
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setAlpha(F)V

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->c:Landroid/widget/ImageView;

    sub-float v1, v6, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 208
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->e:Landroid/widget/TextView;

    sub-float v1, v6, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 210
    if-eqz p2, :cond_3

    .line 211
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->k:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    .line 212
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050029

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->k:Landroid/view/animation/Animation;

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 226
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v0, v1

    .line 197
    goto :goto_0

    .line 4180
    :catch_0
    move-exception v0

    .line 4181
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 217
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_6

    .line 218
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 220
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setAlpha(F)V

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 222
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->c:Landroid/widget/ImageView;

    sub-float v1, v6, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 223
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 224
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->e:Landroid/widget/TextView;

    sub-float v1, v6, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_2
.end method

.method public final a(III)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "noticeCount"    # I
    .param p3, "totalCount"    # I

    .prologue
    const/4 v0, 0x0

    .line 256
    if-gtz p3, :cond_0

    .line 257
    invoke-direct {p0, p1, v0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(IZI)V

    .line 263
    :goto_0
    return-void

    .line 258
    :cond_0
    if-nez p2, :cond_1

    .line 259
    invoke-direct {p0, p1, v0, p3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(IZI)V

    goto :goto_0

    .line 261
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(IZI)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->s:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->s:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->c()V

    .line 101
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 105
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->s:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->s:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;

    .line 2016
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcmq;->b(Lcmq$a;)V

    .line 109
    :cond_0
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 3
    .param p1, "iconFont"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->v:Ljava/lang/String;

    .line 128
    new-instance v0, Lecw;

    iget v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->p:I

    invoke-direct {v0, p1, v1}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 129
    .local v0, "drawable":Lecw;
    sget v1, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a:I

    .line 2079
    iput v1, v0, Lecw;->b:I

    .line 130
    sget v1, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a:I

    .line 3070
    iput v1, v0, Lecw;->a:I

    .line 131
    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->o:Landroid/graphics/drawable/Drawable;

    .line 132
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->c:Landroid/widget/ImageView;

    sget v2, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a:I

    invoke-static {v1, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(Landroid/view/View;I)V

    .line 133
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    new-instance v0, Lecw;

    .end local v0    # "drawable":Lecw;
    iget v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->r:I

    invoke-direct {v0, p1, v1}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 136
    .restart local v0    # "drawable":Lecw;
    sget v1, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a:I

    .line 3079
    iput v1, v0, Lecw;->b:I

    .line 137
    sget v1, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a:I

    .line 4070
    iput v1, v0, Lecw;->a:I

    .line 138
    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->q:Landroid/graphics/drawable/Drawable;

    .line 139
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->d:Landroid/widget/ImageView;

    sget v2, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a:I

    invoke-static {v1, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(Landroid/view/View;I)V

    .line 140
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    return-void
.end method

.method public setLargeIcon(Ljava/lang/String;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iput-boolean v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->j:Z

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->j:Z

    .line 165
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->m:Ljava/lang/String;

    .line 168
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->l:Z

    if-eqz v0, :cond_0

    .line 169
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(FZ)V

    goto :goto_0
.end method

.method public setText(I)V
    .locals 1
    .param p1, "redId"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    return-void
.end method
