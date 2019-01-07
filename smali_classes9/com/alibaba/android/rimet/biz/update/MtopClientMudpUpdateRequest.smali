.class public Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;
.super Ljava/lang/Object;
.source "MtopClientMudpUpdateRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field public API_NAME:Ljava/lang/String;

.field public NEED_ECODE:Z

.field public NEED_SESSION:Z

.field public VERSION:Ljava/lang/String;

.field public adhocUserId:Ljava/lang/String;

.field public apiLevel:J

.field public appVersion:Ljava/lang/String;

.field public arg1:Ljava/lang/String;

.field public arg10:Ljava/lang/String;

.field public arg2:Ljava/lang/String;

.field public arg3:Ljava/lang/String;

.field public arg4:Ljava/lang/String;

.field public arg5:Ljava/lang/String;

.field public arg6:Ljava/lang/String;

.field public arg7:Ljava/lang/String;

.field public arg8:Ljava/lang/String;

.field public arg9:Ljava/lang/String;

.field public brand:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public identifier:Ljava/lang/String;

.field public jailBreak:Z

.field public locale:Ljava/lang/String;

.field public md5Sum:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public netStatus:J

.field public patchVersion:J

.field public sysOsVersion:Ljava/lang/String;

.field public updateTypes:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "mtop.client.mudp.update"

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->API_NAME:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->VERSION:Ljava/lang/String;

    .line 36
    iput-boolean v4, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->NEED_ECODE:Z

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->NEED_SESSION:Z

    .line 44
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->appVersion:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->city:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->updateTypes:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->locale:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->arg7:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->arg6:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->arg9:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->arg8:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->sysOsVersion:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->model:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->brand:Ljava/lang/String;

    .line 88
    iput-wide v2, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->apiLevel:J

    .line 92
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->identifier:Ljava/lang/String;

    .line 96
    iput-wide v2, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->netStatus:J

    .line 100
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->arg3:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->arg2:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->arg5:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->arg4:Ljava/lang/String;

    .line 116
    iput-wide v2, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->patchVersion:J

    .line 120
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->arg1:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->md5Sum:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->arg10:Ljava/lang/String;

    .line 132
    iput-boolean v4, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->jailBreak:Z

    .line 136
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->adhocUserId:Ljava/lang/String;

    return-void
.end method
