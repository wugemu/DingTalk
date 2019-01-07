.class final Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;
.super Ljava/lang/Object;
.source "H5AppManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DownloadResult"
.end annotation


# instance fields
.field public dataLength:I

.field public errorDescription:Ljava/lang/String;

.field public finishDate:Ljava/lang/String;

.field public responseHeader:Ljava/lang/String;

.field public startDate:Ljava/lang/String;

.field public success:Z

.field public unzipResult:Z

.field public url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$1;

    .prologue
    .line 1129
    invoke-direct {p0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;-><init>()V

    return-void
.end method
