.class public Lcom/alibaba/android/user/widget/OrgPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "OrgPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/widget/OrgPageIndicator$b;,
        Lcom/alibaba/android/user/widget/OrgPageIndicator$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/CharSequence;


# instance fields
.field private b:Z

.field private c:Ljava/lang/Runnable;

.field private final d:Landroid/view/View$OnClickListener;

.field private final e:Lcrj;

.field private f:I

.field private g:Lcom/alibaba/android/user/widget/OrgPageIndicator$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alibaba/android/user/widget/OrgPageIndicator;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/widget/OrgPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Lcom/alibaba/android/user/widget/OrgPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/widget/OrgPageIndicator$1;-><init>(Lcom/alibaba/android/user/widget/OrgPageIndicator;)V

    iput-object v0, p0, Lcom/alibaba/android/user/widget/OrgPageIndicator;->d:Landroid/view/View$OnClickListener;

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/OrgPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    .line 78
    new-instance v0, Lcrj;

    sget v1, Lezg$d;->tabPageIndicatorStyle:I

    invoke-direct {v0, p1, v1}, Lcrj;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/android/user/widget/OrgPageIndicator;->e:Lcrj;

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/user/widget/OrgPageIndicator;->e:Lcrj;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/user/widget/OrgPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/widget/OrgPageIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/widget/OrgPageIndicator;

    .prologue
    .line 29
    iget v0, p0, Lcom/alibaba/android/user/widget/OrgPageIndicator;->f:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/widget/OrgPageIndicator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/widget/OrgPageIndicator;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/alibaba/android/user/widget/OrgPageIndicator;->f:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/widget/OrgPageIndicator;)Lcom/alibaba/android/user/widget/OrgPageIndicator$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/widget/OrgPageIndicator;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/user/widget/OrgPageIndicator;->g:Lcom/alibaba/android/user/widget/OrgPageIndicator$a;

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/user/widget/OrgPageIndicator;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/user/widget/OrgPageIndicator;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/OrgPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 139
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/user/widget/OrgPageIndicator;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/user/widget/OrgPageIndicator;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/OrgPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 147
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 0
    .param p1, "item"    # I

    .prologue
    .line 198
    return-void
.end method

.method public setOnTabReselectedListener(Lcom/alibaba/android/user/widget/OrgPageIndicator$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/user/widget/OrgPageIndicator$a;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/android/user/widget/OrgPageIndicator;->g:Lcom/alibaba/android/user/widget/OrgPageIndicator$a;

    .line 84
    return-void
.end method

.method public setShowTabIndicator(Z)V
    .locals 0
    .param p1, "isShowTabIndicator"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/alibaba/android/user/widget/OrgPageIndicator;->b:Z

    .line 88
    return-void
.end method
