.class final Lbe$a;
.super Ljava/lang/Object;
.source "TransitionManager.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/support/transition/Transition;

.field b:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/support/transition/Transition;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "transition"    # Landroid/support/transition/Transition;
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lbe$a;->a:Landroid/support/transition/Transition;

    .line 229
    iput-object p2, p0, Lbe$a;->b:Landroid/view/ViewGroup;

    .line 230
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lbe$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 234
    iget-object v0, p0, Lbe$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 235
    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 257
    invoke-direct {p0}, Lbe$a;->a()V

    .line 260
    invoke-static {}, Lbe;->b()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lbe$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 291
    :goto_0
    return v7

    .line 266
    :cond_0
    invoke-static {}, Lbe;->a()Lfk;

    move-result-object v3

    .line 267
    .local v3, "runningTransitions":Lfk;, "Lfk<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/Transition;>;>;"
    iget-object v4, p0, Lbe$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 268
    .local v0, "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    const/4 v1, 0x0

    .line 269
    .local v1, "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    if-nez v0, :cond_2

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .restart local v0    # "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    iget-object v4, p0, Lbe$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_1
    :goto_1
    iget-object v4, p0, Lbe$a;->a:Landroid/support/transition/Transition;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v4, p0, Lbe$a;->a:Landroid/support/transition/Transition;

    new-instance v5, Lbe$a$1;

    invoke-direct {v5, p0, v3}, Lbe$a$1;-><init>(Lbe$a;Lfk;)V

    invoke-virtual {v4, v5}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$d;)Landroid/support/transition/Transition;

    .line 283
    iget-object v4, p0, Lbe$a;->a:Landroid/support/transition/Transition;

    iget-object v5, p0, Lbe$a;->b:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 284
    if-eqz v1, :cond_3

    .line 285
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    .line 286
    .local v2, "runningTransition":Landroid/support/transition/Transition;
    iget-object v5, p0, Lbe$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/support/transition/Transition;->resume(Landroid/view/View;)V

    goto :goto_2

    .line 272
    .end local v2    # "runningTransition":Landroid/support/transition/Transition;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v1    # "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    goto :goto_1

    .line 289
    :cond_3
    iget-object v4, p0, Lbe$a;->a:Landroid/support/transition/Transition;

    iget-object v5, p0, Lbe$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/support/transition/Transition;->playTransition(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 239
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 243
    invoke-direct {p0}, Lbe$a;->a()V

    .line 245
    invoke-static {}, Lbe;->b()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lbe$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 246
    invoke-static {}, Lbe;->a()Lfk;

    move-result-object v2

    iget-object v3, p0, Lbe$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 247
    .local v1, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 248
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/Transition;

    .line 249
    .local v0, "runningTransition":Landroid/support/transition/Transition;
    iget-object v3, p0, Lbe$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/support/transition/Transition;->resume(Landroid/view/View;)V

    goto :goto_0

    .line 252
    .end local v0    # "runningTransition":Landroid/support/transition/Transition;
    :cond_0
    iget-object v2, p0, Lbe$a;->a:Landroid/support/transition/Transition;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/transition/Transition;->clearValues(Z)V

    .line 253
    return-void
.end method
