.class public Lorg/altbeacon/beacon/Region;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAC_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "Region"


# instance fields
.field protected final mBluetoothAddress:Ljava/lang/String;

.field protected final mIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Identifier;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "^[0-9A-Fa-f]{2}\\:[0-9A-Fa-f]{2}\\:[0-9A-Fa-f]{2}\\:[0-9A-Fa-f]{2}\\:[0-9A-Fa-f]{2}\\:[0-9A-Fa-f]{2}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/Region;->MAC_PATTERN:Ljava/util/regex/Pattern;

    .line 58
    new-instance v0, Lorg/altbeacon/beacon/Region$1;

    invoke-direct {v0}, Lorg/altbeacon/beacon/Region$1;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/altbeacon/beacon/Region;->mBluetoothAddress:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 281
    .local v3, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    .line 282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "identifierString":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 285
    iget-object v4, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    invoke-static {v2}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v1

    .line 288
    .local v1, "identifier":Lorg/altbeacon/beacon/Identifier;
    iget-object v4, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 291
    .end local v1    # "identifier":Lorg/altbeacon/beacon/Identifier;
    .end local v2    # "identifierString":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "bluetoothAddress"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-direct {p0, p2}, Lorg/altbeacon/beacon/Region;->validateMac(Ljava/lang/String;)V

    .line 123
    iput-object p2, p0, Lorg/altbeacon/beacon/Region;->mBluetoothAddress:Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uniqueId may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "uniqueId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Identifier;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "identifiers":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Identifier;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/altbeacon/beacon/Region;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p3, "bluetoothAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Identifier;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, "identifiers":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Identifier;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-direct {p0, p3}, Lorg/altbeacon/beacon/Region;->validateMac(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    .line 109
    iput-object p1, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lorg/altbeacon/beacon/Region;->mBluetoothAddress:Ljava/lang/String;

    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uniqueId may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;)V
    .locals 2
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "id1"    # Lorg/altbeacon/beacon/Identifier;
    .param p3, "id2"    # Lorg/altbeacon/beacon/Identifier;
    .param p4, "id3"    # Lorg/altbeacon/beacon/Identifier;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    .line 81
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iput-object p1, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/altbeacon/beacon/Region;->mBluetoothAddress:Ljava/lang/String;

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uniqueId may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    return-void
.end method

.method private validateMac(Ljava/lang/String;)V
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 294
    if-eqz p1, :cond_0

    .line 295
    sget-object v0, Lorg/altbeacon/beacon/Region;->MAC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid mac address: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' Must be 6 hex bytes separated by colons."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/altbeacon/beacon/Region;->clone()Lorg/altbeacon/beacon/Region;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/altbeacon/beacon/Region;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 310
    new-instance v0, Lorg/altbeacon/beacon/Region;

    iget-object v1, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    iget-object v2, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    iget-object v3, p0, Lorg/altbeacon/beacon/Region;->mBluetoothAddress:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/altbeacon/beacon/Region;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 210
    instance-of v0, p1, Lorg/altbeacon/beacon/Region;

    if-eqz v0, :cond_0

    .line 211
    check-cast p1, Lorg/altbeacon/beacon/Region;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v0, p1, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    iget-object v1, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 213
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBluetoothAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mBluetoothAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getId1()Lorg/altbeacon/beacon/Identifier;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    return-object v0
.end method

.method public getId2()Lorg/altbeacon/beacon/Identifier;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    return-object v0
.end method

.method public getId3()Lorg/altbeacon/beacon/Identifier;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier(I)Lorg/altbeacon/beacon/Identifier;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public hasSameIdentifiers(Lorg/altbeacon/beacon/Region;)Z
    .locals 4
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v2, p1, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 220
    invoke-virtual {p1, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 236
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 223
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p1, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 226
    :cond_2
    invoke-virtual {p1, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 227
    :cond_3
    invoke-virtual {p1, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/altbeacon/beacon/Identifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_5
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public matchesBeacon(Lorg/altbeacon/beacon/Beacon;)Z
    .locals 6
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 186
    iget-object v4, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    .line 187
    iget-object v4, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/Identifier;

    .line 188
    .local v2, "identifier":Lorg/altbeacon/beacon/Identifier;
    const/4 v0, 0x0

    .line 189
    .local v0, "beaconIdentifier":Lorg/altbeacon/beacon/Identifier;
    iget-object v4, p1, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 190
    invoke-virtual {p1, v1}, Lorg/altbeacon/beacon/Beacon;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    .line 192
    :cond_1
    if-nez v0, :cond_2

    if-nez v2, :cond_3

    :cond_2
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {v2, v0}, Lorg/altbeacon/beacon/Identifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 200
    .end local v0    # "beaconIdentifier":Lorg/altbeacon/beacon/Identifier;
    .end local v2    # "identifier":Lorg/altbeacon/beacon/Identifier;
    :cond_3
    :goto_0
    return v3

    .line 197
    :cond_4
    iget-object v4, p0, Lorg/altbeacon/beacon/Region;->mBluetoothAddress:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/altbeacon/beacon/Region;->mBluetoothAddress:Ljava/lang/String;

    iget-object v5, p1, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 200
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 244
    .local v0, "i":I
    iget-object v3, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Identifier;

    .line 245
    .local v1, "identifier":Lorg/altbeacon/beacon/Identifier;
    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    .line 246
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_0
    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    if-nez v1, :cond_1

    const-string/jumbo v3, "null"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v0, v0, 0x1

    .line 253
    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v1}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 254
    .end local v1    # "identifier":Lorg/altbeacon/beacon/Identifier;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 262
    iget-object v1, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lorg/altbeacon/beacon/Region;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object v1, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    .line 267
    .local v0, "identifier":Lorg/altbeacon/beacon/Identifier;
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    .end local v0    # "identifier":Lorg/altbeacon/beacon/Identifier;
    :cond_1
    return-void
.end method
