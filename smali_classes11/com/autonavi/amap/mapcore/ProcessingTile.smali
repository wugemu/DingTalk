.class Lcom/autonavi/amap/mapcore/ProcessingTile;
.super Ljava/lang/Object;
.source "TilesProcessingCtrl.java"


# static fields
.field public static final STATE_REQUESTING:I = 0x1

.field public static final STATE_WAITING:I


# instance fields
.field flag:I

.field keyname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/ProcessingTile;->keyname:Ljava/lang/String;

    .line 51
    iput p2, p0, Lcom/autonavi/amap/mapcore/ProcessingTile;->flag:I

    .line 52
    return-void
.end method
