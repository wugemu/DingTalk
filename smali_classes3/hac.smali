.class public final Lhac;
.super Ljava/util/Observable;
.source "CompressEvent.java"


# instance fields
.field public a:Lhag;

.field public b:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;


# direct methods
.method public constructor <init>(Lhag;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V
    .locals 1
    .param p1, "source"    # Lhag;
    .param p2, "eventType"    # Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 25
    iput-object p1, p0, Lhac;->a:Lhag;

    .line 26
    iput-object p2, p0, Lhac;->b:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    .line 1050
    invoke-static {}, Lhad;->a()Lhad;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 1051
    invoke-super {p0}, Ljava/util/Observable;->setChanged()V

    .line 1052
    iget-object v0, p0, Lhac;->a:Lhag;

    invoke-super {p0, v0}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 28
    return-void
.end method
