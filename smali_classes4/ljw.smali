.class abstract Lljw;
.super Lljy;
.source "SpscUnboundedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lljy",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected b:J

.field protected c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lljw;, "Lljw<TE;>;"
    invoke-direct {p0}, Lljy;-><init>()V

    return-void
.end method
