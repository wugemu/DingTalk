.class final Lrx/internal/operators/OperatorBufferWithSize$a$1;
.super Ljava/lang/Object;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Llgu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithSize$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/OperatorBufferWithSize$a;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSize$a;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OperatorBufferWithSize$a;

    .prologue
    .line 134
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$a$1;, "Lrx/internal/operators/OperatorBufferWithSize$a$1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$a$1;->a:Lrx/internal/operators/OperatorBufferWithSize$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final request(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$a$1;, "Lrx/internal/operators/OperatorBufferWithSize$a$1;"
    const-wide/16 v4, 0x0

    .line 137
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    .line 138
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "n >= required but it was "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_0
    cmp-long v2, p1, v4

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$a$1;->a:Lrx/internal/operators/OperatorBufferWithSize$a;

    iget v2, v2, Lrx/internal/operators/OperatorBufferWithSize$a;->b:I

    int-to-long v2, v2

    invoke-static {p1, p2, v2, v3}, Llhn;->a(JJ)J

    move-result-wide v0

    .line 142
    .local v0, "u":J
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$a$1;->a:Lrx/internal/operators/OperatorBufferWithSize$a;

    invoke-static {v2, v0, v1}, Lrx/internal/operators/OperatorBufferWithSize$a;->a(Lrx/internal/operators/OperatorBufferWithSize$a;J)V

    .line 144
    .end local v0    # "u":J
    :cond_1
    return-void
.end method
