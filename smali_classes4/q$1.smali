.class final Lq$1;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lq;


# direct methods
.method constructor <init>(Lq;)V
    .locals 0
    .param p1, "this$0"    # Lq;

    .prologue
    .line 719
    iput-object p1, p0, Lq$1;->a:Lq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 722
    iget-object v0, p0, Lq$1;->a:Lq;

    invoke-virtual {v0}, Lq;->invalidateSelf()V

    .line 723
    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 727
    iget-object v0, p0, Lq$1;->a:Lq;

    invoke-virtual {v0, p2, p3, p4}, Lq;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 728
    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 732
    iget-object v0, p0, Lq$1;->a:Lq;

    invoke-virtual {v0, p2}, Lq;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 733
    return-void
.end method
