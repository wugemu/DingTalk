.class Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;
.super Ljava/lang/Object;
.source "DeviceIDManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/mtop/deviceid/DeviceIDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceIdDomain"
.end annotation


# instance fields
.field public mCreated:Z

.field public mDeviceId:Ljava/lang/String;

.field public mLastFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmtopsdk/mtop/deviceid/DeviceIDManager;


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/deviceid/DeviceIDManager;Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p2, "mLastFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    iput-object p1, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;->this$0:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p2, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;->mLastFuture:Ljava/util/concurrent/Future;

    .line 281
    return-void
.end method
