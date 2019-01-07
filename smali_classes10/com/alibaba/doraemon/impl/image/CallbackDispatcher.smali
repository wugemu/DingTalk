.class public Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;
.super Ljava/lang/Object;
.source "CallbackDispatcher.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private mBindedMagicianDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/impl/image/MagicianDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mIsShutOff:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;->mBindedMagicianDrawables:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addMagicianDrawable(Lcom/alibaba/doraemon/impl/image/MagicianDrawable;)V
    .locals 1
    .param p1, "drawable"    # Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;->mBindedMagicianDrawables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;->mBindedMagicianDrawables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    iget-boolean v1, p0, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;->mIsShutOff:Z

    if-nez v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;->mBindedMagicianDrawables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    .line 40
    .local v0, "drawable":Lcom/alibaba/doraemon/impl/image/MagicianDrawable;
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->invalidate()V

    goto :goto_0

    .line 43
    .end local v0    # "drawable":Lcom/alibaba/doraemon/impl/image/MagicianDrawable;
    :cond_0
    return-void
.end method

.method public removeMagicianDrawable(Lcom/alibaba/doraemon/impl/image/MagicianDrawable;)V
    .locals 1
    .param p1, "drawable"    # Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;->mBindedMagicianDrawables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 47
    return-void
.end method

.method public shutoffDispatch()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;->mIsShutOff:Z

    .line 30
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 51
    return-void
.end method

.method public unshutoffDispatch()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;->mIsShutOff:Z

    .line 34
    return-void
.end method
