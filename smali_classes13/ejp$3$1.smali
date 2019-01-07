.class final Lejp$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeAttendanceManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lejp$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lejp$3;


# direct methods
.method constructor <init>(Lejp$3;)V
    .locals 0
    .param p1, "this$1"    # Lejp$3;

    .prologue
    .line 350
    iput-object p1, p0, Lejp$3$1;->a:Lejp$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 353
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lejp$3$1$1;

    invoke-direct {v1, p0}, Lejp$3$1$1;-><init>(Lejp$3$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 359
    return-void
.end method
