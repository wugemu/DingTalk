.class final Lrx/internal/operators/OperatorZip$a;
.super Llgy;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llgy",
        "<[",
        "Llgs;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:Lrx/internal/operators/OperatorZip$Zip;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorZip$Zip",
            "<TR;>;"
        }
    .end annotation
.end field

.field final c:Lrx/internal/operators/OperatorZip$ZipProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorZip$ZipProducer",
            "<TR;>;"
        }
    .end annotation
.end field

.field d:Z

.field final synthetic e:Lrx/internal/operators/OperatorZip;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorZip;Llgy;Lrx/internal/operators/OperatorZip$Zip;Lrx/internal/operators/OperatorZip$ZipProducer;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OperatorZip;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TR;>;",
            "Lrx/internal/operators/OperatorZip$Zip",
            "<TR;>;",
            "Lrx/internal/operators/OperatorZip$ZipProducer",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lrx/internal/operators/OperatorZip$a;, "Lrx/internal/operators/OperatorZip<TR;>.a;"
    .local p2, "child":Llgy;, "Llgy<-TR;>;"
    .local p3, "zipper":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    .local p4, "producer":Lrx/internal/operators/OperatorZip$ZipProducer;, "Lrx/internal/operators/OperatorZip$ZipProducer<TR;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorZip$a;->e:Lrx/internal/operators/OperatorZip;

    invoke-direct {p0}, Llgy;-><init>()V

    .line 119
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$a;->a:Llgy;

    .line 120
    iput-object p3, p0, Lrx/internal/operators/OperatorZip$a;->b:Lrx/internal/operators/OperatorZip$Zip;

    .line 121
    iput-object p4, p0, Lrx/internal/operators/OperatorZip$a;->c:Lrx/internal/operators/OperatorZip$ZipProducer;

    .line 122
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/OperatorZip$a;, "Lrx/internal/operators/OperatorZip<TR;>.a;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorZip$a;->d:Z

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$a;->a:Llgy;

    invoke-virtual {v0}, Llgy;->onCompleted()V

    .line 130
    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 134
    .local p0, "this":Lrx/internal/operators/OperatorZip$a;, "Lrx/internal/operators/OperatorZip<TR;>.a;"
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$a;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 109
    .local p0, "this":Lrx/internal/operators/OperatorZip$a;, "Lrx/internal/operators/OperatorZip<TR;>.a;"
    check-cast p1, [Llgs;

    .line 1139
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 1140
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$a;->a:Llgy;

    invoke-virtual {v0}, Llgy;->onCompleted()V

    :goto_0
    return-void

    .line 1142
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorZip$a;->d:Z

    .line 1143
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$a;->b:Lrx/internal/operators/OperatorZip$Zip;

    iget-object v1, p0, Lrx/internal/operators/OperatorZip$a;->c:Lrx/internal/operators/OperatorZip$ZipProducer;

    invoke-virtual {v0, p1, v1}, Lrx/internal/operators/OperatorZip$Zip;->start([Llgs;Ljava/util/concurrent/atomic/AtomicLong;)V

    goto :goto_0
.end method
