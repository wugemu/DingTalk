.class public Lbqp;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 4
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v3, 0x0

    .line 107
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 115
    :goto_0
    return-object v1

    .line 109
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 110
    .local v0, "parcel":Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v0, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 111
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 113
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    .local v1, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method public static a([B)Ljava/util/List;
    .locals 6
    .param p0, "content"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 51
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-object v3

    .line 54
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 55
    .local v2, "parcel":Landroid/os/Parcel;
    array-length v4, p0

    invoke-virtual {v2, p0, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 56
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .local v1, "len":I
    if-lez v1, :cond_0

    .line 63
    invoke-static {v1}, Lbql;->a(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 65
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 66
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcelable;)[B
    .locals 3
    .param p0, "parcelable"    # Landroid/os/Parcelable;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 26
    :goto_0
    return-object v1

    .line 22
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 23
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 25
    .local v1, "result":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "longs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x0

    .line 47
    :goto_0
    return-object v3

    .line 32
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 33
    .local v1, "len":I
    new-array v4, v1, [J

    .line 36
    .local v4, "result":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 37
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 41
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 42
    .local v2, "parcel":Landroid/os/Parcel;
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 44
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    .line 45
    .local v3, "r":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "atUids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcpf;->a(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const/4 v1, 0x0

    .line 86
    :goto_0
    return-object v1

    .line 79
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 80
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 82
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 84
    .local v1, "result":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method public static b([B)Ljava/util/Map;
    .locals 4
    .param p0, "content"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 90
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 91
    :cond_0
    const/4 v1, 0x0

    .line 103
    :goto_0
    return-object v1

    .line 94
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 95
    .local v0, "parcel":Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v0, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 96
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    const-class v2, Lbqp;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 101
    .local v1, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method
