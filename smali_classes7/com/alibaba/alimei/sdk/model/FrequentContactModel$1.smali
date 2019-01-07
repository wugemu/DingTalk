.class final Lcom/alibaba/alimei/sdk/model/FrequentContactModel$1;
.super Ljava/lang/Object;
.source "FrequentContactModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/model/FrequentContactModel;
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
        "Lcom/alibaba/alimei/sdk/model/FrequentContactModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    .line 2099
    new-instance v0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;

    invoke-direct {v0, p1}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;-><init>(Landroid/os/Parcel;)V

    .line 96
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1104
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/alimei/sdk/model/FrequentContactModel;

    .line 96
    return-object v0
.end method
