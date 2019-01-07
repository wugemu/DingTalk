.class public Lorg/altbeacon/beacon/BeaconParser;
.super Ljava/lang/Object;
.source "BeaconParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;
    }
.end annotation


# static fields
.field public static final ALTBEACON_LAYOUT:Ljava/lang/String; = "m:2-3=beac,i:4-19,i:20-21,i:22-23,p:24-24,d:25-25"

.field private static final D_PATTERN:Ljava/util/regex/Pattern;

.field public static final EDDYSTONE_TLM_LAYOUT:Ljava/lang/String; = "x,s:0-1=feaa,m:2-2=20,d:3-3,d:4-5,d:6-7,d:8-11,d:12-15"

.field public static final EDDYSTONE_UID_LAYOUT:Ljava/lang/String; = "s:0-1=feaa,m:2-2=00,p:3-3:-41,i:4-13,i:14-19"

.field public static final EDDYSTONE_URL_LAYOUT:Ljava/lang/String; = "s:0-1=feaa,m:2-2=10,p:3-3:-41,i:4-21v"

.field private static final HEX_ARRAY:[C

.field private static final I_PATTERN:Ljava/util/regex/Pattern;

.field private static final LITTLE_ENDIAN_SUFFIX:Ljava/lang/String; = "l"

.field private static final M_PATTERN:Ljava/util/regex/Pattern;

.field private static final P_PATTERN:Ljava/util/regex/Pattern;

.field private static final S_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "BeaconParser"

.field public static final URI_BEACON_LAYOUT:Ljava/lang/String; = "s:0-1=fed8,m:2-2=00,p:3-3:-41,i:4-21v"

.field private static final VARIABLE_LENGTH_SUFFIX:Ljava/lang/String; = "v"

.field private static final X_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field protected extraParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/BeaconParser;",
            ">;"
        }
    .end annotation
.end field

.field protected mAllowPduOverflow:Ljava/lang/Boolean;

.field protected mDBmCorrection:Ljava/lang/Integer;

.field protected final mDataEndOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mDataLittleEndianFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected final mDataStartOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mExtraFrame:Ljava/lang/Boolean;

