.class final Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$1;
.super Ljava/lang/Object;
.source "ChangedFolders.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;
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
        "Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 169
    new-instance v0, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;-><init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$1;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 174
    new-array v0, p1, [Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$1;->newArray(I)[Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    move-result-object v0

    return-object v0
.end method
