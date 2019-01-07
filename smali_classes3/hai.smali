.class public final Lhai;
.super Ljava/util/Observable;
.source "ConvertEvent.java"


# instance fields
.field public a:Lhal;

.field public b:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;


# direct methods
.method public constructor <init>(Lhal;Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;)V
    .locals 1
    .param p1, "source"    # Lhal;
    .param p2, "eventType"    # Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 17
    iput-object p1, p0, Lhai;->a:Lhal;

    .line 18
    iput-object p2, p0, Lhai;->b:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    .line 20
    invoke-static {}, Lhaj;->a()Lhaj;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 21
    invoke-super {p0}, Ljava/util/Observable;->setChanged()V

    .line 22
    iget-object v0, p0, Lhai;->a:Lhal;

    invoke-super {p0, v0}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 23
    return-void
.end method
