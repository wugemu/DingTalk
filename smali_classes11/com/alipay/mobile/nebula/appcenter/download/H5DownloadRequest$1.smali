.class final Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest$1;
.super Ljava/lang/Object;
.source "H5DownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 302
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;-><init>(Landroid/os/Parcel;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest$1;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 307
    new-array v0, p1, [Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest$1;->newArray(I)[Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    move-result-object v0

    return-object v0
.end method
