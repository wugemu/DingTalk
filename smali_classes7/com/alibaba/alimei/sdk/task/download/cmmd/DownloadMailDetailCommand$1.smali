.class final Lcom/alibaba/alimei/sdk/task/download/cmmd/DownloadMailDetailCommand$1;
.super Ljava/lang/Object;
.source "DownloadMailDetailCommand.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/task/download/cmmd/DownloadMailDetailCommand;
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
        "Lcom/alibaba/alimei/sdk/task/download/cmmd/DownloadMailDetailCommand;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 43
    .line 2046
    new-instance v0, Lcom/alibaba/alimei/sdk/task/download/cmmd/DownloadMailDetailCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/alibaba/alimei/sdk/task/download/cmmd/DownloadMailDetailCommand;-><init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/task/download/cmmd/DownloadMailDetailCommand$1;)V

    .line 43
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    .line 1050
    new-array v0, p1, [Lcom/alibaba/alimei/sdk/task/download/cmmd/DownloadMailDetailCommand;

    .line 43
    return-object v0
.end method