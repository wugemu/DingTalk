.class public final Lkss;
.super Ljava/lang/Object;
.source "MimeTokenStream.java"


# instance fields
.field public final a:Lksr;

.field public b:I

.field public c:Lkso;

.field private final d:Lkqa;

.field private final e:Lksu;

.field private final f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lkso;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Lksq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lksr;

    invoke-direct {v0}, Lksr;-><init>()V

    invoke-direct {p0, v0}, Lkss;-><init>(Lksr;)V

    .line 97
    return-void
.end method

.method private constructor <init>(Lksr;)V
    .locals 1
    .param p1, "config"    # Lksr;

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0, v0}, Lkss;-><init>(Lksr;Lksu;Lkqa;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lksr;Lksu;Lkqa;)V
    .locals 1
    .param p1, "config"    # Lksr;
    .param p2, "bodyDescFactory"    # Lksu;
    .param p3, "monitor"    # Lkqa;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lkss;->f:Ljava/util/LinkedList;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lkss;->b:I

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lkss;->g:I

    .line 114
    iput-object p1, p0, Lkss;->a:Lksr;

    .line 115
    if-eqz p3, :cond_0

    .line 116
    .end local p3    # "monitor":Lkqa;
    :goto_0
    iput-object p3, p0, Lkss;->d:Lkqa;

    .line 117
    iput-object p2, p0, Lkss;->e:Lksu;

    .line 118
    return-void

    .line 116
    .restart local p3    # "monitor":Lkqa;
    :cond_0
    sget-object p3, Lkqa;->b:Lkqa;

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;Lkst;I)V
    .locals 8
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "newBodyDescriptor"    # Lkst;
    .param p3, "start"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 177
    const/4 v1, 0x0

    .line 178
    .local v1, "lineSource":Lksd;
    iget-object v0, p0, Lkss;->a:Lksr;

    .line 184
    new-instance v0, Lksq;

    const/4 v5, 0x1

    iget-object v6, p0, Lkss;->a:Lksr;

    iget-object v7, p0, Lkss;->d:Lkqa;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v7}, Lksq;-><init>(Lksd;Ljava/io/InputStream;Lkst;IILksr;Lkqa;)V

    iput-object v0, p0, Lkss;->h:Lksq;

    .line 193
    iget-object v0, p0, Lkss;->h:Lksq;

    const/4 v2, 0x0

    .line 2090
    iput v2, v0, Lksq;->g:I

    .line 194
    iget-object v0, p0, Lkss;->h:Lksq;

    iput-object v0, p0, Lkss;->c:Lkso;

    .line 195
    iget-object v0, p0, Lkss;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 196
    iget-object v0, p0, Lkss;->f:Ljava/util/LinkedList;

    iget-object v2, p0, Lkss;->c:Lkso;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lkss;->c:Lkso;

    invoke-interface {v0}, Lkso;->a()I

    move-result v0

    iput v0, p0, Lkss;->b:I

    .line 198
    return-void
.end method

.method private d()Lkst;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 167
    iget-object v1, p0, Lkss;->e:Lksu;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lkss;->e:Lksu;

    invoke-interface {v1}, Lksu;->a()Lkst;

    move-result-object v0

    .line 172
    .local v0, "result":Lkst;
    :goto_0
    return-object v0

    .line 170
    .end local v0    # "result":Lkst;
    :cond_0
    new-instance v0, Lksn;

    const/4 v1, 0x0

    iget-object v2, p0, Lkss;->d:Lkqa;

    invoke-direct {v0, v1, v2}, Lksn;-><init>(Lksl;Lkqa;)V

    .restart local v0    # "result":Lkst;
    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lkss;->c:Lkso;

    invoke-interface {v0}, Lkso;->h()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 125
    invoke-direct {p0}, Lkss;->d()Lkst;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lkss;->a(Ljava/io/InputStream;Lkst;I)V

    .line 126
    return-void
.end method

.method public final b()Lksl;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lkss;->c:Lkso;

    invoke-interface {v0}, Lkso;->e()Lksl;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 347
    iget v1, p0, Lkss;->b:I

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lkss;->c:Lkso;

    if-nez v1, :cond_2

    .line 348
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No more tokens are available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 360
    .local v0, "next":Lkso;
    :cond_1
    iget-object v1, p0, Lkss;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 361
    iget-object v1, p0, Lkss;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 362
    const/4 v1, 0x0

    iput-object v1, p0, Lkss;->c:Lkso;

    .line 350
    .end local v0    # "next":Lkso;
    :cond_2
    :goto_0
    iget-object v1, p0, Lkss;->c:Lkso;

    if-eqz v1, :cond_5

    .line 351
    iget-object v1, p0, Lkss;->c:Lkso;

    invoke-interface {v1}, Lkso;->g()Lkso;

    move-result-object v0

    .line 352
    .restart local v0    # "next":Lkso;
    if-eqz v0, :cond_3

    .line 353
    iget-object v1, p0, Lkss;->f:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 354
    iput-object v0, p0, Lkss;->c:Lkso;

    .line 356
    :cond_3
    iget-object v1, p0, Lkss;->c:Lkso;

    invoke-interface {v1}, Lkso;->a()I

    move-result v1

    iput v1, p0, Lkss;->b:I

    .line 357
    iget v1, p0, Lkss;->b:I

    if-eq v1, v3, :cond_1

    .line 358
    iget v1, p0, Lkss;->b:I

    .line 369
    .end local v0    # "next":Lkso;
    :goto_1
    return v1

    .line 364
    .restart local v0    # "next":Lkso;
    :cond_4
    iget-object v1, p0, Lkss;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkso;

    iput-object v1, p0, Lkss;->c:Lkso;

    .line 365
    iget-object v1, p0, Lkss;->c:Lkso;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lkso;->b(I)V

    goto :goto_0

    .line 368
    .end local v0    # "next":Lkso;
    :cond_5
    iput v3, p0, Lkss;->b:I

    .line 369
    iget v1, p0, Lkss;->b:I

    goto :goto_1
.end method
