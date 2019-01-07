.class final Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;
.super Ljava/lang/Object;
.source "TeleConfImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Lezd;

.field final synthetic b:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

.field private final c:Z

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfImageView;Lezd;ZLandroid/view/View;)V
    .locals 0
    .param p2, "avatar"    # Lezd;
    .param p3, "isFront"    # Z
    .param p4, "nextView"    # Landroid/view/View;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;->b:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean p3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;->c:Z

    .line 82
    iput-object p4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;->d:Landroid/view/View;

    .line 83
    iput-object p2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;->a:Lezd;

    .line 84
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 86
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;->b:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 87
    .local v0, "centerX":F
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;->b:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 89
    .local v1, "centerY":F
    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;->c:Z

    if-eqz v3, :cond_1

    .line 90
    new-instance v2, Lezc;

    invoke-direct {v2, v6, v5, v0, v1}, Lezc;-><init>(FFFF)V

    .line 91
    .local v2, "rotation":Lezc;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;->a:Lezd;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;->a:Lezd;

    iget-object v3, v3, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;->b:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;->a:Lezd;

    iget-object v4, v4, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;->a:Lezd;

    iget-object v5, v5, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 1045
    iput-boolean v3, v2, Lezc;->b:Z

    .line 99
    const/high16 v3, 0x42480000    # 50.0f

    .line 1049
    iput v3, v2, Lezc;->a:F

    .line 100
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;->b:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->a(Lcom/alibaba/android/teleconf/widget/TeleConfImageView;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lezc;->setDuration(J)V

    .line 101
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lezc;->setFillAfter(Z)V

    .line 102
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lezc;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 103
    new-instance v3, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$b;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;->b:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;->d:Landroid/view/View;

    invoke-direct {v3, v4, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$b;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfImageView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lezc;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 104
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;->b:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 105
    return-void

    .line 95
    .end local v2    # "rotation":Lezc;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$c;->b:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    sget v4, Leuj$h;->conf_icon_offline:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->setImageResource(I)V

    .line 96
    new-instance v2, Lezc;

    invoke-direct {v2, v6, v5, v0, v1}, Lezc;-><init>(FFFF)V

    .restart local v2    # "rotation":Lezc;
    goto :goto_0
.end method
