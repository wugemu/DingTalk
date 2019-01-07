.class final Lcom/alibaba/android/teleconf/data/ConfRecordItem$1;
.super Ljava/lang/Object;
.source "ConfRecordItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/data/ConfRecordItem;
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
        "Lcom/alibaba/android/teleconf/data/ConfRecordItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 453
    .line 2456
    new-instance v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-direct {v0, p1}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;-><init>(Landroid/os/Parcel;)V

    .line 453
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 453
    .line 1461
    new-array v0, p1, [Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 453
    return-object v0
.end method
