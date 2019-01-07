.class public final Lkne$a;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lknc;

.field public b:Lokhttp3/Protocol;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lkmu;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field f:Lkmv$a;

.field public g:Lknf;

.field h:Lkne;

.field i:Lkne;

.field public j:Lkne;

.field public k:J

.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const/4 v0, -0x1

    iput v0, p0, Lkne$a;->c:I

    .line 313
    new-instance v0, Lkmv$a;

    invoke-direct {v0}, Lkmv$a;-><init>()V

    iput-object v0, p0, Lkne$a;->f:Lkmv$a;

    .line 314
    return-void
.end method

.method constructor <init>(Lkne;)V
    .locals 2
    .param p1, "response"    # Lkne;

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const/4 v0, -0x1

    iput v0, p0, Lkne$a;->c:I

    .line 317
    iget-object v0, p1, Lkne;->a:Lknc;

    iput-object v0, p0, Lkne$a;->a:Lknc;

    .line 318
    iget-object v0, p1, Lkne;->b:Lokhttp3/Protocol;

    iput-object v0, p0, Lkne$a;->b:Lokhttp3/Protocol;

    .line 319
    iget v0, p1, Lkne;->c:I

    iput v0, p0, Lkne$a;->c:I

    .line 320
    iget-object v0, p1, Lkne;->d:Ljava/lang/String;

    iput-object v0, p0, Lkne$a;->d:Ljava/lang/String;

    .line 321
    iget-object v0, p1, Lkne;->e:Lkmu;

    iput-object v0, p0, Lkne$a;->e:Lkmu;

    .line 322
    iget-object v0, p1, Lkne;->f:Lkmv;

    invoke-virtual {v0}, Lkmv;->a()Lkmv$a;

    move-result-object v0

    iput-object v0, p0, Lkne$a;->f:Lkmv$a;

    .line 323
    iget-object v0, p1, Lkne;->g:Lknf;

    iput-object v0, p0, Lkne$a;->g:Lknf;

    .line 324
    iget-object v0, p1, Lkne;->h:Lkne;

    iput-object v0, p0, Lkne$a;->h:Lkne;

    .line 325
    iget-object v0, p1, Lkne;->i:Lkne;

    iput-object v0, p0, Lkne$a;->i:Lkne;

    .line 326
    iget-object v0, p1, Lkne;->j:Lkne;

    iput-object v0, p0, Lkne$a;->j:Lkne;

    .line 327
    iget-wide v0, p1, Lkne;->k:J

    iput-wide v0, p0, Lkne$a;->k:J

    .line 328
    iget-wide v0, p1, Lkne;->l:J

    iput-wide v0, p0, Lkne$a;->l:J

    .line 329
    return-void
.end method

.method private static a(Ljava/lang/String;Lkne;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "response"    # Lkne;

    .prologue
    .line 403
    iget-object v0, p1, Lkne;->g:Lknf;

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_0
    iget-object v0, p1, Lkne;->h:Lkne;

    if-eqz v0, :cond_1

    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_1
    iget-object v0, p1, Lkne;->i:Lkne;

    if-eqz v0, :cond_2

    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_2
    iget-object v0, p1, Lkne;->j:Lkne;

    if-eqz v0, :cond_3

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lkne$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 370
    iget-object v0, p0, Lkne$a;->f:Lkmv$a;

    invoke-virtual {v0, p1, p2}, Lkmv$a;->a(Ljava/lang/String;Ljava/lang/String;)Lkmv$a;

    .line 371
    return-object p0
.end method

.method public final a(Lkmv;)Lkne$a;
    .locals 1
    .param p1, "headers"    # Lkmv;

    .prologue
    .line 381
    invoke-virtual {p1}, Lkmv;->a()Lkmv$a;

    move-result-object v0

    iput-object v0, p0, Lkne$a;->f:Lkmv$a;

    .line 382
    return-object p0
.end method

.method public final a(Lkne;)Lkne$a;
    .locals 1
    .param p1, "networkResponse"    # Lkne;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 391
    if-eqz p1, :cond_0

    const-string/jumbo v0, "networkResponse"

    invoke-static {v0, p1}, Lkne$a;->a(Ljava/lang/String;Lkne;)V

    .line 392
    :cond_0
    iput-object p1, p0, Lkne$a;->h:Lkne;

    .line 393
    return-object p0
.end method

.method public final a()Lkne;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 437
    iget-object v0, p0, Lkne$a;->a:Lknc;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_0
    iget-object v0, p0, Lkne$a;->b:Lokhttp3/Protocol;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_1
    iget v0, p0, Lkne$a;->c:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lkne$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_2
    iget-object v0, p0, Lkne$a;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_3
    new-instance v0, Lkne;

    invoke-direct {v0, p0}, Lkne;-><init>(Lkne$a;)V

    return-object v0
.end method

.method public final b(Lkne;)Lkne$a;
    .locals 1
    .param p1, "cacheResponse"    # Lkne;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 397
    if-eqz p1, :cond_0

    const-string/jumbo v0, "cacheResponse"

    invoke-static {v0, p1}, Lkne$a;->a(Ljava/lang/String;Lkne;)V

    .line 398
    :cond_0
    iput-object p1, p0, Lkne$a;->i:Lkne;

    .line 399
    return-object p0
.end method
