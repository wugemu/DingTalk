.class public final Lcjw$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FpsFrameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcjw;


# direct methods
.method public constructor <init>(Lcjw;)V
    .locals 0
    .param p1, "this$0"    # Lcjw;

    .prologue
    .line 162
    iput-object p1, p0, Lcjw$3;->a:Lcjw;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 165
    iget-object v0, p0, Lcjw$3;->a:Lcjw;

    invoke-virtual {v0}, Lcjw;->b()V

    .line 166
    const/4 v0, 0x0

    return v0
.end method
