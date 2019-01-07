.class public final Lknc;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lknc$a;
    }
.end annotation


# instance fields
.field public final a:Lkmw;

.field public final b:Ljava/lang/String;

.field public final c:Lkmv;

.field public final d:Lknd;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Lkmh;


# direct methods
.method constructor <init>(Lknc$a;)V
    .locals 1
    .param p1, "builder"    # Lknc$a;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-object v0, p1, Lknc$a;->a:Lkmw;

    iput-object v0, p0, Lknc;->a:Lkmw;

    .line 42
    iget-object v0, p1, Lknc$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lknc;->b:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lknc$a;->c:Lkmv$a;

    invoke-virtual {v0}, Lkmv$a;->a()Lkmv;

    move-result-object v0

    iput-object v0, p0, Lknc;->c:Lkmv;

    .line 44
    iget-object v0, p1, Lknc$a;->d:Lknd;

    iput-object v0, p0, Lknc;->d:Lknd;

    .line 45
    iget-object v0, p1, Lknc$a;->e:Ljava/util/Map;

    invoke-static {v0}, Lknj;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lknc;->e:Ljava/util/Map;

    .line 46
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lknc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lknc;->c:Lkmv;

    invoke-virtual {v0, p1}, Lkmv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lknd;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lknc;->d:Lknd;

    return-object v0
.end method

.method public final c()Lknc$a;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lknc$a;

    invoke-direct {v0, p0}, Lknc$a;-><init>(Lknc;)V

    return-object v0
.end method

.method public final d()Lkmh;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 101
    iget-object v0, p0, Lknc;->f:Lkmh;

    .line 102
    .local v0, "result":Lkmh;
    if-eqz v0, :cond_0

    .end local v0    # "result":Lkmh;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lkmh;
    :cond_0
    iget-object v1, p0, Lknc;->c:Lkmv;

    invoke-static {v1}, Lkmh;->a(Lkmv;)Lkmh;

    move-result-object v0

    .end local v0    # "result":Lkmh;
    iput-object v0, p0, Lknc;->f:Lkmh;

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Request{method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lknc;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lknc;->a:Lkmw;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lknc;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
