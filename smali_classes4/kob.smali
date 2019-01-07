.class public final Lkob;
.super Ljava/lang/Object;
.source "RealInterceptorChain.java"

# interfaces
.implements Lkmx$a;


# instance fields
.field public final a:Lknu;

.field final b:Lknx;

.field final c:Lknr;

.field public final d:Lknc;

.field final e:Lkmi;

.field final f:Lkms;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkmx;",
            ">;"
        }
    .end annotation
.end field

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lknu;Lknx;Lknr;ILknc;Lkmi;Lkms;III)V
    .locals 0
    .param p2, "streamAllocation"    # Lknu;
    .param p3, "httpCodec"    # Lknx;
    .param p4, "connection"    # Lknr;
    .param p5, "index"    # I
    .param p6, "request"    # Lknc;
    .param p7, "call"    # Lkmi;
    .param p8, "eventListener"    # Lkms;
    .param p9, "connectTimeout"    # I
    .param p10, "readTimeout"    # I
    .param p11, "writeTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkmx;",
            ">;",
            "Lknu;",
            "Lknx;",
            "Lknr;",
            "I",
            "Lknc;",
            "Lkmi;",
            "Lkms;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lkmx;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lkob;->g:Ljava/util/List;

    .line 54
    iput-object p4, p0, Lkob;->c:Lknr;

    .line 55
    iput-object p2, p0, Lkob;->a:Lknu;

    .line 56
    iput-object p3, p0, Lkob;->b:Lknx;

    .line 57
    iput p5, p0, Lkob;->h:I

    .line 58
    iput-object p6, p0, Lkob;->d:Lknc;

    .line 59
    iput-object p7, p0, Lkob;->e:Lkmi;

    .line 60
    iput-object p8, p0, Lkob;->f:Lkms;

    .line 61
    iput p9, p0, Lkob;->i:I

    .line 62
    iput p10, p0, Lkob;->j:I

    .line 63
    iput p11, p0, Lkob;->k:I

    .line 64
    return-void
.end method


# virtual methods
.method public final a()Lknc;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lkob;->d:Lknc;

    return-object v0
.end method

.method public final a(Lknc;)Lkne;
    .locals 3
    .param p1, "request"    # Lknc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 121
    iget-object v0, p0, Lkob;->a:Lknu;

    iget-object v1, p0, Lkob;->b:Lknx;

    iget-object v2, p0, Lkob;->c:Lknr;

    invoke-virtual {p0, p1, v0, v1, v2}, Lkob;->a(Lknc;Lknu;Lknx;Lknr;)Lkne;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lknc;Lknu;Lknx;Lknr;)Lkne;
    .locals 14
    .param p1, "request"    # Lknc;
    .param p2, "streamAllocation"    # Lknu;
    .param p3, "httpCodec"    # Lknx;
    .param p4, "connection"    # Lknr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 126
    iget v1, p0, Lkob;->h:I

    iget-object v2, p0, Lkob;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 128
    :cond_0
    iget v1, p0, Lkob;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkob;->l:I

    .line 131
    iget-object v1, p0, Lkob;->b:Lknx;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkob;->c:Lknr;

    .line 1049
    iget-object v2, p1, Lknc;->a:Lkmw;

    .line 131
    invoke-virtual {v1, v2}, Lknr;->a(Lkmw;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "network interceptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lkob;->g:Ljava/util/List;

    iget v4, p0, Lkob;->h:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must retain the same host and port"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_1
    iget-object v1, p0, Lkob;->b:Lknx;

    if-eqz v1, :cond_2

    iget v1, p0, Lkob;->l:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 138
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "network interceptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lkob;->g:Ljava/util/List;

    iget v4, p0, Lkob;->h:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must call proceed() exactly once"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_2
    new-instance v0, Lkob;

    iget-object v1, p0, Lkob;->g:Ljava/util/List;

    iget v2, p0, Lkob;->h:I

    add-int/lit8 v5, v2, 0x1

    iget-object v7, p0, Lkob;->e:Lkmi;

    iget-object v8, p0, Lkob;->f:Lkms;

    iget v9, p0, Lkob;->i:I

    iget v10, p0, Lkob;->j:I

    iget v11, p0, Lkob;->k:I

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v11}, Lkob;-><init>(Ljava/util/List;Lknu;Lknx;Lknr;ILknc;Lkmi;Lkms;III)V

    .line 146
    .local v0, "next":Lkob;
    iget-object v1, p0, Lkob;->g:Ljava/util/List;

    iget v2, p0, Lkob;->h:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkmx;

    .line 147
    .local v12, "interceptor":Lkmx;
    invoke-interface {v12, v0}, Lkmx;->a(Lkmx$a;)Lkne;

    move-result-object v13

    .line 150
    .local v13, "response":Lkne;
    if-eqz p3, :cond_3

    iget v1, p0, Lkob;->h:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lkob;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget v1, v0, Lkob;->l:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 151
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "network interceptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must call proceed() exactly once"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_3
    if-nez v13, :cond_4

    .line 157
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "interceptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " returned null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1177
    :cond_4
    iget-object v1, v13, Lkne;->g:Lknf;

    .line 160
    if-nez v1, :cond_5

    .line 161
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "interceptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " returned a response with no body"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_5
    return-object v13
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lkob;->i:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lkob;->j:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lkob;->k:I

    return v0
.end method
