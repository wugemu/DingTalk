.class final Lcom/alibaba/android/teleconf/widget/TeleConfImageView$a;
.super Ljava/lang/Object;
.source "TeleConfImageView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lezd;

.field final synthetic b:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

.field private c:Z

.field private d:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfImageView;Lezd;ZLandroid/view/View;)V
    .locals 0
    .param p2, "avatar"    # Lezd;
    .param p3, "isFront"    # Z
    .param p4, "nextView"    # Landroid/view/View;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$a;->b:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$a;->a:Lezd;

    .line 64
    iput-boolean p3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$a;->c:Z

    .line 65
    iput-object p4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$a;->d:Landroid/view/View;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfImageView;Lezd;ZLandroid/view/View;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfImageView;
    .param p2, "x1"    # Lezd;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$a;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfImageView;Lezd;ZLandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$a;->b:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$a;->b:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$a;->a:Lezd;

    iget-boolean v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$a;->c:Z

    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$a;->d:Landroid/view/View;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfImageView;Lezd;ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 73
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 68
    return-void
.end method
