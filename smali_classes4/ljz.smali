.class abstract Lljz;
.super Llka;
.source "SpscUnboundedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Llka",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected d:I

.field protected e:J

.field protected f:J

.field protected g:[Ljava/lang/Object;
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
    .line 31
    .local p0, "this":Lljz;, "Lljz<TE;>;"
    invoke-direct {p0}, Llka;-><init>()V

    return-void
.end method
