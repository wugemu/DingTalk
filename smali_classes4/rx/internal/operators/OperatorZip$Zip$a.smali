.class final Lrx/internal/operators/OperatorZip$Zip$a;
.super Llgy;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorZip$Zip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Llin;

.field final synthetic b:Lrx/internal/operators/OperatorZip$Zip;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorZip$Zip;)V
    .locals 1
    .param p1, "this$0"    # Lrx/internal/operators/OperatorZip$Zip;

    .prologue
    .line 291
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$a;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.a;"
    iput-object p1, p0, Lrx/internal/operators/OperatorZip$Zip$a;->b:Lrx/internal/operators/OperatorZip$Zip;

    invoke-direct {p0}, Llgy;-><init>()V

    .line 293
    invoke-static {}, Llin;->b()Llin;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip$Zip$a;->a:Llin;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 297
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$a;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.a;"
    sget v0, Llin;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorZip$Zip$a;->a(J)V

    .line 298
    return-void
.end method

.method public final b(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 301
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$a;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.a;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorZip$Zip$a;->a(J)V

    .line 302
    return-void
.end method

.method public final onCompleted()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 306
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$a;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.a;"
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip$a;->a:Llin;

    .line 1331
    iget-object v1, v0, Llin;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 1332
    invoke-static {}, Lrx/internal/operators/NotificationLite;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Llin;->a:Ljava/lang/Object;

    .line 307
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip$a;->b:Lrx/internal/operators/OperatorZip$Zip;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorZip$Zip;->tick()V

    .line 308
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 313
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$a;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.a;"
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip$a;->b:Lrx/internal/operators/OperatorZip$Zip;

    iget-object v0, v0, Lrx/internal/operators/OperatorZip$Zip;->child:Llgt;

    invoke-interface {v0, p1}, Llgt;->onError(Ljava/lang/Throwable;)V

    .line 314
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 319
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$a;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.a;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorZip$Zip$a;->a:Llin;

    invoke-virtual {v1, p1}, Llin;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    iget-object v1, p0, Lrx/internal/operators/OperatorZip$Zip$a;->b:Lrx/internal/operators/OperatorZip$Zip;

    invoke-virtual {v1}, Lrx/internal/operators/OperatorZip$Zip;->tick()V

    .line 324
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Lrx/exceptions/MissingBackpressureException;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorZip$Zip$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
