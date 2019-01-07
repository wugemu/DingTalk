.class public Lcom/alibaba/wukong/im/category/CategoryObject;
.super Ljava/lang/Object;
.source "CategoryObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public createAt:J

.field public id:J

.field public index:I

.field public modifiedAt:J

.field public title:Ljava/lang/String;

.field public tooLong2Sync:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/alibaba/wukong/im/category/CategoryObject$1;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/category/CategoryObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/im/category/CategoryObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "index"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    .line 21
    iput p3, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->index:I

    .line 22
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->createAt:J

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->modifiedAt:J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->index:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->tooLong2Sync:Z

    .line 43
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromIDL(Lcom/alibaba/wukong/idl/im/models/CategoryModel;)Lcom/alibaba/wukong/im/category/CategoryObject;
    .locals 4
    .param p0, "categoryModel"    # Lcom/alibaba/wukong/idl/im/models/CategoryModel;

    .prologue
    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    .line 50
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/category/CategoryObject;-><init>()V

    .line 51
    .local v0, "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/CategoryModel;->id:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    .line 52
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/CategoryModel;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/CategoryModel;->createdAt:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->createAt:J

    .line 54
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/CategoryModel;->modifyedAt:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->modifiedAt:J

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->tooLong2Sync:Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public reset(Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 4
    .param p1, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    iget-wide v2, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    .line 62
    iget-wide v0, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->createAt:J

    iput-wide v0, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->createAt:J

    .line 63
    iget-wide v0, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->modifiedAt:J

    iput-wide v0, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->modifiedAt:J

    .line 64
    iget v0, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->index:I

    iput v0, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->index:I

    .line 65
    iget-boolean v0, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->tooLong2Sync:Z

    iput-boolean v0, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->tooLong2Sync:Z

    .line 67
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-wide v0, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->createAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    iget-wide v0, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->modifiedAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget v0, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-boolean v0, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->tooLong2Sync:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
