.class abstract Llka;
.super Ljava/util/AbstractQueue;
.source "SpscUnboundedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected producerIndex:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Llka;, "Llka<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method
