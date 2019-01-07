.class public final Lkne;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkne$a;
    }
.end annotation


# instance fields
.field public final a:Lknc;

.field final b:Lokhttp3/Protocol;

.field public final c:I

.field final d:Ljava/lang/String;

.field public final e:Lkmu;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final f:Lkmv;

.field public final g:Lknf;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final h:Lkne;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final i:Lkne;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final j:Lkne;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final k:J

.field public final l:J

.field private volatile m:Lkmh;


# direct methods
.method constructor <init>(Lkne$a;)V
    .locals 2
    .param p1, "builder"    # Lkne$a;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-object v0, p1, Lkne$a;->a:Lknc;

    iput-object v0, p0, Lkne;->a:Lknc;

    .line 61
    iget-object v0, p1, Lkne$a;->b:Lokhttp3/Protocol;

    iput-object v0, p0, Lkne;->b:Lokhttp3/Protocol;

    .line 62
    iget v0, p1, Lkne$a;->c:I

    iput v0, p0, Lkne;->c:I

    .line 63
    iget-object v0, p1, Lkne$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lkne;->d:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lkne$a;->e:Lkmu;

    iput-object v0, p0, Lkne;->e:Lkmu;

    .line 65
    iget-object v0, p1, Lkne$a;->f:Lkmv$a;

    invoke-virtual {v0}, Lkmv$a;->a()Lkmv;

    move-result-object v0

    iput-object v0, p0, Lkne;->f:Lkmv;

    .line 66
    iget-object v0, p1, Lkne$a;->g:Lknf;

    iput-object v0, p0, Lkne;->g:Lknf;

    .line 67
    iget-object v0, p1, Lkne$a;->h:Lkne;

    iput-object v0, p0, Lkne;->h:Lkne;

    .line 68
    iget-object v0, p1, Lkne$a;->i:Lkne;

    iput-object v0, p0, Lkne;->i:Lkne;

    .line 69
    iget-object v0, p1, Lkne$a;->j:Lkne;

    iput-object v0, p0, Lkne;->j:Lkne;

    .line 70
    iget-wide v0, p1, Lkne$a;->k:J

    iput-wide v0, p0, Lkne;->k:J

    .line 71
    iget-wide v0, p1, Lkne$a;->l:J

    iput-wide v0, p0, Lkne;->l:J

    .line 72
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lkne;->f:Lkmv;

    invoke-virtual {v0, p1}, Lkmv;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lknc;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lkne;->a:Lknc;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lkne;->c:I

    return v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 127
    .line 1131
    iget-object v0, p0, Lkne;->f:Lkmv;

    invoke-virtual {v0, p1}, Lkmv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 127
    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lkne;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final close()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 280
    iget-object v0, p0, Lkne;->g:Lknf;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    iget-object v0, p0, Lkne;->g:Lknf;

    invoke-virtual {v0}, Lknf;->close()V

    .line 284
    return-void
.end method

.method public final d()Lknf;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lkne;->g:Lknf;

    return-object v0
.end method

.method public final e()Lkne$a;
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lkne$a;

    invoke-direct {v0, p0}, Lkne$a;-><init>(Lkne;)V

    return-object v0
.end method

.method public final f()Lkmh;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 250
    iget-object v0, p0, Lkne;->m:Lkmh;

    .line 251
    .local v0, "result":Lkmh;
    if-eqz v0, :cond_0

    .end local v0    # "result":Lkmh;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lkmh;
    :cond_0
    iget-object v1, p0, Lkne;->f:Lkmv;

    invoke-static {v1}, Lkmh;->a(Lkmv;)Lkmh;

    move-result-object v0

    .end local v0    # "result":Lkmh;
    iput-object v0, p0, Lkne;->m:Lkmh;

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkne;->b:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lkne;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkne;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkne;->a:Lknc;

    .line 2049
    iget-object v1, v1, Lknc;->a:Lkmw;

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    return-object v0
.end method
