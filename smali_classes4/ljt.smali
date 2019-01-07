.class abstract Lljt;
.super Lljq;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lljq",
        "<TE;>;"
    }
.end annotation

.annotation build Lrx/internal/util/SuppressAnimalSniffer;
.end annotation


# static fields
.field protected static final f:J


# instance fields
.field protected producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-class v0, Lljt;

    const-string/jumbo v1, "producerIndex"

    invoke-static {v0, v1}, Llkb;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lljt;->f:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 47
    .local p0, "this":Lljt;, "Lljt<TE;>;"
    invoke-direct {p0, p1}, Lljq;-><init>(I)V

    .line 48
    return-void
.end method
