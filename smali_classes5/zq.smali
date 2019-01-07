.class public final Lzq;
.super Ljava/lang/Object;
.source "VideoHelper.java"


# instance fields
.field public a:Ljava/lang/String;

.field b:D

.field c:I

.field d:Z

.field e:J

.field f:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;DILcma;)V
    .locals 0
    .param p1, "inputPath"    # Ljava/lang/String;
    .param p2, "scaleFactor"    # D
    .param p4, "quality"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DI",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lzq;->a:Ljava/lang/String;

    .line 63
    iput-wide p2, p0, Lzq;->b:D

    .line 64
    iput p4, p0, Lzq;->c:I

    .line 65
    iput-object p5, p0, Lzq;->f:Lcma;

    .line 66
    return-void
.end method
