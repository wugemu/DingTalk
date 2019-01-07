.class public Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;
.super Landroid/widget/FrameLayout;
.source "TeleVideoAnimationFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;,
        Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$d;,
        Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$b;,
        Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;

.field private c:Z

.field private d:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->d:F

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->c:Z

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;)Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->b:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    .prologue
    .line 29
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->d:F

    return v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 7
    .param p1, "showAvatar"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v6, 0x1

    .line 75
    iput-boolean v6, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->c:Z

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 78
    .local v0, "centerX":F
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 79
    .local v1, "centerY":F
    new-instance v2, Lezc;

    const/4 v3, 0x0

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-direct {v2, v3, v4, v0, v1}, Lezc;-><init>(FFFF)V

    .line 1045
    .local v2, "rotation":Lezc;
    iput-boolean v6, v2, Lezc;->b:Z

    .line 81
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->d:F

    .line 1049
    iput v3, v2, Lezc;->a:F

    .line 82
    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Lezc;->setDuration(J)V

    .line 83
    invoke-virtual {v2, v6}, Lezc;->setFillAfter(Z)V

    .line 84
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lezc;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 85
    new-instance v3, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$c;

    iget-boolean v4, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->c:Z

    invoke-direct {v3, p0, v4}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$c;-><init>(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;Z)V

    invoke-virtual {v2, v3}, Lezc;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 86
    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 87
    return-void
.end method

.method public setAnimationListener(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;)V
    .locals 0
    .param p1, "l"    # Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->b:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;

    .line 56
    return-void
.end method

.method public setDepthSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 59
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->d:F

    goto :goto_0
.end method
