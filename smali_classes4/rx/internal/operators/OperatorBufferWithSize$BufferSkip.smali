.class final Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;
.super Llgy;
.source "OperatorBufferWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferSkip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llgy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:I

.field d:J

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llgy;II)V
    .locals 2
    .param p2, "count"    # I
    .param p3, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    .local p1, "actual":Llgy;, "Llgy<-Ljava/util/List<TT;>;>;"
    invoke-direct {p0}, Llgy;-><init>()V

    .line 159
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->a:Llgy;

    .line 160
    iput p2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->b:I

    .line 161
    iput p3, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->c:I

    .line 162
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->a(J)V

    .line 163
    return-void
.end method

.method static synthetic a(Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;
    .param p1, "x1"    # J

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->a(J)V

    return-void
.end method

.method static synthetic b(Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;
    .param p1, "x1"    # J

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->a(J)V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 198
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->e:Ljava/util/List;

    .line 199
    .local v0, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v0, :cond_0

    .line 200
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->e:Ljava/util/List;

    .line 201
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->a:Llgy;

    invoke-virtual {v1, v0}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 203
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->a:Llgy;

    invoke-virtual {v1}, Llgy;->onCompleted()V

    .line 204
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 192
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->e:Ljava/util/List;

    .line 193
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 194
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const-wide/16 v6, 0x0

    .line 167
    iget-wide v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->d:J

    .line 168
    .local v2, "i":J
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->e:Ljava/util/List;

    .line 169
    .local v0, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->b:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .restart local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->e:Ljava/util/List;

    .line 173
    :cond_0
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 174
    iget v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->c:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 175
    iput-wide v6, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->d:J

    .line 180
    :goto_0
    if-eqz v0, :cond_1

    .line 181
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v4, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->b:I

    if-ne v1, v4, :cond_1

    .line 184
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->e:Ljava/util/List;

    .line 185
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->a:Llgy;

    invoke-virtual {v1, v0}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 188
    :cond_1
    return-void

    .line 177
    :cond_2
    iput-wide v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->d:J

    goto :goto_0
.end method
