.class public abstract Lcom/alibaba/android/search/assure/model/AssureModel;
.super Ljava/lang/Object;
.source "AssureModel.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/assure/model/AssureModel$a;,
        Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alibaba/android/search/assure/model/AssureModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final SORT_LIMIT:I = 0x2

.field private static sAppContext:Landroid/content/Context;


# instance fields
.field private mBaseModel:Lcom/alibaba/android/search/model/BaseModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mClickAtMills:J

.field private mClickTimes:I

.field private final mDesc:Ljava/lang/String;

.field private final mDesc2:Ljava/lang/String;

.field private mEntry:Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mEvictAtMills:J

.field private final mExtra:Ljava/lang/String;

.field private mIsQuery:Z

.field private final mKeyWord:Ljava/lang/String;

.field private final mSearchId:Ljava/lang/String;

.field private mTag:J

.field private final mTitle:Ljava/lang/String;

.field private final mType:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 662
    new-instance v0, Lcom/alibaba/android/search/assure/model/AssureModel$1;

    invoke-direct {v0}, Lcom/alibaba/android/search/assure/model/AssureModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/search/assure/model/AssureModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 647
    .local v0, "tmpMType":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mType:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mKeyWord:Ljava/lang/String;

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mSearchId:Ljava/lang/String;

    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mTitle:Ljava/lang/String;

    .line 652
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mTag:J

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mDesc:Ljava/lang/String;

    .line 654
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mDesc2:Ljava/lang/String;

    .line 655
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mExtra:Ljava/lang/String;

    .line 656
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickAtMills:J

    .line 657
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickTimes:I

    .line 658
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mEvictAtMills:J

    .line 659
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/model/BaseModel;

    iput-object v1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mBaseModel:Lcom/alibaba/android/search/model/BaseModel;

    .line 660
    return-void

    .line 647
    :cond_0
    invoke-static {}, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->values()[Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method constructor <init>(Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const-string/jumbo v0, "entry = null"

    invoke-static {p1, v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p1, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->keyword:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mKeyWord:Ljava/lang/String;

    .line 181
    iget-object v0, p1, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->searchId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mSearchId:Ljava/lang/String;

    .line 182
    iget-object v0, p1, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mTitle:Ljava/lang/String;

    .line 183
    iget v0, p1, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->tag:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mTag:J

    .line 184
    iget v0, p1, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->type:I

    invoke-static {v0}, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->getAssureType(I)Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mType:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    .line 185
    iget-object v0, p1, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mDesc:Ljava/lang/String;

    .line 186
    iget-object v0, p1, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->desc2:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mDesc2:Ljava/lang/String;

    .line 187
    iget-object v0, p1, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->extra:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mExtra:Ljava/lang/String;

    .line 188
    iget-wide v0, p1, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->clickAtMills:J

    iput-wide v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickAtMills:J

    .line 189
    iget v0, p1, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->clickTimes:I

    iput v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickTimes:I

    .line 190
    iget-wide v0, p1, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->evictAtMills:J

    iput-wide v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mEvictAtMills:J

    .line 191
    return-void
.end method

.method constructor <init>(Lcom/alibaba/android/search/model/BaseModel;)V
    .locals 4
    .param p1, "model"    # Lcom/alibaba/android/search/model/BaseModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mBaseModel:Lcom/alibaba/android/search/model/BaseModel;

    const-string/jumbo v1, "model = null"

    invoke-static {p1, v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getKeyword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mKeyWord:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mSearchId:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mTitle:Ljava/lang/String;

    .line 200
    invoke-static {p1}, Lcom/alibaba/android/search/assure/model/AssureModel;->getAssureType(Lcom/alibaba/android/search/model/BaseModel;)Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mType:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    .line 204
    invoke-virtual {p1, p0}, Lcom/alibaba/android/search/model/BaseModel;->setAssureModel(Lcom/alibaba/android/search/assure/model/AssureModel;)V

    .line 206
    invoke-static {}, Lcom/alibaba/android/search/assure/model/AssureModel;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 208
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 209
    iput-object v2, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mDesc:Ljava/lang/String;

    .line 210
    iput-object v2, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mDesc2:Ljava/lang/String;

    .line 216
    :goto_0
    iput-object v2, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mExtra:Ljava/lang/String;

    .line 218
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickAtMills:J

    .line 219
    return-void

    .line 212
    :cond_0
    invoke-virtual {p1, v0}, Lcom/alibaba/android/search/model/BaseModel;->getDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mDesc:Ljava/lang/String;

    .line 213
    invoke-virtual {p1, v0}, Lcom/alibaba/android/search/model/BaseModel;->getDesc2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mDesc2:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Leot;)V
    .locals 3
    .param p1, "pushClickResult"    # Leot;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    const-string/jumbo v0, "pushClickResult = null"

    invoke-static {p1, v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v0, p1, Leot;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mKeyWord:Ljava/lang/String;

    .line 260
    iget-object v0, p1, Leot;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mSearchId:Ljava/lang/String;

    .line 262
    iget-object v0, p1, Leot;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getAssureTypeFromSvr(Ljava/lang/String;)Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mType:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    .line 263
    iget-object v0, p1, Leot;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickAtMills:J

    .line 265
    iput-object v2, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mTitle:Ljava/lang/String;

    .line 266
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mTag:J

    .line 267
    iput-object v2, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mDesc:Ljava/lang/String;

    .line 268
    iput-object v2, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mDesc2:Ljava/lang/String;

    .line 270
    iput-object v2, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mExtra:Ljava/lang/String;

    .line 271
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/alibaba/android/search/assure/model/AssureModel;)V
    .locals 2
    .param p1, "keyword"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "assureModel"    # Lcom/alibaba/android/search/assure/model/AssureModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "keyword is empty"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 223
    const-string/jumbo v0, "assureModel = null"

    invoke-static {p2, v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iput-object p1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mKeyWord:Ljava/lang/String;

    .line 226
    invoke-virtual {p2}, Lcom/alibaba/android/search/assure/model/AssureModel;->getSearchId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mSearchId:Ljava/lang/String;

    .line 229
    invoke-virtual {p2}, Lcom/alibaba/android/search/assure/model/AssureModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->removeRedTagAndPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/android/search/utils/SearchUtils;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mTitle:Ljava/lang/String;

    .line 231
    invoke-virtual {p2}, Lcom/alibaba/android/search/assure/model/AssureModel;->getType()Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mType:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    .line 232
    invoke-virtual {p2}, Lcom/alibaba/android/search/assure/model/AssureModel;->getTag()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mTag:J

    .line 235
    invoke-virtual {p2}, Lcom/alibaba/android/search/assure/model/AssureModel;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->removeRedTagAndPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/android/search/utils/SearchUtils;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mDesc:Ljava/lang/String;

    .line 238
    invoke-virtual {p2}, Lcom/alibaba/android/search/assure/model/AssureModel;->getDesc2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->removeRedTagAndPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/android/search/utils/SearchUtils;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mDesc2:Ljava/lang/String;

    .line 240
    invoke-virtual {p2}, Lcom/alibaba/android/search/assure/model/AssureModel;->getExtra()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mExtra:Ljava/lang/String;

    .line 242
    iget-object v0, p2, Lcom/alibaba/android/search/assure/model/AssureModel;->mBaseModel:Lcom/alibaba/android/search/model/BaseModel;

    iput-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mBaseModel:Lcom/alibaba/android/search/model/BaseModel;

    .line 244
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickAtMills:J

    .line 246
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mBaseModel:Lcom/alibaba/android/search/model/BaseModel;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mBaseModel:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/search/model/BaseModel;->setAssureModel(Lcom/alibaba/android/search/assure/model/AssureModel;)V

    .line 249
    :cond_0
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static doCompare(Lcom/alibaba/android/search/assure/model/AssureModel;Lcom/alibaba/android/search/assure/model/AssureModel;)I
    .locals 4
    .param p0, "o1"    # Lcom/alibaba/android/search/assure/model/AssureModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "o2"    # Lcom/alibaba/android/search/assure/model/AssureModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 615
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 616
    iget-wide v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickAtMills:J

    iget-wide v2, p1, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickAtMills:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 618
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickAtMills:J

    iget-wide v2, p1, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickAtMills:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickAtMills:J

    iget-wide v2, p1, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickAtMills:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static declared-synchronized doGetContext()Landroid/content/Context;
    .locals 8

    .prologue
    .line 302
    const-class v4, Lcom/alibaba/android/search/assure/model/AssureModel;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/alibaba/android/search/assure/model/AssureModel;->sAppContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 304
    :try_start_1
    const-string/jumbo v3, "android.app.ActivityThread"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 305
    .local v0, "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "currentApplication"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 306
    .local v1, "currentApplicationMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    sput-object v3, Lcom/alibaba/android/search/assure/model/AssureModel;->sAppContext:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    .end local v1    # "currentApplicationMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v3, Lcom/alibaba/android/search/assure/model/AssureModel;->sAppContext:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-object v3

    .line 307
    :catch_0
    move-exception v2

    .line 308
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "getContext error: "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 302
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private doWithSameCls(Lcom/alibaba/android/search/assure/model/AssureModel;)Z
    .locals 3
    .param p1, "o"    # Lcom/alibaba/android/search/assure/model/AssureModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getSearchId()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/search/assure/model/AssureModel;->getSearchId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mKeyWord:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/search/assure/model/AssureModel;->mKeyWord:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAssureType(Lcom/alibaba/android/search/model/BaseModel;)Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;
    .locals 4
    .param p0, "model"    # Lcom/alibaba/android/search/model/BaseModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 129
    if-nez p0, :cond_0

    .line 130
    sget-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->UnKown:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    .line 174
    :goto_0
    return-object v0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v1

    .line 136
    .local v1, "type":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    if-nez v1, :cond_1

    .line 137
    sget-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->UnKown:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    goto :goto_0

    .line 140
    :cond_1
    sget-object v2, Lcom/alibaba/android/search/assure/model/AssureModel$2;->a:[I

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel$ModelType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 170
    sget-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->UnKown:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    .local v0, "assureType":Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;
    goto :goto_0

    .line 143
    .end local v0    # "assureType":Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->Group:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    .line 144
    .restart local v0    # "assureType":Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;
    goto :goto_0

    .line 164
    .end local v0    # "assureType":Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->Contact:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    .line 165
    .restart local v0    # "assureType":Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;
    goto :goto_0

    .line 167
    .end local v0    # "assureType":Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->Function:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    .line 168
    .restart local v0    # "assureType":Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;
    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getAssureTypeFromSvr(Ljava/lang/String;)Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 274
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    sget-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->UnKown:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    .line 288
    :goto_0
    return-object v0

    .line 278
    :cond_0
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ASSURE_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    sget-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->Contact:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    goto :goto_0

    .line 280
    :cond_1
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ASSURE_GRP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    sget-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->Group:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    goto :goto_0

    .line 282
    :cond_2
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ASSURE_FUN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    sget-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->Function:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    goto :goto_0

    .line 284
    :cond_3
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->FUNCTION:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 285
    sget-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->Function:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    goto :goto_0

    .line 288
    :cond_4
    sget-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->UnKown:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    goto :goto_0
.end method

.method public static getBaseModels(Ljava/util/Collection;Leoe;)Ljava/util/List;
    .locals 5
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "queryLogModel"    # Leoe;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;",
            "Leoe;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "assureModels":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    invoke-static {p0}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    const/4 v2, 0x0

    .line 121
    :cond_0
    return-object v2

    .line 100
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lcpd;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 102
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 103
    .local v0, "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getBaseModel()Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v1

    .line 108
    .local v1, "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v1, :cond_2

    .line 112
    if-eqz p1, :cond_3

    .line 1084
    iget-object v4, p1, Leoe;->a:Ljava/lang/String;

    .line 113
    invoke-virtual {v1, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 1092
    iget v4, p1, Leoe;->b:I

    .line 114
    invoke-virtual {v1, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 115
    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getSearchId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 118
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 292
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 293
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 294
    invoke-static {}, Lcom/alibaba/android/search/assure/model/AssureModel;->doGetContext()Landroid/content/Context;

    move-result-object v0

    .line 297
    :cond_0
    return-object v0
.end method

.method private isQualified(Ljava/lang/String;J)Z
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "qualifiedTime"    # J

    .prologue
    const/4 v1, 0x0

    .line 550
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 554
    :cond_0
    :goto_0
    return v1

    .line 553
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v2

    invoke-virtual {v2, p1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 554
    .local v0, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getLastModify()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, p2

    if-gez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public adjustClickLogModel(I)V
    .locals 5
    .param p1, "contactType"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 675
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mBaseModel:Lcom/alibaba/android/search/model/BaseModel;

    .line 676
    .local v0, "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    if-nez v0, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getSearchClickLogModel()Lcom/alibaba/android/search/model/SearchClickLogModel;

    move-result-object v1

    .line 681
    .local v1, "clickLogModel":Lcom/alibaba/android/search/model/SearchClickLogModel;
    if-eqz v1, :cond_0

    .line 685
    iget-object v3, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mType:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    if-eqz v3, :cond_0

    .line 689
    invoke-static {}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v2

    .line 690
    .local v2, "searchGroupType":Lcom/alibaba/android/search/SearchGroupType;
    if-eqz v2, :cond_2

    .line 691
    sget-object v3, Lcom/alibaba/android/search/assure/model/AssureModel$2;->c:[I

    invoke-virtual {v2}, Lcom/alibaba/android/search/SearchGroupType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 709
    :cond_2
    :goto_1
    sget-object v3, Lcom/alibaba/android/search/assure/model/AssureModel$2;->b:[I

    iget-object v4, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mType:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    invoke-virtual {v4}, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 711
    :pswitch_0
    invoke-virtual {v1, p1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 712
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ASSURE_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :pswitch_1
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->ALL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setType(Ljava/lang/String;)V

    goto :goto_1

    .line 696
    :pswitch_2
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setType(Ljava/lang/String;)V

    goto :goto_1

    .line 699
    :pswitch_3
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->MY_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setType(Ljava/lang/String;)V

    goto :goto_1

    .line 702
    :pswitch_4
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->FUNCTION:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setType(Ljava/lang/String;)V

    goto :goto_1

    .line 715
    :pswitch_5
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_ASSURE_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 716
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ASSURE_GRP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 719
    :pswitch_6
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_ASSURE_FUN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 720
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ASSURE_FUN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 691
    .line 709
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public clearEvictTime()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 489
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mEvictAtMills:J

    .line 490
    return-void
.end method

.method public compareTo(Lcom/alibaba/android/search/assure/model/AssureModel;)I
    .locals 5
    .param p1, "o"    # Lcom/alibaba/android/search/assure/model/AssureModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 577
    if-nez p1, :cond_1

    .line 604
    :cond_0
    :goto_0
    return v2

    .line 580
    :cond_1
    if-eq p0, p1, :cond_0

    .line 584
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 585
    .local v1, "thisCls":Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 587
    .local v0, "theCls":Ljava/lang/Class;
    if-ne v1, v0, :cond_2

    .line 588
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/assure/model/AssureModel;->doWithSameCls(Lcom/alibaba/android/search/assure/model/AssureModel;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 593
    :cond_2
    iget v2, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickTimes:I

    if-ge v2, v4, :cond_3

    iget v2, p1, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickTimes:I

    if-ge v2, v4, :cond_3

    .line 595
    invoke-static {p0, p1}, Lcom/alibaba/android/search/assure/model/AssureModel;->doCompare(Lcom/alibaba/android/search/assure/model/AssureModel;Lcom/alibaba/android/search/assure/model/AssureModel;)I

    move-result v2

    goto :goto_0

    .line 596
    :cond_3
    iget v2, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickTimes:I

    if-lt v2, v4, :cond_4

    iget v2, p1, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickTimes:I

    if-ge v2, v4, :cond_4

    .line 598
    const/4 v2, -0x1

    goto :goto_0

    .line 599
    :cond_4
    iget v2, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickTimes:I

    if-ge v2, v4, :cond_5

    .line 600
    const/4 v2, 0x1

    goto :goto_0

    .line 604
    :cond_5
    invoke-static {p1, p0}, Lcom/alibaba/android/search/assure/model/AssureModel;->doCompare(Lcom/alibaba/android/search/assure/model/AssureModel;Lcom/alibaba/android/search/assure/model/AssureModel;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    check-cast p1, Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/assure/model/AssureModel;->compareTo(Lcom/alibaba/android/search/assure/model/AssureModel;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 559
    if-ne p0, p1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return v3

    .line 563
    :cond_1
    instance-of v5, p1, Lcom/alibaba/android/search/assure/model/AssureModel;

    if-nez v5, :cond_2

    move v3, v4

    .line 564
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 567
    check-cast v0, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 569
    .local v0, "model":Lcom/alibaba/android/search/assure/model/AssureModel;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 570
    .local v2, "thisCls":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 571
    .local v1, "thatCls":Ljava/lang/Class;
    if-ne v2, v1, :cond_3

    invoke-direct {p0, v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->doWithSameCls(Lcom/alibaba/android/search/assure/model/AssureModel;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method public getBaseModel()Lcom/alibaba/android/search/model/BaseModel;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mBaseModel:Lcom/alibaba/android/search/model/BaseModel;

    return-object v0
.end method

.method public getClickAtMills()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 388
    iget-wide v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickAtMills:J

    return-wide v0
.end method

.method public getClickTimes()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickTimes:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mDesc2:Ljava/lang/String;

    return-object v0
.end method

.method public getEntry()Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mEntry:Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    return-object v0
.end method

.method public getEvictAtMills()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 402
    iget-wide v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mEvictAtMills:J

    return-wide v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mKeyWord:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mSearchId:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 357
    iget-wide v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mTag:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mType:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    return-object v0
.end method

.method public incClickTimes()V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 446
    iget v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickTimes:I

    .line 447
    return-void
.end method

.method public isContact()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 381
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mType:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    sget-object v1, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->Contact:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpireOrWrongClick()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 497
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickAtMills:J

    sub-long v0, v2, v4

    .line 498
    .local v0, "duration":J
    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x337f9800

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isGroup()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 377
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mType:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    sget-object v1, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->Group:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInTempArea()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 485
    iget-wide v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mEvictAtMills:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuery()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mIsQuery:Z

    return v0
.end method

.method public markEvicted()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 478
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mEvictAtMills:J

    .line 479
    return-void
.end method

.method public abstract parseBaseModel()V
.end method

.method public qualifiedCheck(JLcom/alibaba/android/search/assure/model/AssureModel$a;)V
    .locals 15
    .param p1, "qualifiedTime"    # J
    .param p3, "qualifiedCheckedListener"    # Lcom/alibaba/android/search/assure/model/AssureModel$a;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 505
    if-nez p3, :cond_0

    .line 547
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mBaseModel:Lcom/alibaba/android/search/model/BaseModel;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mBaseModel:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v3}, Lcom/alibaba/android/search/model/BaseModel;->isDemissionColleague()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mBaseModel:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v3}, Lcom/alibaba/android/search/model/BaseModel;->isRecallSearchResult()Z

    move-result v3

    if-nez v3, :cond_1

    .line 511
    sget-object v3, Lcom/alibaba/android/search/assure/model/AssureModel$2;->b:[I

    iget-object v10, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mType:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    invoke-virtual {v10}, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->ordinal()I

    move-result v10

    aget v3, v3, v10

    packed-switch v3, :pswitch_data_0

    .line 542
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mBaseModel:Lcom/alibaba/android/search/model/BaseModel;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mBaseModel:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v3}, Lcom/alibaba/android/search/model/BaseModel;->isDemissionColleague()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 543
    invoke-static {}, Lend;->b()Lend;

    move-result-object v3

    invoke-virtual {v3, p0}, Lend;->a(Lcom/alibaba/android/search/assure/model/AssureModel;)V

    .line 546
    :cond_2
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Lcom/alibaba/android/search/assure/model/AssureModel$a;->a(Z)V

    goto :goto_0

    .line 514
    :pswitch_0
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    .line 515
    .local v4, "myself":J
    iget-object v3, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mSearchId:Ljava/lang/String;

    .line 1109
    invoke-static {v3, v12, v13}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 516
    .local v6, "other":J
    cmp-long v3, v6, v12

    if-eqz v3, :cond_1

    .line 517
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JJZ)Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, "cid":Ljava/lang/String;
    move-wide/from16 v0, p1

    invoke-direct {p0, v2, v0, v1}, Lcom/alibaba/android/search/assure/model/AssureModel;->isQualified(Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 519
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/alibaba/android/search/assure/model/AssureModel$a;->a(Z)V

    goto :goto_0

    .line 527
    .end local v2    # "cid":Ljava/lang/String;
    .end local v4    # "myself":J
    .end local v6    # "other":J
    :pswitch_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v3

    iget-object v10, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mSearchId:Ljava/lang/String;

    invoke-virtual {v3, v10}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v9

    .line 528
    .local v9, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-direct {p0, v3, v0, v1}, Lcom/alibaba/android/search/assure/model/AssureModel;->isQualified(Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/alibaba/android/search/assure/model/AssureModel$a;->a(Z)V

    goto/16 :goto_0

    .line 535
    .end local v9    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :pswitch_2
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/alibaba/android/search/assure/model/AssureModel$a;->a(Z)V

    goto/16 :goto_0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetClickTimesAfter(J)Z
    .locals 9
    .param p1, "time"    # J

    .prologue
    const/4 v2, 0x0

    .line 454
    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mEvictAtMills:J

    sub-long v0, v4, v6

    .line 455
    .local v0, "duration":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_1

    .line 463
    :cond_0
    :goto_0
    return v2

    .line 459
    :cond_1
    cmp-long v3, v0, p1

    if-ltz v3, :cond_0

    .line 460
    iput v2, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickTimes:I

    .line 461
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public resetEvictTime()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 471
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mEvictAtMills:J

    .line 472
    return-void
.end method

.method public setAssureEntry(Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mEntry:Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    .line 86
    return-void
.end method

.method public setIsQuery(Z)V
    .locals 0
    .param p1, "isQuery"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mIsQuery:Z

    .line 82
    return-void
.end method

.method public setTag(J)V
    .locals 1
    .param p1, "tag"    # J

    .prologue
    .line 361
    iput-wide p1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mTag:J

    .line 362
    return-void
.end method

.method updateBaseModel(Lcom/alibaba/android/search/model/BaseModel;)V
    .locals 0
    .param p1, "baseModel"    # Lcom/alibaba/android/search/model/BaseModel;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mBaseModel:Lcom/alibaba/android/search/model/BaseModel;

    .line 416
    return-void
.end method

.method public updateClickAtMills(J)V
    .locals 3
    .param p1, "clickAtMills"    # J
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 425
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "clickAtMills <= 1000"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 426
    iput-wide p1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickAtMills:J

    .line 427
    return-void

    .line 425
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateClickTimes(I)V
    .locals 0
    .param p1, "clickTimes"    # I

    .prologue
    .line 430
    if-gtz p1, :cond_0

    .line 435
    :goto_0
    return-void

    .line 434
    :cond_0
    iput p1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickTimes:I

    goto :goto_0
.end method

.method public updateEvictTimes(J)V
    .locals 3
    .param p1, "evictAtMills"    # J

    .prologue
    .line 438
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 441
    :cond_0
    iput-wide p1, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mEvictAtMills:J

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 630
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mType:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mKeyWord:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mSearchId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 635
    iget-wide v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mTag:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 636
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mDesc2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mExtra:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 639
    iget-wide v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickAtMills:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 640
    iget v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mClickTimes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    iget-wide v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mEvictAtMills:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 642
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mBaseModel:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 643
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel;->mType:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->ordinal()I

    move-result v0

    goto :goto_0
.end method
