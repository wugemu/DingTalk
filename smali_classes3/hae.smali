.class public abstract Lhae;
.super Ljava/lang/Object;
.source "CompressEventListener.java"


# instance fields
.field private mCustomType:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/alibaba/laiwang/photokit/compress/CompressEventType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V
    .locals 1
    .param p1, "_type"    # Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lhae;->mCustomType:Ljava/util/Vector;

    .line 20
    invoke-virtual {p0, p1}, Lhae;->addListenType(Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V

    .line 21
    return-void
.end method


# virtual methods
.method public addListenType(Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V
    .locals 1
    .param p1, "_type"    # Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    .prologue
    .line 28
    iget-object v0, p0, Lhae;->mCustomType:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public abstract exec(Lhac;)V
.end method

.method public getListenerType()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/alibaba/laiwang/photokit/compress/CompressEventType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lhae;->mCustomType:Ljava/util/Vector;

    return-object v0
.end method
