.class public Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;
.super Ljava/lang/Object;
.source "FocusDeviceObjectListItem.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mFocusDeviceObject:Lcom/alibaba/android/projection/data/FocusDeviceObject;

.field public mType:Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;

.field public orgId:Ljava/lang/String;

.field public orgName:Ljava/lang/String;

.field public orgNameInitial:Ljava/lang/String;

.field public orgNamePinyin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$1;

    invoke-direct {v0}, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-class v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mFocusDeviceObject:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 39
    sget-object v0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;->head:Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;

    invoke-virtual {v0}, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;->head:Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;

    :goto_0
    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mType:Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->orgId:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->orgName:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->orgNamePinyin:Ljava/lang/String;

    .line 43
    return-void

    .line 39
    :cond_0
    sget-object v0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;->device:Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mFocusDeviceObject:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mType:Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;

    invoke-virtual {v0}, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->orgId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->orgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->orgNamePinyin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return-void
.end method
