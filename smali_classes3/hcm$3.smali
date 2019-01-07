.class final Lhcm$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhcm;->b(Landroid/app/Activity;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lhcm;


# direct methods
.method constructor <init>(Lhcm;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lhcm;

    .prologue
    .line 157
    iput-object p1, p0, Lhcm$3;->b:Lhcm;

    iput-object p2, p0, Lhcm$3;->a:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 160
    iget-object v0, p0, Lhcm$3;->b:Lhcm;

    iget-object v0, p0, Lhcm$3;->a:Landroid/app/Activity;

    .line 1023
    invoke-static {v0}, Lhcm;->a(Landroid/app/Activity;)V

    .line 161
    return-void
.end method
