.class public final Lcw$a;
.super Ljava/lang/Object;
.source "LoaderManager.java"

# interfaces
.implements Landroid/support/v4/content/Loader$b;
.implements Landroid/support/v4/content/Loader$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/content/Loader$b",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Landroid/support/v4/content/Loader$c",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/os/Bundle;

.field c:Lcv$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcv$a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field f:Z

.field public g:Ljava/lang/Object;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field l:Z

.field m:Z

.field final synthetic n:Lcw;


# virtual methods
.method final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 239
    iget-boolean v0, p0, Lcw$a;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcw$a;->j:Z

    if-eqz v0, :cond_1

    .line 243
    iput-boolean v3, p0, Lcw$a;->h:Z

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-boolean v0, p0, Lcw$a;->h:Z

    if-nez v0, :cond_0

    .line 252
    iput-boolean v3, p0, Lcw$a;->h:Z

    .line 258
    iget-object v0, p0, Lcw$a;->d:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcw$a;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcw$a;->d:Landroid/support/v4/content/Loader;

    .line 260
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcw$a;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_2
    iget-boolean v0, p0, Lcw$a;->m:Z

    if-nez v0, :cond_5

    .line 266
    iget-object v0, p0, Lcw$a;->d:Landroid/support/v4/content/Loader;

    iget v1, p0, Lcw$a;->a:I

    .line 1164
    iget-object v2, v0, Landroid/support/v4/content/Loader;->h:Landroid/support/v4/content/Loader$c;

    if-eqz v2, :cond_3

    .line 1165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1167
    :cond_3
    iput-object p0, v0, Landroid/support/v4/content/Loader;->h:Landroid/support/v4/content/Loader$c;

    .line 1168
    iput v1, v0, Landroid/support/v4/content/Loader;->g:I

    .line 267
    iget-object v0, p0, Lcw$a;->d:Landroid/support/v4/content/Loader;

    .line 1196
    iget-object v1, v0, Landroid/support/v4/content/Loader;->i:Landroid/support/v4/content/Loader$b;

    if-eqz v1, :cond_4

    .line 1197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1199
    :cond_4
    iput-object p0, v0, Landroid/support/v4/content/Loader;->i:Landroid/support/v4/content/Loader$b;

    .line 268
    iput-boolean v3, p0, Lcw$a;->m:Z

    .line 270
    :cond_5
    iget-object v0, p0, Lcw$a;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->i()V

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 3
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 413
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/lang/Object;>;"
    iget-boolean v1, p0, Lcw$a;->l:Z

    if-eqz v1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v1, p0, Lcw$a;->n:Lcw;

    iget-object v1, v1, Lcw;->b:Lfx;

    iget v2, p0, Lcw$a;->a:I

    invoke-virtual {v1, v2}, Lfx;->a(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 440
    iget-object v1, p0, Lcw$a;->g:Ljava/lang/Object;

    if-ne v1, p2, :cond_2

    iget-boolean v1, p0, Lcw$a;->e:Z

    if-nez v1, :cond_3

    .line 441
    :cond_2
    iput-object p2, p0, Lcw$a;->g:Ljava/lang/Object;

    .line 442
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcw$a;->e:Z

    .line 443
    iget-boolean v1, p0, Lcw$a;->h:Z

    if-eqz v1, :cond_3

    .line 454
    :cond_3
    iget-object v1, p0, Lcw$a;->n:Lcw;

    iget-object v1, v1, Lcw;->c:Lfx;

    iget v2, p0, Lcw$a;->a:I

    invoke-virtual {v1, v2}, Lfx;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcw$a;

    .line 455
    .local v0, "info":Lcw$a;
    if-eqz v0, :cond_4

    if-eq v0, p0, :cond_4

    .line 456
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcw$a;->f:Z

    .line 457
    invoke-virtual {v0}, Lcw$a;->c()V

    .line 458
    iget-object v1, p0, Lcw$a;->n:Lcw;

    iget-object v1, v1, Lcw;->c:Lfx;

    iget v2, p0, Lcw$a;->a:I

    invoke-virtual {v1, v2}, Lfx;->b(I)V

    .line 461
    :cond_4
    iget-object v1, p0, Lcw$a;->n:Lcw;

    iget-object v1, v1, Lcw;->g:Lcm;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcw$a;->n:Lcw;

    invoke-virtual {v1}, Lcw;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    iget-object v1, p0, Lcw$a;->n:Lcw;

    iget-object v1, v1, Lcw;->g:Lcm;

    iget-object v1, v1, Lcm;->f:Lco;

    invoke-virtual {v1}, Lco;->i()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 500
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcw$a;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 501
    const-string/jumbo v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcw$a;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 502
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 503
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcw$a;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Lcw$a;->d:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcw$a;->d:Landroid/support/v4/content/Loader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/content/Loader;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 507
    :cond_0
    iget-boolean v0, p0, Lcw$a;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcw$a;->f:Z

    if-eqz v0, :cond_2

    .line 508
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcw$a;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 509
    const-string/jumbo v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcw$a;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 510
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcw$a;->g:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 512
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcw$a;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 513
    const-string/jumbo v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcw$a;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 514
    const-string/jumbo v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcw$a;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 515
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcw$a;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 516
    const-string/jumbo v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcw$a;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 517
    const-string/jumbo v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcw$a;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 523
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 320
    iput-boolean v1, p0, Lcw$a;->h:Z

    .line 321
    iget-boolean v0, p0, Lcw$a;->i:Z

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcw$a;->d:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcw$a;->m:Z

    if-eqz v0, :cond_0

    .line 324
    iput-boolean v1, p0, Lcw$a;->m:Z

    .line 325
    iget-object v0, p0, Lcw$a;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->a(Landroid/support/v4/content/Loader$c;)V

    .line 326
    iget-object v0, p0, Lcw$a;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->a(Landroid/support/v4/content/Loader$b;)V

    .line 327
    iget-object v0, p0, Lcw$a;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->l()V

    .line 330
    :cond_0
    return-void
.end method

.method final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcw$a;->l:Z

    .line 348
    iput-boolean v1, p0, Lcw$a;->f:Z

    .line 364
    iput-object v2, p0, Lcw$a;->c:Lcv$a;

    .line 365
    iput-object v2, p0, Lcw$a;->g:Ljava/lang/Object;

    .line 366
    iput-boolean v1, p0, Lcw$a;->e:Z

    .line 367
    iget-object v0, p0, Lcw$a;->d:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_1

    .line 368
    iget-boolean v0, p0, Lcw$a;->m:Z

    if-eqz v0, :cond_0

    .line 369
    iput-boolean v1, p0, Lcw$a;->m:Z

    .line 370
    iget-object v0, p0, Lcw$a;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->a(Landroid/support/v4/content/Loader$c;)V

    .line 371
    iget-object v0, p0, Lcw$a;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->a(Landroid/support/v4/content/Loader$b;)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcw$a;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->m()V

    .line 378
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 384
    iget-boolean v0, p0, Lcw$a;->l:Z

    if-eqz v0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcw$a;->n:Lcw;

    iget-object v0, v0, Lcw;->b:Lfx;

    iget v1, p0, Lcw$a;->a:I

    invoke-virtual {v0, v1}, Lfx;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 489
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget v1, p0, Lcw$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 493
    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget-object v1, p0, Lcw$a;->d:Landroid/support/v4/content/Loader;

    invoke-static {v1, v0}, Lfn;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 495
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
