.class Lcom/amap/api/mapcore/util/dw$a;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/amap/api/mapcore/util/dw;

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lcom/amap/api/mapcore/util/dw;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/mapcore/util/dw;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    iput-object p1, p0, Lcom/amap/api/mapcore/util/dw$a;->a:Lcom/amap/api/mapcore/util/dw;

    .line 777
    iput-object p2, p0, Lcom/amap/api/mapcore/util/dw$a;->b:[Ljava/lang/Object;

    .line 778
    return-void
.end method
