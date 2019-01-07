.class public final Lbto;
.super Ljava/lang/Object;
.source "DeviceBeaconReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbto$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Lbtn;


# direct methods
.method public constructor <init>(JJLbtn;)V
    .locals 1
    .param p1, "devServiceId"    # J
    .param p3, "devId"    # J
    .param p5, "listener"    # Lbtn;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lbto;->a:J

    .line 16
    iput-wide p3, p0, Lbto;->b:J

    .line 17
    iput-object p5, p0, Lbto;->c:Lbtn;

    .line 18
    return-void
.end method
