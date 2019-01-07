.class public Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
.super Ljava/lang/Object;
.source "MeasureValue.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/alibaba/mtl/appmonitor/model/IMerge;
.implements Lfzc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/alibaba/mtl/appmonitor/model/IMerge",
        "<",
        "Lcom/alibaba/mtl/appmonitor/model/MeasureValue;",
        ">;",
        "Lfzc;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buckets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;",
            ">;"
        }
    .end annotation
.end field

.field private finish:Z

.field private offset:Ljava/lang/Double;

.field private value:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    .line 42
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "value"    # D
    .param p3, "offset"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    .line 50
    iput-wide p1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->finish:Z

    .line 52
    return-void
.end method

.method public static create()Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .locals 3

    .prologue
    .line 55
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    return-object v0
.end method

.method public static create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .locals 6
    .param p0, "value"    # D

    .prologue
    .line 59
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    return-object v0
.end method

.method public static create(DD)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .locals 6
    .param p0, "value"    # D
    .param p2, "offset"    # D

    .prologue
    .line 63
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    return-object v0
.end method

.method private getBucket(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 254
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->buckets:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->buckets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->buckets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->in(Ljava/lang/Double;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->buckets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;

    .line 261
    .end local v0    # "i":I
    :goto_1
    return-object v1

    .line 255
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .locals 8
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    .line 153
    const/4 v3, 0x0

    .line 155
    .local v3, "ret":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    .line 156
    .local v1, "finish":Z
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 157
    .local v2, "offset":Ljava/lang/Double;
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 158
    .local v4, "value":D
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v3

    .line 159
    iput-boolean v1, v3, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->finish:Z

    .line 160
    iput-object v2, v3, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    .line 161
    iput-wide v4, v3, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1    # "finish":Z
    .end local v2    # "offset":Ljava/lang/Double;
    .end local v4    # "value":D
    :goto_1
    return-object v3

    .line 155
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized clean()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->finish:Z

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->buckets:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public varargs declared-synchronized fill([Ljava/lang/Object;)V
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 123
    monitor-enter p0

    if-nez p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :cond_1
    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_2

    .line 127
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    .line 129
    :cond_2
    array-length v0, p1

    if-le v0, v2, :cond_0

    .line 130
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->finish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBuckets()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->buckets:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 186
    const/4 v1, 0x0

    .line 194
    :cond_0
    monitor-exit p0

    return-object v1

    .line 188
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v1, "bucketValueMap":Ljava/util/Map;
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->buckets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;

    .line 190
    .local v0, "b":Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->access$000(Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->access$100(Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;)Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "-\u221e"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->access$200(Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;)Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "\u221e"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->access$000(Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 185
    .end local v0    # "b":Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;
    .end local v1    # "bucketValueMap":Ljava/util/Map;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 191
    .restart local v0    # "b":Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;
    .restart local v1    # "bucketValueMap":Ljava/util/Map;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_2
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->access$100(Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;)Ljava/lang/Double;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->access$200(Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;)Ljava/lang/Double;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_2
.end method

.method public getOffset()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    return-wide v0
.end method

.method public isFinish()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->finish:Z

    return v0
.end method

.method public declared-synchronized merge(Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V
    .locals 6
    .param p1, "t"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    monitor-enter p0

    if-nez p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    :cond_1
    :try_start_0
    iget-wide v2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    .line 97
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getOffset()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    if-nez v1, :cond_2

    .line 99
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getOffset()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    .line 103
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getBucket(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;

    move-result-object v0

    .line 104
    .local v0, "bucket":Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->increase()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 110
    .end local v0    # "bucket":Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->merge(Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    return-void
.end method

.method protected declared-synchronized setBuckets(Lcom/alibaba/mtl/appmonitor/model/Measure;)V
    .locals 7
    .param p1, "measure"    # Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getBounds()Ljava/util/List;

    move-result-object v0

    .line 200
    .local v0, "bounds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 216
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 203
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->buckets:Ljava/util/List;

    if-nez v3, :cond_0

    .line 207
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->buckets:Ljava/util/List;

    .line 208
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 209
    iget-object v5, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->buckets:Ljava/util/List;

    new-instance v6, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-direct {v6, p0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;-><init>(Lcom/alibaba/mtl/appmonitor/model/MeasureValue;Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 212
    :cond_2
    iget-wide v4, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    invoke-direct {p0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getBucket(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;

    move-result-object v1

    .line 213
    .local v1, "bucket":Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;
    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->increase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    .end local v0    # "bounds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v1    # "bucket":Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setFinish(Z)V
    .locals 0
    .param p1, "finish"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->finish:Z

    .line 76
    return-void
.end method

.method public setOffset(D)V
    .locals 1
    .param p1, "offset"    # D

    .prologue
    .line 79
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    .line 80
    return-void
.end method

.method public setValue(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    .line 88
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
    .line 143
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->finish:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 145
    iget-wide v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 150
    :goto_2
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_1

    .line 150
    :catch_0
    move-exception v0

    goto :goto_2
.end method
