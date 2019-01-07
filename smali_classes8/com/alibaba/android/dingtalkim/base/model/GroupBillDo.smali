.class public Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;
.super Ljava/lang/Object;
.source "GroupBillDo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x61087619ad590d16L


# instance fields
.field public bill:[Lcom/alibaba/android/dingtalkim/base/model/GroupBillAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bill"
    .end annotation
.end field

.field public creatorUid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "creatorUid"
    .end annotation
.end field

.field public groupBillId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "groupBillId"
    .end annotation
.end field

.field public groupBillName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "groupBillName"
    .end annotation
.end field

.field public groupBillRealAmount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "groupBillRealAmount"
    .end annotation
.end field

.field public groupBillTotalAmount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "groupBillTotalAmount"
    .end annotation
.end field

.field public linkUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linkUrl"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->creatorUid:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillId:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillName:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/base/model/GroupBillAmount;

    check-cast v0, [Lcom/alibaba/android/dingtalkim/base/model/GroupBillAmount;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->bill:[Lcom/alibaba/android/dingtalkim/base/model/GroupBillAmount;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->linkUrl:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillRealAmount:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillTotalAmount:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    if-ne p0, p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 88
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 90
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    .line 91
    .local v0, "other":Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->creatorUid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->creatorUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->creatorUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillId:Ljava/lang/String;

    .line 92
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillId:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    .line 95
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 101
    const/16 v0, 0x11

    .line 102
    .local v0, "result":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->creatorUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->creatorUid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 104
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 106
    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->creatorUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->bill:[Lcom/alibaba/android/dingtalkim/base/model/GroupBillAmount;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->linkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillRealAmount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillTotalAmount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return-void
.end method
