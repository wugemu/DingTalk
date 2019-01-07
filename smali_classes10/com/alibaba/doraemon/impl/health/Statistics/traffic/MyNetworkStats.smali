.class public Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
.super Ljava/lang/Object;
.source "MyNetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$NonMonotonicObserver;,
        Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final IFACE_ALL:Ljava/lang/String;

.field public static final SET_ALL:I = -0x1

.field public static final SET_DBG_VPN_IN:I = 0x3e9

.field public static final SET_DBG_VPN_OUT:I = 0x3ea

.field public static final SET_DEBUG_START:I = 0x3e8

.field public static final SET_DEFAULT:I = 0x0

.field public static final SET_FOREGROUND:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field public static final TAG_ALL:I = -0x1

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1


# instance fields
.field private capacity:I

.field private elapsedRealtime:J

.field private iface:[Ljava/lang/String;

.field private operations:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private set:[I

.field private size:I

.field private tag:[I

.field private txBytes:[J

.field private txPackets:[J

.field private uid:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->IFACE_ALL:Ljava/lang/String;

    .line 808
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$1;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$1;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "elapsedRealtime"    # J
    .param p3, "initialSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-wide p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->elapsedRealtime:J

    .line 194
    iput v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    .line 195
    if-ltz p3, :cond_0

    .line 196
    iput p3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->capacity:I

    .line 197
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->iface:[Ljava/lang/String;

    .line 198
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->uid:[I

    .line 199
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->set:[I

    .line 200
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tag:[I

    .line 201
    new-array v0, p3, [J

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxBytes:[J

    .line 202
    new-array v0, p3, [J

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxPackets:[J

    .line 203
    new-array v0, p3, [J

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txBytes:[J

    .line 204
    new-array v0, p3, [J

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txPackets:[J

    .line 205
    new-array v0, p3, [J

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->operations:[J

    .line 219
    :goto_0
    return-void

    .line 208
    :cond_0
    iput v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->capacity:I

    .line 209
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->iface:[Ljava/lang/String;

    .line 210
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->uid:[I

    .line 211
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->set:[I

    .line 212
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tag:[I

    .line 213
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/EmptyArray;->LONG:[J

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxBytes:[J

    .line 214
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/EmptyArray;->LONG:[J

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxPackets:[J

    .line 215
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/EmptyArray;->LONG:[J

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txBytes:[J

    .line 216
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/EmptyArray;->LONG:[J

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txPackets:[J

    .line 217
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/EmptyArray;->LONG:[J

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->operations:[J

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->elapsedRealtime:J

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->capacity:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->iface:[Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->uid:[I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->set:[I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tag:[I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxBytes:[J

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxPackets:[J

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txBytes:[J

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txPackets:[J

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->operations:[J

    .line 234
    return-void
.end method

.method private addTrafficToApplications(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    .locals 10
    .param p1, "tunIface"    # Ljava/lang/String;
    .param p2, "underlyingIface"    # Ljava/lang/String;
    .param p3, "tunIfaceTotal"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    .param p4, "pool"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 871
    new-instance v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    invoke-direct {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;-><init>()V

    .line 872
    .local v1, "moved":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    new-instance v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    invoke-direct {v2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;-><init>()V

    .line 873
    .local v2, "tmpEntry":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    iput-object p2, v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    .line 874
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    if-ge v0, v3, :cond_6

    .line 875
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 876
    iget-wide v4, p3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_1

    .line 877
    iget-wide v4, p4, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxBytes:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    .line 881
    :goto_1
    iget-wide v4, p3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    .line 882
    iget-wide v4, p4, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxPackets:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    .line 886
    :goto_2
    iget-wide v4, p3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_3

    .line 887
    iget-wide v4, p4, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txBytes:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    .line 891
    :goto_3
    iget-wide v4, p3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_4

    .line 892
    iget-wide v4, p4, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txPackets:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    .line 896
    :goto_4
    iget-wide v4, p3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_5

    .line 897
    iget-wide v4, p4, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->operations:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    .line 902
    :goto_5
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->uid:[I

    aget v3, v3, v0

    iput v3, v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->uid:I

    .line 903
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tag:[I

    aget v3, v3, v0

    iput v3, v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->tag:I

    .line 904
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->set:[I

    aget v3, v3, v0

    iput v3, v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    .line 905
    invoke-virtual {p0, v2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->combineValues(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    .line 906
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tag:[I

    aget v3, v3, v0

    if-nez v3, :cond_0

    .line 907
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->add(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)V

    .line 909
    const/16 v3, 0x3e9

    iput v3, v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    .line 910
    invoke-virtual {p0, v2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->combineValues(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    .line 874
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 879
    :cond_1
    iput-wide v8, v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    goto :goto_1

    .line 884
    :cond_2
    iput-wide v8, v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    goto :goto_2

    .line 889
    :cond_3
    iput-wide v8, v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    goto :goto_3

    .line 894
    :cond_4
    iput-wide v8, v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    goto :goto_4

    .line 900
    :cond_5
    iput-wide v8, v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    goto :goto_5

    .line 914
    :cond_6
    return-object v1
.end method

.method private deductTrafficFromVpnApp(ILjava/lang/String;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)V
    .locals 5
    .param p1, "tunUid"    # I
    .param p2, "underlyingIface"    # Ljava/lang/String;
    .param p3, "moved"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 919
    iput p1, p3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->uid:I

    .line 920
    const/16 v2, 0x3ea

    iput v2, p3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    .line 921
    iput v3, p3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->tag:I

    .line 922
    iput-object p2, p3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    .line 923
    invoke-virtual {p0, p3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->combineValues(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    .line 927
    invoke-virtual {p0, p2, p1, v3, v3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v0

    .line 928
    .local v0, "idxVpnBackground":I
    if-eq v0, v4, :cond_0

    .line 929
    invoke-static {v0, p0, p3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tunSubtract(ILcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)V

    .line 932
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, p2, p1, v2, v3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v1

    .line 933
    .local v1, "idxVpnForeground":I
    if-eq v1, v4, :cond_1

    .line 934
    invoke-static {v1, p0, p3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tunSubtract(ILcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)V

    .line 936
    :cond_1
    return-void
.end method

.method private getTotal(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;Ljava/util/HashSet;IZ)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    .locals 11
    .param p1, "recycle"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    .param p3, "limitUid"    # I
    .param p4, "includeTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v10, -0x1

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    .line 522
    if-eqz p1, :cond_4

    move-object v0, p1

    .line 524
    .local v0, "entry":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    :goto_0
    sget-object v6, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v6, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    .line 525
    iput p3, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->uid:I

    .line 526
    iput v10, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    .line 527
    iput v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->tag:I

    .line 528
    iput-wide v8, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    .line 529
    iput-wide v8, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    .line 530
    iput-wide v8, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    .line 531
    iput-wide v8, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    .line 532
    iput-wide v8, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    .line 534
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    if-ge v1, v6, :cond_7

    .line 535
    if-eq p3, v10, :cond_0

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->uid:[I

    aget v6, v6, v1

    if-ne p3, v6, :cond_5

    :cond_0
    move v3, v5

    .line 536
    .local v3, "matchesUid":Z
    :goto_2
    if-eqz p2, :cond_1

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->iface:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_1
    move v2, v5

    .line 538
    .local v2, "matchesIface":Z
    :goto_3
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 540
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tag:[I

    aget v6, v6, v1

    if-eqz v6, :cond_2

    if-eqz p4, :cond_3

    .line 542
    :cond_2
    iget-wide v6, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    iget-object v8, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxBytes:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    .line 543
    iget-wide v6, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    iget-object v8, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxPackets:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    .line 544
    iget-wide v6, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    iget-object v8, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txBytes:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    .line 545
    iget-wide v6, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    iget-object v8, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txPackets:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    .line 546
    iget-wide v6, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    iget-object v8, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->operations:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    .line 534
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 522
    .end local v0    # "entry":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    .end local v1    # "i":I
    .end local v2    # "matchesIface":Z
    .end local v3    # "matchesUid":Z
    :cond_4
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;-><init>()V

    goto :goto_0

    .restart local v0    # "entry":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    .restart local v1    # "i":I
    :cond_5
    move v3, v4

    .line 535
    goto :goto_2

    .restart local v3    # "matchesUid":Z
    :cond_6
    move v2, v4

    .line 536
    goto :goto_3

    .line 549
    .end local v3    # "matchesUid":Z
    :cond_7
    return-object v0
.end method

.method public static objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 960
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setMatches(II)Z
    .locals 2
    .param p0, "querySet"    # I
    .param p1, "dataSet"    # I

    .prologue
    const/4 v0, 0x1

    .line 782
    if-ne p0, p1, :cond_1

    .line 786
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, -0x1

    if-ne p0, v1, :cond_2

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setToCheckinString(I)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # I

    .prologue
    .line 762
    sparse-switch p0, :sswitch_data_0

    .line 774
    const-string/jumbo v0, "unk"

    :goto_0
    return-object v0

    .line 764
    :sswitch_0
    const-string/jumbo v0, "all"

    goto :goto_0

    .line 766
    :sswitch_1
    const-string/jumbo v0, "def"

    goto :goto_0

    .line 768
    :sswitch_2
    const-string/jumbo v0, "fg"

    goto :goto_0

    .line 770
    :sswitch_3
    const-string/jumbo v0, "vpnin"

    goto :goto_0

    .line 772
    :sswitch_4
    const-string/jumbo v0, "vpnout"

    goto :goto_0

    .line 762
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_4
    .end sparse-switch
.end method

.method public static setToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # I

    .prologue
    .line 742
    sparse-switch p0, :sswitch_data_0

    .line 754
    const-string/jumbo v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 744
    :sswitch_0
    const-string/jumbo v0, "ALL"

    goto :goto_0

    .line 746
    :sswitch_1
    const-string/jumbo v0, "DEFAULT"

    goto :goto_0

    .line 748
    :sswitch_2
    const-string/jumbo v0, "FOREGROUND"

    goto :goto_0

    .line 750
    :sswitch_3
    const-string/jumbo v0, "DBG_VPN_IN"

    goto :goto_0

    .line 752
    :sswitch_4
    const-string/jumbo v0, "DBG_VPN_OUT"

    goto :goto_0

    .line 742
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_4
    .end sparse-switch
.end method

.method public static subtract(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .locals 1
    .param p0, "left"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .param p1, "right"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;",
            "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;",
            "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$NonMonotonicObserver",
            "<TC;>;TC;)",
            "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;"
        }
    .end annotation

    .prologue
    .line 582
    .local p2, "observer":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$NonMonotonicObserver;, "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$NonMonotonicObserver<TC;>;"
    .local p3, "cookie":Ljava/lang/Object;, "TC;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->subtract(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$NonMonotonicObserver;Ljava/lang/Object;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public static subtract(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$NonMonotonicObserver;Ljava/lang/Object;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .locals 16
    .param p0, "left"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .param p1, "right"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .param p4, "recycle"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;",
            "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;",
            "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$NonMonotonicObserver",
            "<TC;>;TC;",
            "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;",
            ")",
            "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;"
        }
    .end annotation

    .prologue
    .line 599
    .local p2, "observer":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$NonMonotonicObserver;, "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$NonMonotonicObserver<TC;>;"
    .local p3, "cookie":Ljava/lang/Object;, "TC;"
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->elapsedRealtime:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->elapsedRealtime:J

    sub-long v12, v2, v4

    .line 600
    .local v12, "deltaRealtime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gez v2, :cond_1

    .line 601
    if-eqz p2, :cond_0

    .line 602
    const/4 v4, -0x1

    const/4 v6, -0x1

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$NonMonotonicObserver;->foundNonMonotonic(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;ILcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;ILjava/lang/Object;)V

    .line 604
    :cond_0
    const-wide/16 v12, 0x0

    .line 608
    :cond_1
    new-instance v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    invoke-direct {v11}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;-><init>()V

    .line 610
    .local v11, "entry":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    if-eqz p4, :cond_3

    move-object/from16 v0, p4

    iget v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->capacity:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    if-lt v2, v3, :cond_3

    .line 612
    move-object/from16 v14, p4

    .local v14, "result":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    const/4 v2, 0x0

    move-object/from16 v0, p4

    iput v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    .line 613
    iput-wide v12, v14, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->elapsedRealtime:J

    .line 619
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    if-ge v7, v2, :cond_7

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->iface:[Ljava/lang/String;

    aget-object v2, v2, v7

    iput-object v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->uid:[I

    aget v2, v2, v7

    iput v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->uid:I

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->set:[I

    aget v2, v2, v7

    iput v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tag:[I

    aget v2, v2, v7

    iput v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->tag:I

    .line 626
    iget-object v3, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    iget v4, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->uid:I

    iget v5, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    iget v6, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->tag:I

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->findIndexHinted(Ljava/lang/String;IIII)I

    move-result v9

    .line 627
    .local v9, "j":I
    const/4 v2, -0x1

    if-ne v9, v2, :cond_4

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxBytes:[J

    aget-wide v2, v2, v7

    iput-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxPackets:[J

    aget-wide v2, v2, v7

    iput-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txBytes:[J

    aget-wide v2, v2, v7

    iput-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txPackets:[J

    aget-wide v2, v2, v7

    iput-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->operations:[J

    aget-wide v2, v2, v7

    iput-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    .line 655
    :cond_2
    :goto_2
    invoke-virtual {v14, v11}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->addValues(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 615
    .end local v7    # "i":I
    .end local v9    # "j":I
    .end local v14    # "result":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    :cond_3
    new-instance v14, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    invoke-direct {v14, v12, v13, v2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;-><init>(JI)V

    .restart local v14    # "result":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    goto :goto_0

    .line 636
    .restart local v7    # "i":I
    .restart local v9    # "j":I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxBytes:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxBytes:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxPackets:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxPackets:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txBytes:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txBytes:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txPackets:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txPackets:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->operations:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->operations:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    .line 642
    iget-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 644
    :cond_5
    if-eqz p2, :cond_6

    move-object/from16 v5, p2

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p3

    .line 645
    invoke-interface/range {v5 .. v10}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$NonMonotonicObserver;->foundNonMonotonic(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;ILcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;ILjava/lang/Object;)V

    .line 647
    :cond_6
    iget-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    .line 648
    iget-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    .line 649
    iget-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    .line 650
    iget-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    .line 651
    iget-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 657
    .end local v9    # "j":I
    :catch_0
    move-exception v15

    .line 658
    .local v15, "t":Ljava/lang/Throwable;
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    .line 661
    .end local v15    # "t":Ljava/lang/Throwable;
    :cond_7
    return-object v14
.end method

.method public static tagToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # I

    .prologue
    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tunAdjustmentInit(ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)V
    .locals 4
    .param p1, "tunUid"    # I
    .param p2, "tunIface"    # Ljava/lang/String;
    .param p3, "underlyingIface"    # Ljava/lang/String;
    .param p4, "tunIfaceTotal"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    .param p5, "underlyingIfaceTotal"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 835
    new-instance v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    invoke-direct {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;-><init>()V

    .line 836
    .local v1, "recycle":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    if-ge v0, v2, :cond_5

    .line 837
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->getValues(ILcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    .line 838
    iget v2, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->uid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 839
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot adjust VPN accounting on an iface aggregated NetworkStats."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 841
    :cond_0
    iget v2, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    const/16 v3, 0x3ea

    if-ne v2, v3, :cond_2

    .line 842
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot adjust VPN accounting on a NetworkStats containing SET_DBG_VPN_*"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 846
    :cond_2
    iget v2, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->uid:I

    if-ne v2, p1, :cond_3

    iget v2, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->tag:I

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    .line 847
    invoke-static {p3, v2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 848
    invoke-virtual {p5, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->add(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)V

    .line 851
    :cond_3
    iget v2, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->tag:I

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 853
    invoke-virtual {p4, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->add(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)V

    .line 836
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 856
    :cond_5
    return-void
.end method

.method private static tunGetPool(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    .locals 6
    .param p0, "tunIfaceTotal"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    .param p1, "underlyingIfaceTotal"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    .prologue
    .line 859
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;-><init>()V

    .line 860
    .local v0, "pool":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    .line 861
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    .line 862
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    .line 863
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    .line 864
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    .line 865
    return-object v0
.end method

.method private static tunSubtract(ILcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)V
    .locals 12
    .param p0, "i"    # I
    .param p1, "left"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .param p2, "right"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    .prologue
    .line 939
    iget-object v8, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxBytes:[J

    aget-wide v8, v8, p0

    iget-wide v10, p2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 940
    .local v0, "rxBytes":J
    iget-object v8, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxBytes:[J

    aget-wide v10, v8, p0

    sub-long/2addr v10, v0

    aput-wide v10, v8, p0

    .line 941
    iget-wide v8, p2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    sub-long/2addr v8, v0

    iput-wide v8, p2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    .line 943
    iget-object v8, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxPackets:[J

    aget-wide v8, v8, p0

    iget-wide v10, p2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 944
    .local v2, "rxPackets":J
    iget-object v8, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxPackets:[J

    aget-wide v10, v8, p0

    sub-long/2addr v10, v2

    aput-wide v10, v8, p0

    .line 945
    iget-wide v8, p2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    sub-long/2addr v8, v2

    iput-wide v8, p2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    .line 947
    iget-object v8, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txBytes:[J

    aget-wide v8, v8, p0

    iget-wide v10, p2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 948
    .local v4, "txBytes":J
    iget-object v8, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txBytes:[J

    aget-wide v10, v8, p0

    sub-long/2addr v10, v4

    aput-wide v10, v8, p0

    .line 949
    iget-wide v8, p2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    sub-long/2addr v8, v4

    iput-wide v8, p2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    .line 951
    iget-object v8, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txPackets:[J

    aget-wide v8, v8, p0

    iget-wide v10, p2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 952
    .local v6, "txPackets":J
    iget-object v8, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txPackets:[J

    aget-wide v10, v8, p0

    sub-long/2addr v10, v6

    aput-wide v10, v8, p0

    .line 953
    iget-wide v8, p2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    sub-long/2addr v8, v6

    iput-wide v8, p2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    .line 954
    return-void
.end method

.method public static unmarshallString(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .locals 7
    .param p0, "valueString"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v3, 0x0

    .line 175
    .local v3, "stats":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 178
    .local v2, "parcel":Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lhv;->a([BI)[B

    move-result-object v4

    .line 179
    .local v4, "valueByte":[B
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 180
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 181
    sget-object v5, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 189
    .end local v4    # "valueByte":[B
    :goto_0
    return-object v3

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method


# virtual methods
.method public addIfaceValues(Ljava/lang/String;JJJJ)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .locals 16
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "rxBytes"    # J
    .param p4, "rxPackets"    # J
    .param p6, "txBytes"    # J
    .param p8, "txPackets"    # J

    .prologue
    .line 265
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-virtual/range {v1 .. v15}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->addValues(Ljava/lang/String;IIIJJJJJ)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public addValues(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .locals 6
    .param p1, "entry"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 281
    iget v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->capacity:I

    if-lt v1, v2, :cond_0

    .line 282
    iget v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v0, v1, 0x2

    .line 283
    .local v0, "newLength":I
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->iface:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->iface:[Ljava/lang/String;

    .line 284
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->uid:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->uid:[I

    .line 285
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->set:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->set:[I

    .line 286
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tag:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tag:[I

    .line 287
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxBytes:[J

    .line 288
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxPackets:[J

    .line 289
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txBytes:[J

    .line 290
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txPackets:[J

    .line 291
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->operations:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->operations:[J

    .line 292
    iput v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->capacity:I

    .line 295
    .end local v0    # "newLength":I
    :cond_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->iface:[Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    iget-object v3, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 296
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->uid:[I

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    iget v3, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->uid:I

    aput v3, v1, v2

    .line 297
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->set:[I

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    iget v3, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    aput v3, v1, v2

    .line 298
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tag:[I

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    iget v3, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->tag:I

    aput v3, v1, v2

    .line 299
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxBytes:[J

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    aput-wide v4, v1, v2

    .line 300
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxPackets:[J

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    aput-wide v4, v1, v2

    .line 301
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txBytes:[J

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    aput-wide v4, v1, v2

    .line 302
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txPackets:[J

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    aput-wide v4, v1, v2

    .line 303
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->operations:[J

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    aput-wide v4, v1, v2

    .line 304
    iget v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    .line 306
    return-object p0
.end method

.method public addValues(Ljava/lang/String;IIIJJJJJ)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .locals 19
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    .prologue
    .line 271
    new-instance v3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    invoke-direct/range {v3 .. v17}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->addValues(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    move-result-object v2

    return-object v2
.end method

.method public buildMarshallString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 167
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {p0, v0, v3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-static {v2, v3}, Lhv;->c([BI)[B

    move-result-object v1

    .line 169
    .local v1, "values":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public clone()Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 254
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->elapsedRealtime:J

    iget v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    invoke-direct {v0, v4, v5, v3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;-><init>(JI)V

    .line 255
    .local v0, "clone":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    const/4 v1, 0x0

    .line 256
    .local v1, "entry":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    if-ge v2, v3, :cond_0

    .line 257
    invoke-virtual {p0, v2, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->getValues(ILcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    move-result-object v1

    .line 258
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->addValues(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->clone()Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public combineAllValues(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;)V
    .locals 3
    .param p1, "another"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "entry":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    if-ge v1, v2, :cond_0

    .line 389
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->getValues(ILcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    move-result-object v0

    .line 390
    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->combineValues(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    :cond_0
    return-void
.end method

.method public combineValues(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .locals 6
    .param p1, "entry"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 369
    iget-object v1, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    iget v2, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->uid:I

    iget v3, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    iget v4, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->tag:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v0

    .line 370
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 372
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->addValues(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    .line 380
    :goto_0
    return-object p0

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 375
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 376
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 377
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 378
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->operations:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    goto :goto_0
.end method

.method public combineValues(Ljava/lang/String;IIIJJJJJ)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .locals 19
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    .prologue
    .line 359
    new-instance v3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    invoke-direct/range {v3 .. v17}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->combineValues(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    move-result-object v2

    return-object v2
.end method

.method public combineValues(Ljava/lang/String;IIJJJJJ)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .locals 16
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tag"    # I
    .param p4, "rxBytes"    # J
    .param p6, "rxPackets"    # J
    .param p8, "txBytes"    # J
    .param p10, "txPackets"    # J
    .param p12, "operations"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 353
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    invoke-virtual/range {v1 .. v15}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 805
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 721
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 722
    const-string/jumbo v1, "NetworkStats: elapsedRealtime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->elapsedRealtime:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 723
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    if-ge v0, v1, :cond_0

    .line 724
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 725
    const-string/jumbo v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 726
    const-string/jumbo v1, " iface="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 727
    const-string/jumbo v1, " uid="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->uid:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 728
    const-string/jumbo v1, " set="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->set:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 729
    const-string/jumbo v1, " tag="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tag:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 730
    const-string/jumbo v1, " rxBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 731
    const-string/jumbo v1, " rxPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 732
    const-string/jumbo v1, " txBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 733
    const-string/jumbo v1, " txPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 734
    const-string/jumbo v1, " operations="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->operations:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 736
    :cond_0
    return-void
.end method

.method public findIndex(Ljava/lang/String;III)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 398
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    if-ge v0, v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->uid:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->set:[I

    aget v1, v1, v0

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tag:[I

    aget v1, v1, v0

    if-ne p4, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 400
    invoke-static {p1, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 398
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findIndexHinted(Ljava/lang/String;IIII)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "hintIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 412
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_0
    iget v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    if-ge v2, v3, :cond_2

    .line 413
    div-int/lit8 v0, v2, 0x2

    .line 417
    .local v0, "halfOffset":I
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_0

    .line 418
    add-int v3, p5, v0

    iget v4, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    rem-int v1, v3, v4

    .line 423
    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->uid:[I

    aget v3, v3, v1

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->set:[I

    aget v3, v3, v1

    if-ne p3, v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tag:[I

    aget v3, v3, v1

    if-ne p4, v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 424
    invoke-static {p1, v3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 428
    .end local v0    # "halfOffset":I
    .end local v1    # "i":I
    :goto_2
    return v1

    .line 420
    .restart local v0    # "halfOffset":I
    :cond_0
    iget v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    add-int/2addr v3, p5

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    rem-int v1, v3, v4

    .restart local v1    # "i":I
    goto :goto_1

    .line 412
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    .end local v0    # "halfOffset":I
    .end local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public getElapsedRealtime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 327
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->elapsedRealtime:J

    return-wide v0
.end method

.method public getElapsedRealtimeAge()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 339
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->elapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotal(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    .locals 3
    .param p1, "recycle"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 490
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->getTotal(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;Ljava/util/HashSet;IZ)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;I)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    .locals 2
    .param p1, "recycle"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    .param p2, "limitUid"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 498
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->getTotal(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;Ljava/util/HashSet;IZ)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;Ljava/util/HashSet;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    .locals 2
    .param p1, "recycle"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 506
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->getTotal(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;Ljava/util/HashSet;IZ)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 482
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->getTotal(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    move-result-object v0

    .line 483
    .local v0, "entry":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    iget-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    iget-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public getTotalIncludingTags(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    .locals 3
    .param p1, "recycle"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 510
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->getTotal(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;Ljava/util/HashSet;IZ)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalPackets()J
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 556
    const-wide/16 v2, 0x0

    .line 557
    .local v2, "total":J
    iget v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 558
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxPackets:[J

    aget-wide v4, v1, v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txPackets:[J

    aget-wide v6, v1, v0

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 557
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 560
    :cond_0
    return-wide v2
.end method

.method public getUniqueIfaces()[Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 451
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 452
    .local v1, "ifaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->iface:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 453
    .local v0, "iface":Ljava/lang/String;
    sget-object v5, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->IFACE_ALL:Ljava/lang/String;

    if-eq v0, v5, :cond_0

    .line 454
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 457
    .end local v0    # "iface":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public getUniqueUids()[I
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 464
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 465
    .local v4, "uids":Landroid/util/SparseBooleanArray;
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->uid:[I

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_0

    aget v3, v6, v5

    .line 466
    .local v3, "uid":I
    const/4 v8, 0x1

    invoke-virtual {v4, v3, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 465
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 469
    .end local v3    # "uid":I
    :cond_0
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 470
    .local v2, "size":I
    new-array v1, v2, [I

    .line 471
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 472
    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    aput v5, v1, v0

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 474
    :cond_1
    return-object v1
.end method

.method public getValues(ILcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    .locals 4
    .param p1, "i"    # I
    .param p2, "recycle"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 313
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 314
    .local v0, "entry":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    :goto_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->uid:[I

    aget v1, v1, p1

    iput v1, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->uid:I

    .line 316
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->set:[I

    aget v1, v1, p1

    iput v1, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    .line 317
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tag:[I

    aget v1, v1, p1

    iput v1, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->tag:I

    .line 318
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxBytes:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    .line 319
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxPackets:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    .line 320
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txBytes:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    .line 321
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txPackets:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    .line 322
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->operations:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    .line 323
    return-object v0

    .line 313
    .end local v0    # "entry":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;-><init>()V

    goto :goto_0
.end method

.method public groupedByIface()Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, -0x1

    .line 669
    new-instance v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;-><init>(JI)V

    .line 671
    .local v2, "stats":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;-><init>()V

    .line 672
    .local v0, "entry":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    iput v6, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->uid:I

    .line 673
    iput v6, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    .line 674
    const/4 v3, 0x0

    iput v3, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->tag:I

    .line 675
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    .line 677
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    if-ge v1, v3, :cond_1

    .line 679
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tag:[I

    aget v3, v3, v1

    if-nez v3, :cond_0

    .line 681
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    .line 682
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    .line 683
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    .line 684
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    .line 685
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    .line 686
    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->combineValues(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    .line 677
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 689
    :cond_1
    return-object v2
.end method

.method public groupedByUid()Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 697
    new-instance v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;-><init>(JI)V

    .line 699
    .local v2, "stats":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;-><init>()V

    .line 700
    .local v0, "entry":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    sget-object v3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    .line 701
    const/4 v3, -0x1

    iput v3, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    .line 702
    const/4 v3, 0x0

    iput v3, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->tag:I

    .line 704
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    if-ge v1, v3, :cond_1

    .line 706
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tag:[I

    aget v3, v3, v1

    if-nez v3, :cond_0

    .line 708
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->uid:[I

    aget v3, v3, v1

    iput v3, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->uid:I

    .line 709
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    .line 710
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    .line 711
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    .line 712
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    .line 713
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->operations:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    .line 714
    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->combineValues(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    .line 704
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 717
    :cond_1
    return-object v2
.end method

.method public internalSize()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->capacity:I

    return v0
.end method

.method public setElapsedRealtime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 331
    iput-wide p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->elapsedRealtime:J

    .line 332
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    return v0
.end method

.method public spliceOperationsFrom(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;)V
    .locals 6
    .param p1, "stats"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 437
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    if-ge v0, v2, :cond_1

    .line 438
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->iface:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->uid:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->set:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tag:[I

    aget v5, v5, v0

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v1

    .line 439
    .local v1, "j":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 440
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->operations:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v0

    .line 437
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->operations:[J

    iget-object v3, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->operations:[J

    aget-wide v4, v3, v1

    aput-wide v4, v2, v0

    goto :goto_1

    .line 445
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method public subtract(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .locals 1
    .param p1, "right"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    .prologue
    const/4 v0, 0x0

    .line 569
    invoke-static {p0, p1, v0, v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->subtract(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 798
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 799
    .local v0, "writer":Ljava/io/CharArrayWriter;
    const-string/jumbo v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 800
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 238
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->elapsedRealtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 239
    iget v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->capacity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->iface:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->uid:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 243
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->set:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 244
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tag:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 245
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 246
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->rxPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 247
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 248
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->txPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 249
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->operations:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 250
    return-void
.end method
