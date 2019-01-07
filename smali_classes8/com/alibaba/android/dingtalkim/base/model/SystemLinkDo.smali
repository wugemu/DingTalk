.class public Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;
.super Ljava/lang/Object;
.source "SystemLinkDo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "links"
    .end annotation
.end field

.field public style:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "style"
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->type:I

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    check-cast v0, [Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->style:I

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 63
    iget v0, p0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 65
    iget v0, p0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->style:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return-void
.end method
