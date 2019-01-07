.class public final Laa;
.super Ljava/lang/Object;
.source "AnimatorUtils.java"


# static fields
.field private static final a:Lad;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 30
    new-instance v0, Lac;

    invoke-direct {v0}, Lac;-><init>()V

    sput-object v0, Laa;->a:Lad;

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Lab;

    invoke-direct {v0}, Lab;-><init>()V

    sput-object v0, Laa;->a:Lad;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/animation/Animator;)V
    .locals 1
    .param p0, "animator"    # Landroid/animation/Animator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    sget-object v0, Laa;->a:Lad;

    invoke-interface {v0, p0}, Lad;->a(Landroid/animation/Animator;)V

    .line 43
    return-void
.end method

.method public static a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1
    .param p0, "animator"    # Landroid/animation/Animator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "listener"    # Landroid/animation/AnimatorListenerAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    sget-object v0, Laa;->a:Lad;

    invoke-interface {v0, p0, p1}, Lad;->a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 39
    return-void
.end method

.method public static b(Landroid/animation/Animator;)V
    .locals 1
    .param p0, "animator"    # Landroid/animation/Animator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    sget-object v0, Laa;->a:Lad;

    invoke-interface {v0, p0}, Lad;->b(Landroid/animation/Animator;)V

    .line 47
    return-void
.end method
