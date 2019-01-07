.class final Lin/srain/cube/views/ptr/header/MaterialHeader$3;
.super Ljava/lang/Object;
.source "MaterialHeader.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/srain/cube/views/ptr/header/MaterialHeader;->setPtrFrameLayout(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkfa;

.field final synthetic b:Lin/srain/cube/views/ptr/header/MaterialHeader;


# direct methods
.method constructor <init>(Lin/srain/cube/views/ptr/header/MaterialHeader;Lkfa;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$3;->b:Lin/srain/cube/views/ptr/header/MaterialHeader;

    iput-object p2, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$3;->a:Lkfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 65
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$3;->a:Lkfa;

    invoke-virtual {v0}, Lkfa;->a()V

    .line 66
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 71
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 61
    return-void
.end method
