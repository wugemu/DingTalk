.class final Lcom/alibaba/alimei/cspace/model/DentryVersionModel$1;
.super Ljava/lang/Object;
.source "DentryVersionModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cspace/model/DentryVersionModel;
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
        "Lcom/alibaba/alimei/cspace/model/DentryVersionModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    .line 2060
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;

    invoke-direct {v0, p1}, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;-><init>(Landroid/os/Parcel;)V

    .line 58
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    .line 1063
    new-array v0, p1, [Lcom/alibaba/alimei/cspace/model/DentryVersionModel;

    .line 58
    return-object v0
.end method
