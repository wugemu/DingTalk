.class final Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$4;
.super Ljava/lang/Object;
.source "SelectDateDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$4;->b:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$4;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 392
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 396
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 387
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$4;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 388
    return-void
.end method
