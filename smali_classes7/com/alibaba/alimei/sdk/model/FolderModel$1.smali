.class final Lcom/alibaba/alimei/sdk/model/FolderModel$1;
.super Ljava/lang/Object;
.source "FolderModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/model/FolderModel;
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
        "Lcom/alibaba/alimei/sdk/model/FolderModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 457
    .line 2459
    new-instance v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-direct {v0, p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;-><init>(Landroid/os/Parcel;)V

    .line 457
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 457
    .line 1462
    new-array v0, p1, [Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 457
    return-object v0
.end method
