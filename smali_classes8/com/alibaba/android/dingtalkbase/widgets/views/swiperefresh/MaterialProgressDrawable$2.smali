.class final Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$2;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 390
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 394
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->a()V

    .line 395
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

    .line 1567
    iget v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->j:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->i:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->j:I

    .line 396
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

    .line 1630
    iget v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->e:F

    .line 396
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->a(F)V

    .line 397
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->b:Z

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    iput-boolean v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->b:Z

    .line 401
    const-wide/16 v0, 0x535

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 402
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->a(Z)V

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;F)F

    goto :goto_0
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 384
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;F)F

    .line 385
    return-void
.end method