.field protected mHardwareAssistManufacturers:[I

.field protected mIdentifier:Ljava/lang/String;

.field protected final mIdentifierEndOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mIdentifierLittleEndianFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected final mIdentifierStartOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mIdentifierVariableLengthFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mLayoutSize:Ljava/lang/Integer;

.field private mMatchingBeaconTypeCode:Ljava/lang/Long;

.field protected mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

.field protected mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

.field protected mPowerEndOffset:Ljava/lang/Integer;

.field protected mPowerStartOffset:Ljava/lang/Integer;

.field protected mServiceUuid:Ljava/lang/Long;

.field protected mServiceUuidEndOffset:Ljava/lang/Integer;

.field protected mServiceUuidStartOffset:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "i\\:(\\d+)\\-(\\d+)([blv]*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/BeaconParser;->I_PATTERN:Ljava/util/regex/Pattern;

    .line 47
    const-string/jumbo v0, "m\\:(\\d+)-(\\d+)\\=([0-9A-Fa-f]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/BeaconParser;->M_PATTERN:Ljava/util/regex/Pattern;

    .line 48
    const-string/jumbo v0, "s\\:(\\d+)-(\\d+)\\=([0-9A-Fa-f]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/BeaconParser;->S_PATTERN:Ljava/util/regex/Pattern;

    .line 49
    const-string/jumbo v0, "d\\:(\\d+)\\-(\\d+)([bl]*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/BeaconParser;->D_PATTERN:Ljava/util/regex/Pattern;

    .line 50
    const-string/jumbo v0, "p\\:(\\d+)\\-(\\d+)\\:?([\\-\\d]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/BeaconParser;->P_PATTERN:Ljava/util/regex/Pattern;

    .line 51
    const-string/jumbo v0, "x"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/BeaconParser;->X_PATTERN:Ljava/util/regex/Pattern;

    .line 52
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/altbeacon/beacon/BeaconParser;->HEX_ARRAY:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierLittleEndianFlags:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataStartOffsets:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataLittleEndianFlags:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierVariableLengthFlags:Ljava/util/List;

    .line 75
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mAllowPduOverflow:Ljava/lang/Boolean;

    .line 77
    new-array v0, v1, [I

    const/4 v1, 0x0

    const/16 v2, 0x4c

    aput v2, v0, v1

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mHardwareAssistManufacturers:[I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->extraParsers:Ljava/util/List;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierLittleEndianFlags:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataStartOffsets:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataLittleEndianFlags:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierVariableLengthFlags:Ljava/util/List;

    .line 75
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mAllowPduOverflow:Ljava/lang/Boolean;

    .line 77
    new-array v0, v1, [I

    const/4 v1, 0x0

    const/16 v2, 0x4c

    aput v2, v0, v1

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mHardwareAssistManufacturers:[I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->extraParsers:Ljava/util/List;

    .line 93
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifier:Ljava/lang/String;

    .line 94
    return-void
.end method

.method private byteArrayToFormattedString([BIIZ)Ljava/lang/String;
    .locals 22
    .param p1, "byteBuffer"    # [B
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "littleEndian"    # Z

    .prologue
    .line 845
    sub-int v15, p3, p2

    add-int/lit8 v15, v15, 0x1

    new-array v4, v15, [B

    .line 846
    .local v4, "bytes":[B
    if-eqz p4, :cond_0

    .line 847
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sub-int v15, p3, p2

    if-gt v8, v15, :cond_1

    .line 848
    array-length v15, v4

    add-int v15, v15, p2

    add-int/lit8 v15, v15, -0x1

    sub-int/2addr v15, v8

    aget-byte v15, p1, v15

    aput-byte v15, v4, v8

    .line 847
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 852
    .end local v8    # "i":I
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    sub-int v15, p3, p2

    if-gt v8, v15, :cond_1

    .line 853
    add-int v15, p2, v8

    aget-byte v15, p1, v15

    aput-byte v15, v4, v8

    .line 852
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 858
    :cond_1
    sub-int v15, p3, p2

    add-int/lit8 v9, v15, 0x1

    .line 860
    .local v9, "length":I
    const/4 v15, 0x5

    if-ge v9, v15, :cond_3

    .line 861
    const-wide/16 v10, 0x0

    .line 862
    .local v10, "number":J
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_2

    .line 863
    sub-int v15, v9, v8

    add-int/lit8 v15, v15, -0x1

    aget-byte v15, v4, v15

    and-int/lit16 v15, v15, 0xff

    int-to-long v2, v15

    .line 864
    .local v2, "byteValue":J
    const-wide/high16 v16, 0x4070000000000000L    # 256.0

    int-to-double v0, v8

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    mul-double v18, v18, v20

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-long v12, v0

    .line 865
    .local v12, "positionValue":J
    mul-long v6, v2, v12

    .line 866
    .local v6, "calculatedValue":J
    add-long/2addr v10, v6

    .line 862
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 868
    .end local v2    # "byteValue":J
    .end local v6    # "calculatedValue":J
    .end local v12    # "positionValue":J
    :cond_2
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    .line 888
    .end local v10    # "number":J
    :goto_3
    return-object v15

    .line 872
    :cond_3
    invoke-static {v4}, Lorg/altbeacon/beacon/BeaconParser;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    .line 875
    .local v5, "hexString":Ljava/lang/String;
    const/16 v15, 0x10

    if-ne v9, v15, :cond_4

    .line 876
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 877
    .local v14, "sb":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    const-string/jumbo v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    const/16 v15, 0x8

    const/16 v16, 0xc

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    const-string/jumbo v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    const/16 v15, 0xc

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    const-string/jumbo v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    const/16 v15, 0x10

    const/16 v16, 0x14

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    const-string/jumbo v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    const/16 v15, 0x14

    const/16 v16, 0x20

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    .line 888
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "0x"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_3
.end method

.method private byteArrayToString([B)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 837
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 838
    const-string/jumbo v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p1, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 841
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private byteArraysMatch([BI[B)Z
    .locals 5
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "expected"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 823
    array-length v1, p3

    .line 824
    .local v1, "length":I
    array-length v3, p1

    sub-int/2addr v3, p2

    if-ge v3, v1, :cond_1

    .line 832
    :cond_0
    :goto_0
    return v2

    .line 827
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 828
    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aget-byte v4, p3, v0

    if-ne v3, v4, :cond_0

    .line 827
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 832
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 766
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 768
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 769
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 770
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lorg/altbeacon/beacon/BeaconParser;->HEX_ARRAY:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 771
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lorg/altbeacon/beacon/BeaconParser;->HEX_ARRAY:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 768
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    .end local v2    # "v":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private calculateLayoutSize()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 798
    const/4 v1, 0x0

    .line 799
    .local v1, "lastEndOffset":I
    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 800
    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 801
    .local v0, "endOffset":I
    if-le v0, v1, :cond_0

    .line 802
    move v1, v0

    goto :goto_0

    .line 806
    .end local v0    # "endOffset":I
    :cond_1
    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 807
    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 808
    .restart local v0    # "endOffset":I
    if-le v0, v1, :cond_2

    .line 809
    move v1, v0

    goto :goto_1

    .line 813
    .end local v0    # "endOffset":I
    :cond_3
    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v1, :cond_4

    .line 814
    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 816
    :cond_4
    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidEndOffset:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidEndOffset:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v1, :cond_5

    .line 817
    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidEndOffset:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 819
    :cond_5
    add-int/lit8 v2, v1, 0x1

    return v2
.end method

.method private ensureMaxSize([BI)[B
    .locals 1
    .param p1, "array"    # [B
    .param p2, "requiredLength"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 893
    array-length v0, p1

    if-lt v0, p2, :cond_0

    .line 896
    .end local p1    # "array":[B
    :goto_0
    return-object p1

    .restart local p1    # "array":[B
    :cond_0
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_0
.end method

.method public static longToByteArray(JI)[B
    .locals 2
    .param p0, "longValue"    # J
    .param p2, "length"    # I

    .prologue
    .line 783
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/altbeacon/beacon/BeaconParser;->longToByteArray(JIZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static longToByteArray(JIZ)[B
    .locals 12
    .param p0, "longValue"    # J
    .param p2, "length"    # I
    .param p3, "bigEndian"    # Z

    .prologue
    .line 787
    new-array v1, p2, [B

    .line 788
    .local v1, "array":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 789
    if-eqz p3, :cond_0

    move v0, v2

    .line 790
    .local v0, "adjustedI":I
    :goto_1
    const-wide/16 v10, 0xff

    sub-int v3, p2, v0

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x8

    shl-long v4, v10, v3

    .line 791
    .local v4, "mask":J
    sub-int v3, p2, v0

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x8

    int-to-long v6, v3

    .line 792
    .local v6, "shift":J
    and-long v10, p0, v4

    long-to-int v3, v6

    shr-long v8, v10, v3

    .line 793
    .local v8, "value":J
    long-to-int v3, v8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 788
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 789
    .end local v0    # "adjustedI":I
    .end local v4    # "mask":J
    .end local v6    # "shift":J
    .end local v8    # "value":J
    :cond_0
    sub-int v3, p2, v2

    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    .line 795
    :cond_1
    return-object v1
.end method


# virtual methods
.method public addExtraDataParser(Lorg/altbeacon/beacon/BeaconParser;)Z
    .locals 1
    .param p1, "extraDataParser"    # Lorg/altbeacon/beacon/BeaconParser;

    .prologue
    .line 298
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/altbeacon/beacon/BeaconParser;->mExtraFrame:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->extraParsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fromScanData([BILandroid/bluetooth/BluetoothDevice;)Lorg/altbeacon/beacon/Beacon;
    .locals 1
    .param p1, "scanData"    # [B
    .param p2, "rssi"    # I
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 416
    new-instance v0, Lorg/altbeacon/beacon/Beacon;

    invoke-direct {v0}, Lorg/altbeacon/beacon/Beacon;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/altbeacon/beacon/BeaconParser;->fromScanData([BILandroid/bluetooth/BluetoothDevice;Lorg/altbeacon/beacon/Beacon;)Lorg/altbeacon/beacon/Beacon;

    move-result-object v0

    return-object v0
.end method

.method protected fromScanData([BILandroid/bluetooth/BluetoothDevice;Lorg/altbeacon/beacon/Beacon;)Lorg/altbeacon/beacon/Beacon;
    .locals 34
    .param p1, "bytesToProcess"    # [B
    .param p2, "rssi"    # I
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    .prologue
    .line 420
    new-instance v6, Lorg/altbeacon/bluetooth/BleAdvertisement;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/altbeacon/bluetooth/BleAdvertisement;-><init>([B)V

    .line 421
    .local v6, "advert":Lorg/altbeacon/bluetooth/BleAdvertisement;
    const/16 v19, 0x0

    .line 422
    .local v19, "parseFailed":Z
    const/16 v22, 0x0

    .line 423
    .local v22, "pduToParse":Lorg/altbeacon/bluetooth/Pdu;
    const/16 v25, 0x0

    .line 424
    .local v25, "startByte":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v14, "identifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/altbeacon/beacon/Identifier;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v9, "dataFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v6}, Lorg/altbeacon/bluetooth/BleAdvertisement;->getPdus()Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_0
    :goto_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/altbeacon/bluetooth/Pdu;

    .line 428
    .local v21, "pdu":Lorg/altbeacon/bluetooth/Pdu;
    invoke-virtual/range {v21 .. v21}, Lorg/altbeacon/bluetooth/Pdu;->getType()B

    move-result v29

    const/16 v30, 0x16

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1

    .line 429
    invoke-virtual/range {v21 .. v21}, Lorg/altbeacon/bluetooth/Pdu;->getType()B

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    .line 430
    :cond_1
    move-object/from16 v22, v21

    .line 431
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 432
    const-string/jumbo v28, "BeaconParser"

    const-string/jumbo v29, "Processing pdu type %02X: %s with startIndex: %d, endIndex: %d"

    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v21 .. v21}, Lorg/altbeacon/bluetooth/Pdu;->getType()B

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    invoke-static/range {p1 .. p1}, Lorg/altbeacon/beacon/BeaconParser;->bytesToHex([B)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    invoke-virtual/range {v21 .. v21}, Lorg/altbeacon/bluetooth/Pdu;->getStartIndex()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x3

    invoke-virtual/range {v21 .. v21}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v28 .. v30}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    .end local v21    # "pdu":Lorg/altbeacon/bluetooth/Pdu;
    :cond_2
    if-nez v22, :cond_6

    .line 443
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v28

    if-eqz v28, :cond_3

    .line 444
    const-string/jumbo v28, "BeaconParser"

    const-string/jumbo v29, "No PDUs to process in this packet."

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v28 .. v30}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    :cond_3
    const/16 v19, 0x1

    .line 575
    :cond_4
    :goto_1
    if-eqz v19, :cond_1a

    .line 576
    const/16 p4, 0x0

    .line 612
    :goto_2
    return-object p4

    .line 437
    .restart local v21    # "pdu":Lorg/altbeacon/bluetooth/Pdu;
    :cond_5
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 438
    const-string/jumbo v29, "BeaconParser"

    const-string/jumbo v30, "Ignoring pdu type %02X"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v21 .. v21}, Lorg/altbeacon/bluetooth/Pdu;->getType()B

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v29 .. v31}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 449
    .end local v21    # "pdu":Lorg/altbeacon/bluetooth/Pdu;
    :cond_6
    const/16 v24, 0x0

    .line 450
    .local v24, "serviceUuidBytes":[B
    invoke-virtual/range {p0 .. p0}, Lorg/altbeacon/beacon/BeaconParser;->getMatchingBeaconTypeCode()Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    sub-int v30, v30, v31

    add-int/lit8 v30, v30, 0x1

    invoke-static/range {v28 .. v30}, Lorg/altbeacon/beacon/BeaconParser;->longToByteArray(JI)[B

    move-result-object v27

    .line 451
    .local v27, "typeCodeBytes":[B
    invoke-virtual/range {p0 .. p0}, Lorg/altbeacon/beacon/BeaconParser;->getServiceUuid()Ljava/lang/Long;

    move-result-object v28

    if-eqz v28, :cond_7

    .line 452
    invoke-virtual/range {p0 .. p0}, Lorg/altbeacon/beacon/BeaconParser;->getServiceUuid()Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidEndOffset:Ljava/lang/Integer;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidStartOffset:Ljava/lang/Integer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    sub-int v30, v30, v31

    add-int/lit8 v30, v30, 0x1

    const/16 v31, 0x0

    invoke-static/range {v28 .. v31}, Lorg/altbeacon/beacon/BeaconParser;->longToByteArray(JIZ)[B

    move-result-object v24

    .line 454
    :cond_7
    invoke-virtual/range {v22 .. v22}, Lorg/altbeacon/bluetooth/Pdu;->getStartIndex()I

    move-result v25

    .line 455
    const/16 v20, 0x0

    .line 457
    .local v20, "patternFound":Z
    invoke-virtual/range {p0 .. p0}, Lorg/altbeacon/beacon/BeaconParser;->getServiceUuid()Ljava/lang/Long;

    move-result-object v28

    if-nez v28, :cond_f

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    add-int v28, v28, v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lorg/altbeacon/beacon/BeaconParser;->byteArraysMatch([BI[B)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 459
    const/16 v20, 0x1

    .line 468
    :cond_8
    :goto_3
    if-nez v20, :cond_11

    .line 470
    invoke-virtual/range {p0 .. p0}, Lorg/altbeacon/beacon/BeaconParser;->getServiceUuid()Ljava/lang/Long;

    move-result-object v28

    if-nez v28, :cond_10

    .line 471
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v28

    if-eqz v28, :cond_9

    .line 472
    const-string/jumbo v28, "BeaconParser"

    const-string/jumbo v29, "This is not a matching Beacon advertisement. (Was expecting %s.  The bytes I see are: %s"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    .line 473
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    .line 474
    invoke-static/range {p1 .. p1}, Lorg/altbeacon/beacon/BeaconParser;->bytesToHex([B)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    .line 472
    invoke-static/range {v28 .. v30}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    :cond_9
    :goto_4
    const/16 v19, 0x1

    .line 489
    const/16 p4, 0x0

    .line 498
    :cond_a
    :goto_5
    if-eqz v20, :cond_4

    .line 499
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mLayoutSize:Ljava/lang/Integer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    add-int v29, v29, v25

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mAllowPduOverflow:Ljava/lang/Boolean;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_c

    .line 503
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v28

    if-eqz v28, :cond_b

    .line 504
    const-string/jumbo v28, "BeaconParser"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "Expanding buffer because it is too short to parse: "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ", needed: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mLayoutSize:Ljava/lang/Integer;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    add-int v30, v30, v25

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v28 .. v30}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mLayoutSize:Ljava/lang/Integer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    add-int v28, v28, v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/altbeacon/beacon/BeaconParser;->ensureMaxSize([BI)[B

    move-result-object p1

    .line 508
    :cond_c
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v12, v0, :cond_14

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    add-int v11, v28, v25

    .line 511
    .local v11, "endIndex":I
    invoke-virtual/range {v22 .. v22}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v28

    move/from16 v0, v28

    if-le v11, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierVariableLengthFlags:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Boolean;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_12

    .line 512
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 513
    const-string/jumbo v28, "BeaconParser"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "Need to truncate identifier by "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v30

    sub-int v30, v11, v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v28 .. v30}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    add-int v29, v28, v25

    invoke-virtual/range {v22 .. v22}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v28

    add-int/lit8 v30, v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierLittleEndianFlags:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Boolean;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lorg/altbeacon/beacon/Identifier;->fromBytes([BIIZ)Lorg/altbeacon/beacon/Identifier;

    move-result-object v13

    .line 518
    .local v13, "identifier":Lorg/altbeacon/beacon/Identifier;
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    .end local v13    # "identifier":Lorg/altbeacon/beacon/Identifier;
    :cond_e
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6

    .line 462
    .end local v11    # "endIndex":I
    .end local v12    # "i":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidStartOffset:Ljava/lang/Integer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    add-int v28, v28, v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lorg/altbeacon/beacon/BeaconParser;->byteArraysMatch([BI[B)Z

    move-result v28

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    move-object/from16 v28, v0

    .line 463
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    add-int v28, v28, v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lorg/altbeacon/beacon/BeaconParser;->byteArraysMatch([BI[B)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 464
    const/16 v20, 0x1

    goto/16 :goto_3

    .line 478
    :cond_10
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v28

    if-eqz v28, :cond_9

    .line 479
    const-string/jumbo v28, "BeaconParser"

    const-string/jumbo v29, "This is not a matching Beacon advertisement. Was expecting %s at offset %d and %s at offset %d.  The bytes I see are: %s"

    const/16 v30, 0x5

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    .line 481
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidStartOffset:Ljava/lang/Integer;

    move-object/from16 v32, v0

    .line 482
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    add-int v32, v32, v25

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    .line 483
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    move-object/from16 v32, v0

    .line 484
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    add-int v32, v32, v25

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x4

    .line 485
    invoke-static/range {p1 .. p1}, Lorg/altbeacon/beacon/BeaconParser;->bytesToHex([B)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    .line 479
    invoke-static/range {v28 .. v30}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 491
    :cond_11
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v28

    if-eqz v28, :cond_a

    .line 492
    const-string/jumbo v28, "BeaconParser"

    const-string/jumbo v29, "This is a recognized beacon advertisement -- %s seen"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    .line 493
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    .line 492
    invoke-static/range {v28 .. v30}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    const-string/jumbo v28, "BeaconParser"

    const-string/jumbo v29, "Bytes are: %s"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {p1 .. p1}, Lorg/altbeacon/beacon/BeaconParser;->bytesToHex([B)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v28 .. v30}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 520
    .restart local v11    # "endIndex":I
    .restart local v12    # "i":I
    :cond_12
    invoke-virtual/range {v22 .. v22}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v28

    move/from16 v0, v28

    if-le v11, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mAllowPduOverflow:Ljava/lang/Boolean;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-nez v28, :cond_13

    .line 521
    const/16 v19, 0x1

    .line 522
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v28

    if-eqz v28, :cond_e

    .line 523
    const-string/jumbo v28, "BeaconParser"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "Cannot parse identifier "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " because PDU is too short.  endIndex: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " PDU endIndex: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v22 .. v22}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v28 .. v30}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 527
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    add-int v29, v28, v25

    add-int/lit8 v30, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierLittleEndianFlags:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Boolean;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lorg/altbeacon/beacon/Identifier;->fromBytes([BIIZ)Lorg/altbeacon/beacon/Identifier;

    move-result-object v13

    .line 528
    .restart local v13    # "identifier":Lorg/altbeacon/beacon/Identifier;
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 531
    .end local v11    # "endIndex":I
    .end local v13    # "identifier":Lorg/altbeacon/beacon/Identifier;
    :cond_14
    const/4 v12, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v12, v0, :cond_17

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    add-int v11, v28, v25

    .line 533
    .restart local v11    # "endIndex":I
    invoke-virtual/range {v22 .. v22}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v28

    move/from16 v0, v28

    if-le v11, v0, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mAllowPduOverflow:Ljava/lang/Boolean;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-nez v28, :cond_16

    .line 534
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v28

    if-eqz v28, :cond_15

    .line 535
    const-string/jumbo v28, "BeaconParser"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "Cannot parse data field "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " because PDU is too short.  endIndex: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " PDU endIndex: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v22 .. v22}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ".  Setting value to 0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v28 .. v30}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    :cond_15
    new-instance v28, Ljava/lang/Long;

    const-wide/16 v30, 0x0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_8

    .line 540
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mDataStartOffsets:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    add-int v29, v28, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mDataLittleEndianFlags:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Boolean;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v11, v3}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToFormattedString([BIIZ)Ljava/lang/String;

    move-result-object v10

    .line 541
    .local v10, "dataString":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 545
    .end local v10    # "dataString":Ljava/lang/String;
    .end local v11    # "endIndex":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mPowerStartOffset:Ljava/lang/Integer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    add-int v11, v28, v25

    .line 549
    .restart local v11    # "endIndex":I
    :try_start_0
    invoke-virtual/range {v22 .. v22}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v28

    move/from16 v0, v28

    if-le v11, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mAllowPduOverflow:Ljava/lang/Boolean;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-nez v28, :cond_18

    .line 550
    const/16 v19, 0x1

    .line 551
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 552
    const-string/jumbo v28, "BeaconParser"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "Cannot parse power field because PDU is too short.  endIndex: "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " PDU endIndex: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v22 .. v22}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v28 .. v30}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 570
    :catch_0
    move-exception v28

    goto/16 :goto_1

    .line 556
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mPowerStartOffset:Ljava/lang/Integer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    add-int v28, v28, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    add-int v29, v29, v25

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToFormattedString([BIIZ)Ljava/lang/String;

    move-result-object v23

    .line 557
    .local v23, "powerString":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mDBmCorrection:Ljava/lang/Integer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    add-int v26, v28, v29

    .line 559
    .local v26, "txPower":I
    const/16 v28, 0x7f

    move/from16 v0, v26

    move/from16 v1, v28

    if-le v0, v1, :cond_19

    .line 560
    move/from16 v0, v26

    add-int/lit16 v0, v0, -0x100

    move/from16 v26, v0

    .line 562
    :cond_19
    move/from16 v0, v26

    move-object/from16 v1, p4

    iput v0, v1, Lorg/altbeacon/beacon/Beacon;->mTxPower:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .end local v23    # "powerString":Ljava/lang/String;
    .end local v26    # "txPower":I
    :catch_1
    move-exception v28

    goto/16 :goto_1

    .line 580
    .end local v11    # "endIndex":I
    .end local v12    # "i":I
    .end local v20    # "patternFound":Z
    .end local v24    # "serviceUuidBytes":[B
    .end local v27    # "typeCodeBytes":[B
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    add-int v28, v28, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    add-int v29, v29, v25

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToFormattedString([BIIZ)Ljava/lang/String;

    move-result-object v8

    .line 581
    .local v8, "beaconTypeString":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 585
    .local v7, "beaconTypeCode":I
    add-int/lit8 v28, v25, 0x1

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToFormattedString([BIIZ)Ljava/lang/String;

    move-result-object v17

    .line 586
    .local v17, "manufacturerString":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 588
    .local v16, "manufacturer":I
    const/4 v15, 0x0

    .line 589
    .local v15, "macAddress":Ljava/lang/String;
    const/16 v18, 0x0

    .line 590
    .local v18, "name":Ljava/lang/String;
    if-eqz p3, :cond_1b

    .line 591
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v18

    .line 595
    :cond_1b
    move-object/from16 v0, p4

    iput-object v14, v0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    .line 596
    move-object/from16 v0, p4

    iput-object v9, v0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    .line 597
    move/from16 v0, p2

    move-object/from16 v1, p4

    iput v0, v1, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    .line 598
    move-object/from16 v0, p4

    iput v7, v0, Lorg/altbeacon/beacon/Beacon;->mBeaconTypeCode:I

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuid:Ljava/lang/Long;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1d

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuid:Ljava/lang/Long;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p4

    iput v0, v1, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    .line 606
    :goto_a
    move-object/from16 v0, p4

    iput-object v15, v0, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    .line 607
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    iput-object v0, v1, Lorg/altbeacon/beacon/Beacon;->mBluetoothName:Ljava/lang/String;

    .line 608
    move/from16 v0, v16

    move-object/from16 v1, p4

    iput v0, v1, Lorg/altbeacon/beacon/Beacon;->mManufacturer:I

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifier:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p4

    iput-object v0, v1, Lorg/altbeacon/beacon/Beacon;->mParserIdentifier:Ljava/lang/String;

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->extraParsers:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    if-gtz v28, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mExtraFrame:Ljava/lang/Boolean;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_1e

    :cond_1c
    const/16 v28, 0x1

    :goto_b
    move/from16 v0, v28

    move-object/from16 v1, p4

    iput-boolean v0, v1, Lorg/altbeacon/beacon/Beacon;->mMultiFrameBeacon:Z

    goto/16 :goto_2

    .line 603
    :cond_1d
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p4

    iput v0, v1, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    goto :goto_a

    .line 610
    :cond_1e
    const/16 v28, 0x0

    goto :goto_b
.end method

.method public getBeaconAdvertisementData(Lorg/altbeacon/beacon/Beacon;)[B
    .locals 24
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 624
    invoke-virtual/range {p1 .. p1}, Lorg/altbeacon/beacon/Beacon;->getIdentifiers()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lorg/altbeacon/beacon/BeaconParser;->getIdentifierCount()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 625
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "Beacon has "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/altbeacon/beacon/Beacon;->getIdentifiers()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " identifiers but format requires "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lorg/altbeacon/beacon/BeaconParser;->getIdentifierCount()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 628
    :cond_0
    const/16 v16, -0x1

    .line 629
    .local v16, "lastIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-ltz v19, :cond_1

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 632
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v16

    if-le v0, v1, :cond_2

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 635
    :cond_2
    const/4 v14, 0x0

    .local v14, "identifierNum":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v14, v0, :cond_4

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v16

    if-le v0, v1, :cond_3

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 635
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 640
    :cond_4
    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v14, v0, :cond_6

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v16

    if-le v0, v1, :cond_5

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 640
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 647
    :cond_6
    const/4 v5, 0x0

    .line 648
    .local v5, "adjustedIdentifiersLength":I
    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v14, v0, :cond_8

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierVariableLengthFlags:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    sub-int v19, v20, v19

    add-int/lit8 v11, v19, 0x1

    .line 651
    .local v11, "declaredIdentifierLength":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/altbeacon/beacon/Beacon;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/altbeacon/beacon/Identifier;->getByteCount()I

    move-result v4

    .line 652
    .local v4, "actualIdentifierLength":I
    add-int/2addr v5, v4

    .line 653
    sub-int/2addr v5, v11

    .line 648
    .end local v4    # "actualIdentifierLength":I
    .end local v11    # "declaredIdentifierLength":I
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 656
    :cond_8
    add-int v16, v16, v5

    .line 658
    add-int/lit8 v19, v16, 0x1

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v19

    new-array v6, v0, [B

    .line 659
    .local v6, "advertisingBytes":[B
    invoke-virtual/range {p0 .. p0}, Lorg/altbeacon/beacon/BeaconParser;->getMatchingBeaconTypeCode()Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .local v15, "index":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    if-gt v15, v0, :cond_9

    .line 663
    invoke-virtual/range {p0 .. p0}, Lorg/altbeacon/beacon/BeaconParser;->getMatchingBeaconTypeCode()Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    sub-int v19, v19, v15

    mul-int/lit8 v19, v19, 0x8

    shr-long v20, v20, v19

    const-wide/16 v22, 0xff

    and-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v18, v0

    .line 664
    .local v18, "value":B
    add-int/lit8 v19, v15, -0x2

    aput-byte v18, v6, v19

    .line 662
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 668
    .end local v18    # "value":B
    :cond_9
    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v14, v0, :cond_11

    .line 669
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/altbeacon/beacon/Beacon;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierLittleEndianFlags:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-nez v19, :cond_b

    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/Identifier;->toByteArrayOfSpecifiedEndianness(Z)[B

    move-result-object v13

    .line 673
    .local v13, "identifierBytes":[B
    array-length v0, v13

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/altbeacon/beacon/BeaconParser;->getIdentifierByteCount(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierVariableLengthFlags:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-nez v19, :cond_a

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierLittleEndianFlags:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 678
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/altbeacon/beacon/BeaconParser;->getIdentifierByteCount(I)I

    move-result v19

    move/from16 v0, v19

    invoke-static {v13, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    .line 687
    :cond_a
    :goto_6
    const-string/jumbo v19, "BeaconParser"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "Expanded identifier because it is too short.  It is now: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v15

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    array-length v0, v13

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-gt v15, v0, :cond_10

    .line 704
    add-int/lit8 v20, v15, -0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    sub-int v19, v15, v19

    aget-byte v19, v13, v19

    aput-byte v19, v6, v20

    .line 703
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 669
    .end local v13    # "identifierBytes":[B
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 682
    .restart local v13    # "identifierBytes":[B
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/altbeacon/beacon/BeaconParser;->getIdentifierByteCount(I)I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 683
    .local v17, "newIdentifierBytes":[B
    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/altbeacon/beacon/BeaconParser;->getIdentifierByteCount(I)I

    move-result v20

    array-length v0, v13

    move/from16 v21, v0

    sub-int v20, v20, v21

    array-length v0, v13

    move/from16 v21, v0

    move/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v13, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 684
    move-object/from16 v13, v17

    goto/16 :goto_6

    .line 689
    .end local v17    # "newIdentifierBytes":[B
    :cond_d
    array-length v0, v13

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/altbeacon/beacon/BeaconParser;->getIdentifierByteCount(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_f

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierLittleEndianFlags:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 692
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/altbeacon/beacon/BeaconParser;->getIdentifierByteCount(I)I

    move-result v19

    array-length v0, v13

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/altbeacon/beacon/BeaconParser;->getIdentifierByteCount(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v13, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    .line 698
    :goto_9
    const-string/jumbo v19, "BeaconParser"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "Truncated identifier because it is too long.  It is now: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 696
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/altbeacon/beacon/BeaconParser;->getIdentifierByteCount(I)I

    move-result v19

    move/from16 v0, v19

    invoke-static {v13, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    goto :goto_9

    .line 701
    :cond_f
    const-string/jumbo v19, "BeaconParser"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "Identifier size is just right: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 668
    :cond_10
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 710
    .end local v13    # "identifierBytes":[B
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mPowerStartOffset:Ljava/lang/Integer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mPowerStartOffset:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v15

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    if-gt v15, v0, :cond_12

    .line 712
    add-int/lit8 v19, v15, -0x2

    invoke-virtual/range {p1 .. p1}, Lorg/altbeacon/beacon/Beacon;->getTxPower()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mPowerStartOffset:Ljava/lang/Integer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    sub-int v21, v15, v21

    mul-int/lit8 v21, v21, 0x8

    shr-int v20, v20, v21

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v6, v19

    .line 711
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 717
    :cond_12
    const/4 v10, 0x0

    .local v10, "dataFieldNum":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mDataStartOffsets:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_15

    .line 718
    invoke-virtual/range {p1 .. p1}, Lorg/altbeacon/beacon/Beacon;->getDataFields()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 719
    .local v8, "dataField":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mDataStartOffsets:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    sub-int v7, v20, v19

    .line 720
    .local v7, "dataFieldLength":I
    const/4 v15, 0x0

    :goto_c
    if-gt v15, v7, :cond_14

    .line 721
    move v12, v15

    .line 722
    .local v12, "endianCorrectedIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mDataLittleEndianFlags:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-nez v19, :cond_13

    .line 723
    sub-int v12, v7, v15

    .line 725
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BeaconParser;->mDataStartOffsets:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    add-int/lit8 v19, v19, -0x2

    add-int v19, v19, v12

    mul-int/lit8 v20, v15, 0x8

    shr-long v20, v8, v20

    const-wide/16 v22, 0xff

    and-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v6, v19

    .line 720
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 717
    .end local v12    # "endianCorrectedIndex":I
    :cond_14
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_b

    .line 728
    .end local v7    # "dataFieldLength":I
    .end local v8    # "dataField":J
    :cond_15
    return-object v6
.end method

.method public getDataFieldCount()I
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataStartOffsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExtraDataParsers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/BeaconParser;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 309
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->extraParsers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getHardwareAssistManufacturers()[I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mHardwareAssistManufacturers:[I

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifierByteCount(I)I
    .locals 2
    .param p1, "identifierNum"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 742
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getIdentifierCount()I
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMServiceUuidStartOffset()I
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidStartOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMatchingBeaconTypeCode()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCode:Ljava/lang/Long;

    return-object v0
.end method

.method public getMatchingBeaconTypeCodeEndOffset()I
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMatchingBeaconTypeCodeStartOffset()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPowerCorrection()I
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDBmCorrection:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getServiceUuid()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuid:Ljava/lang/Long;

    return-object v0
.end method

.method public getServiceUuidEndOffset()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidEndOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 901
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCode:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierLittleEndianFlags:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataStartOffsets:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataLittleEndianFlags:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierVariableLengthFlags:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidStartOffset:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidEndOffset:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuid:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mExtraFrame:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerStartOffset:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mDBmCorrection:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mLayoutSize:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mAllowPduOverflow:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifier:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mHardwareAssistManufacturers:[I

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->extraParsers:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAllowPduOverflow(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .prologue
    .line 353
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconParser;->mAllowPduOverflow:Ljava/lang/Boolean;

    .line 354
    return-void
.end method

.method public setBeaconLayout(Ljava/lang/String;)Lorg/altbeacon/beacon/BeaconParser;
    .locals 14
    .param p1, "beaconLayout"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 169
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Parsing beacon layout: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string/jumbo v10, ","

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 172
    .local v8, "terms":[Ljava/lang/String;
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lorg/altbeacon/beacon/BeaconParser;->mExtraFrame:Ljava/lang/Boolean;

    .line 174
    array-length v11, v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_8

    aget-object v7, v8, v10

    .line 175
    .local v7, "term":Ljava/lang/String;
    const/4 v2, 0x0

    .line 177
    .local v2, "found":Z
    sget-object v12, Lorg/altbeacon/beacon/BeaconParser;->I_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 178
    .local v5, "matcher":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 179
    const/4 v2, 0x1

    .line 181
    const/4 v12, 0x1

    :try_start_0
    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 182
    .local v6, "startOffset":I
    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 183
    .local v1, "endOffset":I
    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "l"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 184
    .local v4, "littleEndian":Ljava/lang/Boolean;
    iget-object v12, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierLittleEndianFlags:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "v"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 186
    .local v9, "variableLength":Ljava/lang/Boolean;
    iget-object v12, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierVariableLengthFlags:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v12, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v12, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 190
    .end local v1    # "endOffset":I
    .end local v4    # "littleEndian":Ljava/lang/Boolean;
    .end local v6    # "startOffset":I
    .end local v9    # "variableLength":Ljava/lang/Boolean;
    :catch_0
    move-exception v10

    new-instance v10, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Cannot parse integer byte offset in term: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 193
    :cond_0
    sget-object v12, Lorg/altbeacon/beacon/BeaconParser;->D_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 194
    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 195
    const/4 v2, 0x1

    .line 197
    const/4 v12, 0x1

    :try_start_1
    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 198
    .restart local v6    # "startOffset":I
    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 199
    .restart local v1    # "endOffset":I
    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "l"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 200
    .restart local v4    # "littleEndian":Ljava/lang/Boolean;
    iget-object v12, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataLittleEndianFlags:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v12, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataStartOffsets:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v12, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 204
    .end local v1    # "endOffset":I
    .end local v4    # "littleEndian":Ljava/lang/Boolean;
    .end local v6    # "startOffset":I
    :catch_1
    move-exception v10

    new-instance v10, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Cannot parse integer byte offset in term: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 207
    :cond_1
    sget-object v12, Lorg/altbeacon/beacon/BeaconParser;->P_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 208
    :goto_3
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 209
    const/4 v2, 0x1

    .line 211
    const/4 v12, 0x1

    :try_start_2
    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 212
    .restart local v6    # "startOffset":I
    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 213
    .restart local v1    # "endOffset":I
    const/4 v0, 0x0

    .line 214
    .local v0, "dBmCorrection":I
    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 215
    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 217
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, p0, Lorg/altbeacon/beacon/BeaconParser;->mDBmCorrection:Ljava/lang/Integer;

    .line 218
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerStartOffset:Ljava/lang/Integer;

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 221
    .end local v0    # "dBmCorrection":I
    .end local v1    # "endOffset":I
    .end local v6    # "startOffset":I
    :catch_2
    move-exception v10

    new-instance v10, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Cannot parse integer power byte offset in term: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 224
    :cond_3
    sget-object v12, Lorg/altbeacon/beacon/BeaconParser;->M_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 225
    :goto_4
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 226
    const/4 v2, 0x1

    .line 228
    const/4 v12, 0x1

    :try_start_3
    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 229
    .restart local v6    # "startOffset":I
    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 230
    .restart local v1    # "endOffset":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    .line 235
    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "hexString":Ljava/lang/String;
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "0x"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCode:Ljava/lang/Long;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 240
    :catch_3
    move-exception v10

    new-instance v10, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Cannot parse beacon type code: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " in term: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 233
    .end local v1    # "endOffset":I
    .end local v3    # "hexString":Ljava/lang/String;
    .end local v6    # "startOffset":I
    :catch_4
    move-exception v10

    new-instance v10, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Cannot parse integer byte offset in term: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 243
    :cond_4
    sget-object v12, Lorg/altbeacon/beacon/BeaconParser;->S_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 244
    :goto_5
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 245
    const/4 v2, 0x1

    .line 247
    const/4 v12, 0x1

    :try_start_5
    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 248
    .restart local v6    # "startOffset":I
    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 249
    .restart local v1    # "endOffset":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidStartOffset:Ljava/lang/Integer;

    .line 250
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidEndOffset:Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_6

    .line 254
    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 256
    .restart local v3    # "hexString":Ljava/lang/String;
    :try_start_6
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "0x"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuid:Ljava/lang/Long;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    .line 259
    :catch_5
    move-exception v10

    new-instance v10, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Cannot parse serviceUuid: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " in term: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 252
    .end local v1    # "endOffset":I
    .end local v3    # "hexString":Ljava/lang/String;
    .end local v6    # "startOffset":I
    :catch_6
    move-exception v10

    new-instance v10, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Cannot parse integer byte offset in term: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 262
    :cond_5
    sget-object v12, Lorg/altbeacon/beacon/BeaconParser;->X_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 263
    :goto_6
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 264
    const/4 v2, 0x1

    .line 265
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iput-object v12, p0, Lorg/altbeacon/beacon/BeaconParser;->mExtraFrame:Ljava/lang/Boolean;

    goto :goto_6

    .line 268
    :cond_6
    if-nez v2, :cond_7

    .line 269
    const-string/jumbo v10, "BeaconParser"

    const-string/jumbo v11, "cannot parse term %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-static {v10, v11, v12}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    new-instance v10, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Cannot parse beacon layout term: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 174
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 273
    .end local v2    # "found":Z
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    .end local v7    # "term":Ljava/lang/String;
    :cond_8
    iget-object v10, p0, Lorg/altbeacon/beacon/BeaconParser;->mExtraFrame:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_c

    .line 275
    iget-object v10, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_a

    .line 276
    :cond_9
    new-instance v10, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    const-string/jumbo v11, "You must supply at least one identifier offset with a prefix of \'i\'"

    invoke-direct {v10, v11}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 278
    :cond_a
    iget-object v10, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerStartOffset:Ljava/lang/Integer;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    if-nez v10, :cond_c

    .line 279
    :cond_b
    new-instance v10, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    const-string/jumbo v11, "You must supply a power byte offset with a prefix of \'p\'"

    invoke-direct {v10, v11}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 282
    :cond_c
    iget-object v10, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    if-nez v10, :cond_e

    .line 283
    :cond_d
    new-instance v10, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    const-string/jumbo v11, "You must supply a matching beacon type expression with a prefix of \'m\'"

    invoke-direct {v10, v11}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 285
    :cond_e
    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconParser;->calculateLayoutSize()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, p0, Lorg/altbeacon/beacon/BeaconParser;->mLayoutSize:Ljava/lang/Integer;

    .line 286
    return-object p0
.end method

.method public setHardwareAssistManufacturerCodes([I)V
    .locals 0
    .param p1, "manufacturers"    # [I

    .prologue
    .line 343
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconParser;->mHardwareAssistManufacturers:[I

    .line 344
    return-void
.end method

.method public setMatchingBeaconTypeCode(Ljava/lang/Long;)Lorg/altbeacon/beacon/BeaconParser;
    .locals 0
    .param p1, "typeCode"    # Ljava/lang/Long;

    .prologue
    .line 732
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCode:Ljava/lang/Long;

    .line 733
    return-object p0
.end method
