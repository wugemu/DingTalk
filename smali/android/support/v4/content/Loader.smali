.class public Landroid/support/v4/content/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/Loader$b;,
        Landroid/support/v4/content/Loader$c;,
        Landroid/support/v4/content/Loader$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public g:I

.field public h:Landroid/support/v4/content/Loader$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$c",
            "<TD;>;"
        }
    .end annotation
.end field

.field public i:Landroid/support/v4/content/Loader$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$b",
            "<TD;>;"
        }
    .end annotation
.end field

.field j:Landroid/content/Context;

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->k:Z

    .line 40
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->l:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->m:Z

    .line 42
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->n:Z

    .line 43
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->o:Z

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/content/Loader;->j:Landroid/content/Context;

    .line 115
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 337
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    return-void
.end method

.method public final a(Landroid/support/v4/content/Loader$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$b",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    .local p1, "listener":Landroid/support/v4/content/Loader$b;, "Landroid/support/v4/content/Loader$b<TD;>;"
    iget-object v0, p0, Landroid/support/v4/content/Loader;->i:Landroid/support/v4/content/Loader$b;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iget-object v0, p0, Landroid/support/v4/content/Loader;->i:Landroid/support/v4/content/Loader$b;

    if-eq v0, p1, :cond_1

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/Loader;->i:Landroid/support/v4/content/Loader$b;

    .line 218
    return-void
.end method

.method public final a(Landroid/support/v4/content/Loader$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$c",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    .local p1, "listener":Landroid/support/v4/content/Loader$c;, "Landroid/support/v4/content/Loader$c<TD;>;"
    iget-object v0, p0, Landroid/support/v4/content/Loader;->h:Landroid/support/v4/content/Loader$c;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iget-object v0, p0, Landroid/support/v4/content/Loader;->h:Landroid/support/v4/content/Loader$c;

    if-eq v0, p1, :cond_1

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/Loader;->h:Landroid/support/v4/content/Loader$c;

    .line 184
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 522
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/content/Loader;->g:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 523
    const-string/jumbo v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/Loader;->h:Landroid/support/v4/content/Loader$c;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 524
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->o:Z

    if-eqz v0, :cond_1

    .line 525
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 526
    const-string/jumbo v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->n:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 527
    const-string/jumbo v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->o:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 529
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->m:Z

    if-eqz v0, :cond_2

    .line 530
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 531
    const-string/jumbo v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 533
    :cond_2
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Landroid/support/v4/content/Loader;->h:Landroid/support/v4/content/Loader$c;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Landroid/support/v4/content/Loader;->h:Landroid/support/v4/content/Loader$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/content/Loader$c;->a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 128
    :cond_0
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 317
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 281
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    return-void
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 371
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    return-void
.end method

.method protected h()V
    .locals 0

    .prologue
    .line 435
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    return-void
.end method

.method public final i()V
    .locals 2

    .prologue
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    const/4 v1, 0x0

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->k:Z

    .line 270
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->m:Z

    .line 271
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->l:Z

    .line 272
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->f()V

    .line 273
    return-void
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 302
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->b()Z

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 0

    .prologue
    .line 329
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->a()V

    .line 330
    return-void
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 360
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->k:Z

    .line 361
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->g()V

    .line 362
    return-void
.end method

.method public final m()V
    .locals 2

    .prologue
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    const/4 v1, 0x0

    .line 420
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->h()V

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->m:Z

    .line 422
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->k:Z

    .line 423
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->l:Z

    .line 424
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->n:Z

    .line 425
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->o:Z

    .line 426
    return-void
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 482
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->k:Z

    if-eqz v0, :cond_0

    .line 1329
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->a()V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->n:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 505
    .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 506
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lfn;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 507
    const-string/jumbo v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget v1, p0, Landroid/support/v4/content/Loader;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
