.class public final Lhzp;
.super Ljava/lang/Object;
.source "SpringSet.java"

# interfaces
.implements Landroid/support/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhzp$a;,
        Lhzp$c;,
        Lhzp$b;
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lhzp$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/animation/SpringAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/support/animation/SpringAnimation;

.field private g:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Landroid/support/animation/SpringAnimation;",
            "Lhzp$c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhzp$c;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lhzp$c;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lhzp;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    iput-boolean v1, p0, Lhzp;->c:Z

    .line 23
    iput-boolean v1, p0, Lhzp;->a:Z

    .line 25
    iput-boolean v1, p0, Lhzp;->d:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhzp;->e:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lhzp;->g:Lfk;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhzp;->h:Ljava/util/ArrayList;

    .line 37
    iput-boolean v1, p0, Lhzp;->j:Z

    .line 40
    const/4 v0, 0x0

    sget-object v1, Landroid/support/animation/DynamicAnimation;->SCALE_X:Landroid/support/animation/DynamicAnimation$ViewProperty;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x44bb8000    # 1500.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2, v3, v4}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lhzp;->f:Landroid/support/animation/SpringAnimation;

    .line 41
    iget-object v0, p0, Lhzp;->f:Landroid/support/animation/SpringAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/animation/SpringAnimation;->setStartValue(F)Landroid/support/animation/DynamicAnimation;

    .line 42
    new-instance v0, Lhzp$c;

    iget-object v1, p0, Lhzp;->f:Landroid/support/animation/SpringAnimation;

    invoke-direct {v0, v1}, Lhzp$c;-><init>(Landroid/support/animation/SpringAnimation;)V

    iput-object v0, p0, Lhzp;->i:Lhzp$c;

    .line 43
    iget-object v0, p0, Lhzp;->g:Lfk;

    iget-object v1, p0, Lhzp;->f:Landroid/support/animation/SpringAnimation;

    iget-object v2, p0, Lhzp;->i:Lhzp$c;

    invoke-virtual {v0, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method static synthetic a(Lhzp;Landroid/support/animation/SpringAnimation;)Lhzp$c;
    .locals 2
    .param p0, "x0"    # Lhzp;
    .param p1, "x1"    # Landroid/support/animation/SpringAnimation;

    .prologue
    .line 18
    .line 3356
    iget-object v0, p0, Lhzp;->g:Lfk;

    invoke-virtual {v0, p1}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzp$c;

    .line 3357
    if-nez v0, :cond_0

    .line 3358
    new-instance v0, Lhzp$c;

    invoke-direct {v0, p1}, Lhzp$c;-><init>(Landroid/support/animation/SpringAnimation;)V

    .line 3359
    iget-object v1, p0, Lhzp;->g:Lfk;

    invoke-virtual {v1, p1, v0}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3360
    iget-object v1, p0, Lhzp;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_0
    return-object v0
.end method

.method private a(Landroid/support/animation/DynamicAnimation;)V
    .locals 10
    .param p1, "animation"    # Landroid/support/animation/DynamicAnimation;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 394
    iget-object v7, p0, Lhzp;->g:Lfk;

    invoke-virtual {v7, p1}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhzp$c;

    .line 395
    .local v1, "animNode":Lhzp$c;
    const/4 v7, 0x1

    iput-boolean v7, v1, Lhzp$c;->c:Z

    .line 398
    iget-object v2, v1, Lhzp$c;->b:Ljava/util/ArrayList;

    .line 399
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lhzp$c;>;"
    if-nez v2, :cond_1

    move v3, v8

    .line 400
    .local v3, "childrenSize":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 401
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhzp$c;

    iget-object v7, v7, Lhzp$c;->f:Lhzp$c;

    if-ne v7, v1, :cond_0

    .line 402
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhzp$c;

    .line 3147
    iget-object v7, v7, Lhzp$c;->a:Landroid/support/animation/SpringAnimation;

    .line 3148
    iget-object v9, p0, Lhzp;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3149
    invoke-virtual {v7, p0}, Landroid/support/animation/SpringAnimation;->addEndListener(Landroid/support/animation/DynamicAnimation$OnAnimationEndListener;)Landroid/support/animation/DynamicAnimation;

    .line 3150
    invoke-virtual {v7}, Landroid/support/animation/SpringAnimation;->start()V

    .line 3151
    iget-boolean v9, p0, Lhzp;->j:Z

    if-eqz v9, :cond_0

    .line 3152
    invoke-virtual {v7}, Landroid/support/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3153
    invoke-virtual {v7}, Landroid/support/animation/SpringAnimation;->skipToEnd()V

    .line 400
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 399
    .end local v3    # "childrenSize":I
    .end local v4    # "i":I
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 405
    .restart local v3    # "childrenSize":I
    .restart local v4    # "i":I
    :cond_2
    const/4 v0, 0x1

    .line 406
    .local v0, "allDone":Z
    iget-object v7, p0, Lhzp;->h:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 407
    .local v6, "size":I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_3

    .line 408
    iget-object v7, p0, Lhzp;->h:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhzp$c;

    iget-boolean v7, v7, Lhzp$c;->c:Z

    if-nez v7, :cond_4

    .line 409
    const/4 v0, 0x0

    .line 413
    :cond_3
    if-eqz v0, :cond_6

    .line 414
    iget-object v7, p0, Lhzp;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    .line 415
    .local v5, "numListeners":I
    add-int/lit8 v4, v5, -0x1

    :goto_3
    if-ltz v4, :cond_5

    .line 416
    iget-object v7, p0, Lhzp;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhzp$b;

    invoke-interface {v7, p0}, Lhzp$b;->a(Lhzp;)V

    .line 415
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 407
    .end local v5    # "numListeners":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 418
    .restart local v5    # "numListeners":I
    :cond_5
    iput-boolean v8, p0, Lhzp;->d:Z

    .line 419
    iput-boolean v8, p0, Lhzp;->j:Z

    .line 422
    .end local v5    # "numListeners":I
    :cond_6
    return-void
.end method

.method private a(Lhzp$c;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "node"    # Lhzp$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhzp$c;",
            "Ljava/util/ArrayList",
            "<",
            "Lhzp$c;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 159
    .local p2, "siblings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhzp$c;>;"
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, p1, Lhzp$c;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 168
    :cond_0
    return-void

    .line 164
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lhzp$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 165
    iget-object v1, p1, Lhzp$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhzp$c;

    invoke-direct {p0, v1, p2}, Lhzp;->a(Lhzp$c;Ljava/util/ArrayList;)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Lhzp$c;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "parent"    # Lhzp$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhzp$c;",
            "Ljava/util/ArrayList",
            "<",
            "Lhzp$c;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p2, "visited":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhzp$c;>;"
    const/4 v6, 0x0

    .line 266
    iget-object v5, p1, Lhzp$c;->b:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 287
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v5, p1, Lhzp$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 271
    .local v1, "childrenSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 272
    iget-object v5, p1, Lhzp$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzp$c;

    .line 273
    .local v0, "child":Lhzp$c;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 274
    .local v3, "index":I
    if-ltz v3, :cond_2

    .line 276
    move v4, v3

    .local v4, "j":I
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 277
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhzp$c;

    iput-object v6, v5, Lhzp$c;->f:Lhzp$c;

    .line 276
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 279
    :cond_1
    iput-object v6, v0, Lhzp$c;->f:Lhzp$c;

    .line 271
    .end local v4    # "j":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 283
    :cond_2
    iput-object p1, v0, Lhzp$c;->f:Lhzp$c;

    .line 284
    invoke-direct {p0, v0, p2}, Lhzp;->b(Lhzp$c;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 286
    .end local v0    # "child":Lhzp$c;
    .end local v3    # "index":I
    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/support/animation/SpringAnimation;)Lhzp$a;
    .locals 1
    .param p1, "anim"    # Landroid/support/animation/SpringAnimation;

    .prologue
    .line 225
    if-eqz p1, :cond_0

    .line 226
    new-instance v0, Lhzp$a;

    invoke-direct {v0, p0, p1}, Lhzp$a;-><init>(Lhzp;Landroid/support/animation/SpringAnimation;)V

    .line 228
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final varargs a([Landroid/support/animation/SpringAnimation;)V
    .locals 4
    .param p1, "items"    # [Landroid/support/animation/SpringAnimation;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 48
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lhzp;->a(Landroid/support/animation/SpringAnimation;)Lhzp$a;

    move-result-object v0

    .line 49
    .local v0, "builder":Lhzp$a;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 50
    aget-object v2, p1, v1

    .line 1375
    iget-object v3, v0, Lhzp$a;->b:Lhzp;

    invoke-static {v3, v2}, Lhzp;->a(Lhzp;Landroid/support/animation/SpringAnimation;)Lhzp$c;

    move-result-object v2

    .line 1376
    iget-object v3, v0, Lhzp$a;->a:Lhzp$c;

    invoke-virtual {v3, v2}, Lhzp$c;->a(Lhzp$c;)V

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 109
    iget-object v3, p0, Lhzp;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 110
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 111
    iget-object v3, p0, Lhzp;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhzp$c;

    .line 112
    .local v1, "node":Lhzp$c;
    iget-object v3, p0, Lhzp;->i:Lhzp$c;

    if-eq v1, v3, :cond_0

    iget-object v3, v1, Lhzp$c;->a:Landroid/support/animation/SpringAnimation;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lhzp$c;->a:Landroid/support/animation/SpringAnimation;

    invoke-virtual {v3}, Landroid/support/animation/SpringAnimation;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    const/4 v3, 0x1

    .line 116
    .end local v1    # "node":Lhzp$c;
    :goto_1
    return v3

    .line 110
    .restart local v1    # "node":Lhzp$c;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "node":Lhzp$c;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final a(Lhzp$b;)Z
    .locals 1
    .param p1, "listener"    # Lhzp$b;

    .prologue
    .line 246
    iget-object v0, p0, Lhzp;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lhzp;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 127
    iput-boolean v6, p0, Lhzp;->c:Z

    .line 128
    iput-boolean v12, p0, Lhzp;->d:Z

    .line 130
    iget-object v4, p0, Lhzp;->h:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 131
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 132
    iget-object v4, p0, Lhzp;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhzp$c;

    .line 133
    .local v1, "node":Lhzp$c;
    iput-boolean v6, v1, Lhzp$c;->c:Z

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2180
    .end local v1    # "node":Lhzp$c;
    :cond_0
    iget-boolean v4, p0, Lhzp;->a:Z

    if-eqz v4, :cond_7

    .line 2181
    iget-object v4, p0, Lhzp;->h:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v5, v6

    .line 2182
    :goto_1
    if-ge v5, v9, :cond_1

    .line 2183
    iget-object v4, p0, Lhzp;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhzp$c;

    iput-boolean v6, v4, Lhzp$c;->g:Z

    .line 2182
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    :cond_1
    move v8, v6

    .line 2185
    :goto_2
    if-ge v8, v9, :cond_4

    .line 2186
    iget-object v4, p0, Lhzp;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhzp$c;

    .line 2187
    iget-boolean v5, v4, Lhzp$c;->g:Z

    if-nez v5, :cond_3

    .line 2191
    iput-boolean v12, v4, Lhzp$c;->g:Z

    .line 2192
    iget-object v5, v4, Lhzp$c;->d:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 2196
    iget-object v5, v4, Lhzp$c;->d:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v5}, Lhzp;->a(Lhzp$c;Ljava/util/ArrayList;)V

    .line 2197
    iget-object v5, v4, Lhzp$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2199
    iget-object v5, v4, Lhzp$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v7, v6

    .line 2200
    :goto_3
    if-ge v7, v10, :cond_2

    .line 2201
    iget-object v5, v4, Lhzp$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhzp$c;

    iget-object v5, v5, Lhzp$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lhzp$c;->a(Ljava/util/ArrayList;)V

    .line 2200
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_3

    :cond_2
    move v7, v6

    .line 2204
    :goto_4
    if-ge v7, v10, :cond_3

    .line 2205
    iget-object v5, v4, Lhzp$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhzp$c;

    .line 2206
    iget-object v11, v4, Lhzp$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Lhzp$c;->a(Ljava/util/ArrayList;)V

    .line 2207
    iput-boolean v12, v5, Lhzp$c;->g:Z

    .line 2204
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_4

    .line 2185
    :cond_3
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_2

    :cond_4
    move v5, v6

    .line 2211
    :goto_5
    if-ge v5, v9, :cond_6

    .line 2212
    iget-object v4, p0, Lhzp;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhzp$c;

    .line 2213
    iget-object v7, p0, Lhzp;->i:Lhzp$c;

    if-eq v4, v7, :cond_5

    iget-object v7, v4, Lhzp$c;->e:Ljava/util/ArrayList;

    if-nez v7, :cond_5

    .line 2214
    iget-object v7, p0, Lhzp;->i:Lhzp$c;

    invoke-virtual {v4, v7}, Lhzp$c;->b(Lhzp$c;)V

    .line 2211
    :cond_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_5

    .line 2218
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lhzp;->h:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2219
    iget-object v5, p0, Lhzp;->i:Lhzp$c;

    invoke-direct {p0, v5, v4}, Lhzp;->b(Lhzp$c;Ljava/util/ArrayList;)V

    .line 2220
    iput-boolean v6, p0, Lhzp;->a:Z

    .line 138
    :cond_7
    iget-object v4, p0, Lhzp;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 139
    .local v2, "numListeners":I
    add-int/lit8 v0, v2, -0x1

    :goto_6
    if-ltz v0, :cond_8

    .line 140
    iget-object v4, p0, Lhzp;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhzp$b;

    invoke-interface {v4}, Lhzp$b;->a()V

    .line 139
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 143
    :cond_8
    iget-object v4, p0, Lhzp;->f:Landroid/support/animation/SpringAnimation;

    invoke-direct {p0, v4}, Lhzp;->a(Landroid/support/animation/DynamicAnimation;)V

    .line 144
    return-void
.end method

.method public final b(Lhzp$b;)Z
    .locals 1
    .param p1, "listener"    # Lhzp$b;

    .prologue
    .line 253
    iget-object v0, p0, Lhzp;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 171
    const/4 v1, 0x1

    iput-boolean v1, p0, Lhzp;->j:Z

    .line 172
    iget-object v1, p0, Lhzp;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/animation/SpringAnimation;

    .line 173
    .local v0, "animation":Landroid/support/animation/SpringAnimation;
    invoke-virtual {v0}, Landroid/support/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/support/animation/SpringAnimation;->skipToEnd()V

    goto :goto_0

    .line 177
    .end local v0    # "animation":Landroid/support/animation/SpringAnimation;
    :cond_1
    return-void
.end method
