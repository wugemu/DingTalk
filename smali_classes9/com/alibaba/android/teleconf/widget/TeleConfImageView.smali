.class public Lcom/alibaba/android/teleconf/widget/TeleConfImageView;
.super Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
.source "TeleConfImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/widget/TeleConfImageView$b;,
        Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;,
        Lcom/alibaba/android/teleconf/widget/TeleConfImageView$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;-><init>(Landroid/content/Context;)V

    .line 21
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->f:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->f:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->f:I

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/TeleConfImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    .prologue
    .line 17
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->f:I

    return v0
.end method


# virtual methods
.method public final a(Lezd;ZLandroid/view/View;)V
    .locals 9
    .param p1, "avatar"    # Lezd;
    .param p2, "showAvatar"    # Z
    .param p3, "nextView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    .line 45
    invoke-virtual {p0, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->setVisibility(I)V

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v6, v0, v1

    .line 47
    .local v6, "centerX":F
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v7, v0, v1

    .line 48
    .local v7, "centerY":F
    new-instance v8, Lezc;

    const/4 v0, 0x0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-direct {v8, v0, v1, v6, v7}, Lezc;-><init>(FFFF)V

    .line 1045
    .local v8, "rotation":Lezc;
    iput-boolean v2, v8, Lezc;->b:Z

    .line 50
    const/high16 v0, 0x42480000    # 50.0f

    .line 1049
    iput v0, v8, Lezc;->a:F

    .line 51
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->f:I

    int-to-long v0, v0

    invoke-virtual {v8, v0, v1}, Lezc;->setDuration(J)V

    .line 52
    invoke-virtual {v8, v2}, Lezc;->setFillAfter(Z)V

    .line 53
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v8, v0}, Lezc;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 54
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$a;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$a;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfImageView;Lezd;ZLandroid/view/View;B)V

    invoke-virtual {v8, v0}, Lezc;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 55
    invoke-virtual {p0, v8}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 56
    return-void
.end method
