.class final Lrx/internal/operators/OperatorWindowWithSize$a$1;
.super Ljava/lang/Object;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Llgu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithSize$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/OperatorWindowWithSize$a;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithSize$a;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OperatorWindowWithSize$a;

    .prologue
    .line 149
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$a$1;, "Lrx/internal/operators/OperatorWindowWithSize$a$1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$a$1;->a:Lrx/internal/operators/OperatorWindowWithSize$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final request(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$a$1;, "Lrx/internal/operators/OperatorWindowWithSize$a$1;"
    const-wide/16 v4, 0x0

    .line 152
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    .line 153
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "n >= 0 required but it was "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_0
    cmp-long v2, p1, v4

    if-eqz v2, :cond_1

    .line 156
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$a$1;->a:Lrx/internal/operators/OperatorWindowWithSize$a;

    iget v2, v2, Lrx/internal/operators/OperatorWindowWithSize$a;->b:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Llhn;->a(JJ)J

    move-result-wide v0

    .line 157
    .local v0, "u":J
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$a$1;->a:Lrx/internal/operators/OperatorWindowWithSize$a;

    invoke-static {v2, v0, v1}, Lrx/internal/operators/OperatorWindowWithSize$a;->a(Lrx/internal/operators/OperatorWindowWithSize$a;J)V

    .line 159
    .end local v0    # "u":J
    :cond_1
    return-void
.end method
