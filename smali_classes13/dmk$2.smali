.class final Ldmk$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatSceneViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldmk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldmk;


# direct methods
.method constructor <init>(Ldmk;)V
    .locals 0
    .param p1, "this$0"    # Ldmk;

    .prologue
    .line 230
    iput-object p1, p0, Ldmk$2;->a:Ldmk;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 234
    iget-object v0, p0, Ldmk$2;->a:Ldmk;

    .line 1034
    iget-boolean v0, v0, Ldmk;->e:Z

    .line 234
    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Ldmk$2;->a:Ldmk;

    invoke-static {v0}, Ldmk;->c(Ldmk;)V

    .line 237
    :cond_0
    return-void
.end method
