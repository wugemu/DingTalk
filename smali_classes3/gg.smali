.class public final Lgg;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field public a:Z

.field private b:Landroid/view/ViewParent;

.field private c:Landroid/view/ViewParent;

.field private final d:Landroid/view/View;

.field private e:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lgg;->d:Landroid/view/View;

    .line 57
    return-void
.end method

.method private a(ILandroid/view/ViewParent;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "p"    # Landroid/view/ViewParent;

    .prologue
    .line 392
    packed-switch p1, :pswitch_data_0

    .line 400
    :goto_0
    return-void

    .line 394
    :pswitch_0
    iput-object p2, p0, Lgg;->b:Landroid/view/ViewParent;

    goto :goto_0

    .line 397
    :pswitch_1
    iput-object p2, p0, Lgg;->c:Landroid/view/ViewParent;

    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c(I)Landroid/view/ViewParent;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 382
    packed-switch p1, :pswitch_data_0

    .line 388
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 384
    :pswitch_0
    iget-object v0, p0, Lgg;->b:Landroid/view/ViewParent;

    goto :goto_0

    .line 386
    :pswitch_1
    iget-object v0, p0, Lgg;->c:Landroid/view/ViewParent;

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 69
    iget-boolean v0, p0, Lgg;->a:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lgg;->d:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->y(Landroid/view/View;)V

    .line 72
    :cond_0
    iput-boolean p1, p0, Lgg;->a:Z

    .line 73
    return-void
.end method

.method public final a(FF)Z
    .locals 3
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 346
    .line 5085
    iget-boolean v2, p0, Lgg;->a:Z

    .line 346
    if-eqz v2, :cond_0

    .line 347
    invoke-direct {p0, v1}, Lgg;->c(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 348
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 349
    iget-object v1, p0, Lgg;->d:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Lgq;->a(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v1

    .line 353
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    return v1
.end method

.method public final a(FFZ)Z
    .locals 3
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 326
    .line 4085
    iget-boolean v2, p0, Lgg;->a:Z

    .line 326
    if-eqz v2, :cond_0

    .line 327
    invoke-direct {p0, v1}, Lgg;->c(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 328
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 329
    iget-object v1, p0, Lgg;->d:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Lgq;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v1

    .line 333
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    return v1
.end method

.method public final a(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lgg;->c(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(II)Z
    .locals 4
    .param p1, "axes"    # I
    .param p2, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 144
    invoke-virtual {p0, p2}, Lgg;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    :goto_0
    return v2

    .line 1085
    :cond_0
    iget-boolean v3, p0, Lgg;->a:Z

    .line 148
    if-eqz v3, :cond_3

    .line 149
    iget-object v3, p0, Lgg;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 150
    .local v1, "p":Landroid/view/ViewParent;
    iget-object v0, p0, Lgg;->d:Landroid/view/View;

    .line 151
    .local v0, "child":Landroid/view/View;
    :goto_1
    if-eqz v1, :cond_3

    .line 152
    iget-object v3, p0, Lgg;->d:Landroid/view/View;

    invoke-static {v1, v0, v3, p1, p2}, Lgq;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    invoke-direct {p0, p2, v1}, Lgg;->a(ILandroid/view/ViewParent;)V

    .line 154
    iget-object v3, p0, Lgg;->d:Landroid/view/View;

    invoke-static {v1, v0, v3, p1, p2}, Lgq;->b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    goto :goto_0

    .line 157
    :cond_1
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 158
    check-cast v0, Landroid/view/View;

    .line 160
    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    .line 163
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final a(IIII[I)Z
    .locals 7
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 203
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lgg;->a(IIII[II)Z

    move-result v0

    return v0
.end method

.method public final a(IIII[II)Z
    .locals 9
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 219
    .line 2085
    iget-boolean v1, p0, Lgg;->a:Z

    .line 219
    if-eqz v1, :cond_5

    .line 220
    invoke-direct {p0, p6}, Lgg;->c(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 221
    .local v0, "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_0

    .line 222
    const/4 v1, 0x0

    .line 249
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_0
    return v1

    .line 225
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_4

    .line 226
    :cond_1
    const/4 v7, 0x0

    .line 227
    .local v7, "startX":I
    const/4 v8, 0x0

    .line 228
    .local v8, "startY":I
    if-eqz p5, :cond_2

    .line 229
    iget-object v1, p0, Lgg;->d:Landroid/view/View;

    invoke-virtual {v1, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 230
    const/4 v1, 0x0

    aget v7, p5, v1

    .line 231
    const/4 v1, 0x1

    aget v8, p5, v1

    .line 234
    :cond_2
    iget-object v1, p0, Lgg;->d:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Lgq;->a(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    .line 237
    if-eqz p5, :cond_3

    .line 238
    iget-object v1, p0, Lgg;->d:Landroid/view/View;

    invoke-virtual {v1, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 239
    const/4 v1, 0x0

    aget v2, p5, v1

    sub-int/2addr v2, v7

    aput v2, p5, v1

    .line 240
    const/4 v1, 0x1

    aget v2, p5, v1

    sub-int/2addr v2, v8

    aput v2, p5, v1

    .line 242
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 243
    .end local v7    # "startX":I
    .end local v8    # "startY":I
    :cond_4
    if-eqz p5, :cond_5

    .line 245
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, p5, v1

    .line 246
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, p5, v1

    .line 249
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(II[I[I)Z
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "offsetInWindow"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 263
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lgg;->a(II[I[II)Z

    move-result v0

    return v0
.end method

.method public final a(II[I[II)Z
    .locals 10
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "offsetInWindow"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 277
    .line 3085
    iget-boolean v1, p0, Lgg;->a:Z

    .line 277
    if-eqz v1, :cond_9

    .line 278
    invoke-direct {p0, p5}, Lgg;->c(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 279
    .local v0, "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_0

    move v1, v8

    .line 313
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_0
    return v1

    .line 283
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_8

    .line 284
    :cond_1
    const/4 v6, 0x0

    .line 285
    .local v6, "startX":I
    const/4 v7, 0x0

    .line 286
    .local v7, "startY":I
    if-eqz p4, :cond_2

    .line 287
    iget-object v1, p0, Lgg;->d:Landroid/view/View;

    invoke-virtual {v1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 288
    aget v6, p4, v8

    .line 289
    aget v7, p4, v9

    .line 292
    :cond_2
    if-nez p3, :cond_4

    .line 293
    iget-object v1, p0, Lgg;->e:[I

    if-nez v1, :cond_3

    .line 294
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lgg;->e:[I

    .line 296
    :cond_3
    iget-object p3, p0, Lgg;->e:[I

    .line 298
    :cond_4
    aput v8, p3, v8

    .line 299
    aput v8, p3, v9

    .line 300
    iget-object v1, p0, Lgg;->d:Landroid/view/View;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lgq;->a(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 302
    if-eqz p4, :cond_5

    .line 303
    iget-object v1, p0, Lgg;->d:Landroid/view/View;

    invoke-virtual {v1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 304
    aget v1, p4, v8

    sub-int/2addr v1, v6

    aput v1, p4, v8

    .line 305
    aget v1, p4, v9

    sub-int/2addr v1, v7

    aput v1, p4, v9

    .line 307
    :cond_5
    aget v1, p3, v8

    if-nez v1, :cond_6

    aget v1, p3, v9

    if-eqz v1, :cond_7

    :cond_6
    move v1, v9

    goto :goto_0

    :cond_7
    move v1, v8

    goto :goto_0

    .line 308
    .end local v6    # "startX":I
    .end local v7    # "startY":I
    :cond_8
    if-eqz p4, :cond_9

    .line 309
    aput v8, p4, v8

    .line 310
    aput v8, p4, v9

    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_9
    move v1, v8

    .line 313
    goto :goto_0
.end method

.method public final b(I)V
    .locals 2
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lgg;->c(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 186
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lgg;->d:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lgq;->a(Landroid/view/ViewParent;Landroid/view/View;I)V

    .line 188
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lgg;->a(ILandroid/view/ViewParent;)V

    .line 190
    :cond_0
    return-void
.end method
