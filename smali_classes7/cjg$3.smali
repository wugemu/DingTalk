.class public final Lcjg$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InputPanelCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcjg;


# direct methods
.method public constructor <init>(Lcjg;ZLandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcjg;

    .prologue
    .line 154
    iput-object p1, p0, Lcjg$3;->c:Lcjg;

    iput-boolean p2, p0, Lcjg$3;->a:Z

    iput-object p3, p0, Lcjg$3;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 163
    iget-boolean v0, p0, Lcjg$3;->a:Z

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcjg$3;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 157
    iget-boolean v0, p0, Lcjg$3;->a:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcjg$3;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :cond_0
    return-void
.end method
