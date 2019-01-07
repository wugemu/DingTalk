.class public Lcom/alibaba/alimei/contact/model/SearchContactModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "SearchContactModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/contact/model/SearchContactModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_TYPE_LOCAL:I = 0x2

.field public static final SEARCH_TYPE_SERVER:I = 0x1

.field public static final SEARCH_TYPE_UNKNOW:I = -0x1

.field public static final TYPE_EMAIL:I = 0x0

.field public static final TYPE_EMAIL_GROUP:I = 0x1


# instance fields
.field public email:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public searchType:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/alibaba/alimei/contact/model/SearchContactModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/model/SearchContactModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->searchType:I

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->searchType:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->name:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->email:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->searchType:I

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/contact/model/SearchContactModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/contact/model/SearchContactModel$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/contact/model/SearchContactModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->searchType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    return-void
.end method
