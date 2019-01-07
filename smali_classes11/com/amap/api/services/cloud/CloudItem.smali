.class public Lcom/amap/api/services/cloud/CloudItem;
.super Ljava/lang/Object;
.source "CloudItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/cloud/CloudItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/cloud/CloudImage;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPoint:Lcom/amap/api/services/core/LatLonPoint;

.field protected final mSnippet:Ljava/lang/String;

.field protected final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lcom/amap/api/services/cloud/CloudItem$1;

    invoke-direct {v0}, Lcom/amap/api/services/cloud/CloudItem$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/cloud/CloudItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/services/cloud/CloudItem;->b:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->a:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/cloud/CloudItem;->b:I

    .line 215
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    .line 217
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 216
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->mPoint:Lcom/amap/api/services/core/LatLonPoint;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->mTitle:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->mSnippet:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->c:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->d:Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->e:Ljava/util/HashMap;

    .line 223
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->e:Ljava/util/HashMap;

    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->f:Ljava/util/List;

    .line 225
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->f:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 226
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/services/cloud/CloudItem;->b:I

    .line 75
    iput-object p1, p0, Lcom/amap/api/services/cloud/CloudItem;->a:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/amap/api/services/cloud/CloudItem;->mPoint:Lcom/amap/api/services/core/LatLonPoint;

    .line 77
    iput-object p3, p0, Lcom/amap/api/services/cloud/CloudItem;->mTitle:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/amap/api/services/cloud/CloudItem;->mSnippet:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 266
    if-ne p0, p1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 269
    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    const-class v2, Lcom/amap/api/services/cloud/CloudItem;

    .line 271
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    const-class v2, Lcom/amap/api/services/cloud/CloudItemDetail;

    .line 272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 273
    goto :goto_0

    .line 274
    :cond_3
    check-cast p1, Lcom/amap/api/services/cloud/CloudItem;

    .line 275
    iget-object v2, p0, Lcom/amap/api/services/cloud/CloudItem;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 276
    iget-object v2, p1, Lcom/amap/api/services/cloud/CloudItem;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 277
    goto :goto_0

    .line 278
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/cloud/CloudItem;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/cloud/CloudItem;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 279
    goto :goto_0
.end method

.method public getCloudImage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/cloud/CloudImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->f:Ljava/util/List;

    return-object v0
.end method

.method public getCreatetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomfield()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/amap/api/services/cloud/CloudItem;->b:I

    return v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->mPoint:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 291
    return v0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setCreatetime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/amap/api/services/cloud/CloudItem;->c:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setCustomfield(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    iput-object p1, p0, Lcom/amap/api/services/cloud/CloudItem;->e:Ljava/util/HashMap;

    .line 193
    return-void
.end method

.method public setDistance(I)V
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/amap/api/services/cloud/CloudItem;->b:I

    .line 112
    return-void
.end method

.method public setUpdatetime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/amap/api/services/cloud/CloudItem;->d:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setmCloudImage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/cloud/CloudImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    iput-object p1, p0, Lcom/amap/api/services/cloud/CloudItem;->f:Ljava/util/List;

    .line 211
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget v0, p0, Lcom/amap/api/services/cloud/CloudItem;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->mPoint:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->mSnippet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->e:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 258
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 259
    return-void
.end method
