.class final Ldet$3;
.super Ljava/lang/Object;
.source "ChatMsgListGuideTipManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldet;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldet;


# direct methods
.method constructor <init>(Ldet;)V
    .locals 0
    .param p1, "this$0"    # Ldet;

    .prologue
    .line 212
    iput-object p1, p0, Ldet$3;->a:Ldet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 220
    iget-object v0, p0, Ldet$3;->a:Ldet;

    iget-object v0, v0, Ldet;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Ldet$3;->a:Ldet;

    invoke-static {v0}, Ldet;->b(Ldet;)V

    .line 223
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 227
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 215
    return-void
.end method
