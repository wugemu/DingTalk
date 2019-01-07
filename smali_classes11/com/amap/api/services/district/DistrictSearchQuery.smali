.class public Lcom/amap/api/services/district/DistrictSearchQuery;
.super Ljava/lang/Object;
.source "DistrictSearchQuery.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/district/DistrictSearchQuery;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEYWORDS_BUSINESS:Ljava/lang/String; = "biz_area"

.field public static final KEYWORDS_CITY:Ljava/lang/String; = "city"

.field public static final KEYWORDS_COUNTRY:Ljava/lang/String; = "country"

.field public static final KEYWORDS_DISTRICT:Ljava/lang/String; = "district"

.field public static final KEYWORDS_PROVINCE:Ljava/lang/String; = "province"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 384
    new-instance v0, Lcom/amap/api/services/district/DistrictSearchQuery$1;

    invoke-direct {v0}, Lcom/amap/api/services/district/DistrictSearchQuery$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/district/DistrictSearchQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    .line 46
    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    .line 53
    iput-boolean v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->f:Z

    .line 55
    iput-boolean v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->g:Z

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    .line 46
    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    .line 53
    iput-boolean v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->f:Z

    .line 55
    iput-boolean v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->g:Z

    .line 93
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    .line 95
    iput p3, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/services/district/DistrictSearchQuery;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    iput-boolean p4, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    .line 112
    iput p5, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    .line 113
    return-void
.end method


# virtual methods
.method public checkKeyWords()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 250
    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkLevels()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 230
    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v0

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "country"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    .line 234
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "province"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    .line 235
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "city"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    .line 236
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "district"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    .line 237
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "biz_area"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clone()Lcom/amap/api/services/district/DistrictSearchQuery;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 344
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    new-instance v0, Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-direct {v0}, Lcom/amap/api/services/district/DistrictSearchQuery;-><init>()V

    .line 351
    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->setKeywords(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->setKeywordsLevel(Ljava/lang/String;)V

    .line 353
    iget v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->setPageNum(I)V

    .line 354
    iget v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->setPageSize(I)V

    .line 355
    iget-boolean v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->setShowChild(Z)V

    .line 356
    iget-boolean v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->g:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->setShowBoundary(Z)V

    .line 357
    iget-boolean v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->f:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->setShowBusinessArea(Z)V

    .line 358
    return-object v0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    const-string/jumbo v1, "DistrictSearchQuery"

    const-string/jumbo v2, "clone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/amap/api/services/district/DistrictSearchQuery;->clone()Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 366
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

    .line 286
    if-ne p0, p1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v0

    .line 288
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 289
    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 291
    goto :goto_0

    .line 292
    :cond_3
    check-cast p1, Lcom/amap/api/services/district/DistrictSearchQuery;

    .line 293
    iget-boolean v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->g:Z

    iget-boolean v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->g:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 294
    goto :goto_0

    .line 295
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 296
    iget-object v2, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    .line 297
    goto :goto_0

    .line 298
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 299
    goto :goto_0

    .line 305
    :cond_6
    iget v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    iget v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 306
    goto :goto_0

    .line 307
    :cond_7
    iget v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    iget v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 308
    goto :goto_0

    .line 309
    :cond_8
    iget-boolean v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    iget-boolean v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 310
    goto :goto_0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywordsLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNum()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    const/4 v3, 0x0

    .line 267
    iget-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->g:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 268
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v3

    .line 269
    :goto_1
    add-int/2addr v0, v4

    .line 270
    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 271
    :goto_2
    add-int/2addr v0, v3

    .line 272
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    add-int/2addr v0, v3

    .line 273
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    add-int/2addr v0, v3

    .line 274
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    if-eqz v3, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 275
    return v0

    :cond_0
    move v0, v2

    .line 267
    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    .line 269
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 270
    :cond_2
    iget-object v3, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    .line 271
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 274
    goto :goto_3
.end method

.method public isShowBoundary()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->g:Z

    return v0
.end method

.method public isShowBusinessArea()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->f:Z

    return v0
.end method

.method public isShowChild()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    return v0
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setKeywordsLevel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    .line 131
    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .prologue
    .line 148
    iput p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    .line 149
    return-void
.end method

.method public setShowBoundary(Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->g:Z

    .line 64
    return-void
.end method

.method public setShowBusinessArea(Z)V
    .locals 0

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->f:Z

    .line 221
    return-void
.end method

.method public setShowChild(Z)V
    .locals 0

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    .line 205
    return-void
.end method

.method public weakEquals(Lcom/amap/api/services/district/DistrictSearchQuery;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 315
    if-ne p0, p1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v0

    .line 317
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 318
    goto :goto_0

    .line 319
    :cond_2
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 320
    iget-object v2, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 321
    goto :goto_0

    .line 322
    :cond_3
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 323
    goto :goto_0

    .line 329
    :cond_4
    iget v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    iget v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 330
    goto :goto_0

    .line 331
    :cond_5
    iget-boolean v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    iget-boolean v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 332
    goto :goto_0

    .line 333
    :cond_6
    iget-boolean v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->g:Z

    iget-boolean v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->g:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 334
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 374
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    iget v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 379
    iget-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->g:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 380
    iget-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->f:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 382
    return-void

    :cond_0
    move v0, v2

    .line 378
    goto :goto_0

    :cond_1
    move v0, v2

    .line 379
    goto :goto_1

    :cond_2
    move v1, v2

    .line 380
    goto :goto_2
.end method
