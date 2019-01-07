.class public Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;
.super Ljava/lang/Object;
.source "MtopSysNewDeviceIdRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field public API_NAME:Ljava/lang/String;

.field public NEED_ECODE:Z

.field public NEED_SESSION:Z

.field public VERSION:Ljava/lang/String;

.field public c0:Ljava/lang/String;

.field public c1:Ljava/lang/String;

.field public c2:Ljava/lang/String;

.field public c3:Ljava/lang/String;

.field public c4:Ljava/lang/String;

.field public c5:Ljava/lang/String;

.field public c6:Ljava/lang/String;

.field public device_global_id:Ljava/lang/String;

.field public new_device:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, "mtop.sys.newDeviceId"

    iput-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->API_NAME:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "4.0"

    iput-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->VERSION:Ljava/lang/String;

    .line 26
    iput-boolean v2, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->NEED_ECODE:Z

    .line 31
    iput-boolean v2, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->NEED_SESSION:Z

    .line 35
    iput-boolean v2, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->new_device:Z

    .line 40
    iput-object v1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c6:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c5:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c4:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c3:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c1:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c2:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->device_global_id:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c0:Ljava/lang/String;

    return-void
.end method
