.class public final Lgyy;
.super Ljava/io/Writer;
.source "SerializeWriter.java"


# static fields
.field public static final e:[I

.field static final f:[C

.field static final g:[C

.field static final h:[C

.field static final i:[C

.field static final j:[B

.field static final k:[B

.field static final l:[C

.field public static final m:[C

.field private static final n:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# instance fields
.field public a:[C

.field public b:I

.field public c:I

.field public final d:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x5c

    const/16 v5, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x4

    .line 40
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lgyy;->n:Ljava/lang/ThreadLocal;

    .line 984
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    sput-object v1, Lgyy;->e:[I

    .line 1036
    const/16 v1, 0x24

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, Lgyy;->f:[C

    .line 1039
    const/16 v1, 0x64

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    sput-object v1, Lgyy;->g:[C

    .line 1045
    const/16 v1, 0x64

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    sput-object v1, Lgyy;->h:[C

    .line 1052
    const/16 v1, 0x60

    new-array v1, v1, [C

    fill-array-data v1, :array_4

    sput-object v1, Lgyy;->i:[C

    .line 1059
    const/16 v1, 0xa1

    new-array v1, v1, [B

    sput-object v1, Lgyy;->j:[B

    .line 1060
    const/16 v1, 0xa1

    new-array v1, v1, [B

    sput-object v1, Lgyy;->k:[B

    .line 1062
    const/16 v1, 0x5d

    new-array v1, v1, [C

    sput-object v1, Lgyy;->l:[C

    .line 1064
    sget-object v1, Lgyy;->j:[B

    aput-byte v4, v1, v7

    .line 1065
    sget-object v1, Lgyy;->j:[B

    aput-byte v4, v1, v3

    .line 1066
    sget-object v1, Lgyy;->j:[B

    const/4 v2, 0x2

    aput-byte v4, v1, v2

    .line 1067
    sget-object v1, Lgyy;->j:[B

    const/4 v2, 0x3

    aput-byte v4, v1, v2

    .line 1068
    sget-object v1, Lgyy;->j:[B

    aput-byte v4, v1, v4

    .line 1069
    sget-object v1, Lgyy;->j:[B

    const/4 v2, 0x5

    aput-byte v4, v1, v2

    .line 1070
    sget-object v1, Lgyy;->j:[B

    const/4 v2, 0x6

    aput-byte v4, v1, v2

    .line 1071
    sget-object v1, Lgyy;->j:[B

    const/4 v2, 0x7

    aput-byte v4, v1, v2

    .line 1072
    sget-object v1, Lgyy;->j:[B

    const/16 v2, 0x8

    aput-byte v3, v1, v2

    .line 1073
    sget-object v1, Lgyy;->j:[B

    const/16 v2, 0x9

    aput-byte v3, v1, v2

    .line 1074
    sget-object v1, Lgyy;->j:[B

    aput-byte v3, v1, v5

    .line 1075
    sget-object v1, Lgyy;->j:[B

    const/16 v2, 0xb

    aput-byte v4, v1, v2

    .line 1076
    sget-object v1, Lgyy;->j:[B

    const/16 v2, 0xc

    aput-byte v3, v1, v2

    .line 1077
    sget-object v1, Lgyy;->j:[B

    const/16 v2, 0xd

    aput-byte v3, v1, v2

    .line 1078
    sget-object v1, Lgyy;->j:[B

    const/16 v2, 0x22

    aput-byte v3, v1, v2

    .line 1079
    sget-object v1, Lgyy;->j:[B

    aput-byte v3, v1, v6

    .line 1081
    sget-object v1, Lgyy;->k:[B

    aput-byte v4, v1, v7

    .line 1082
    sget-object v1, Lgyy;->k:[B

    aput-byte v4, v1, v3

    .line 1083
    sget-object v1, Lgyy;->k:[B

    const/4 v2, 0x2

    aput-byte v4, v1, v2

    .line 1084
    sget-object v1, Lgyy;->k:[B

    const/4 v2, 0x3

    aput-byte v4, v1, v2

    .line 1085
    sget-object v1, Lgyy;->k:[B

    aput-byte v4, v1, v4

    .line 1086
    sget-object v1, Lgyy;->k:[B

    const/4 v2, 0x5

    aput-byte v4, v1, v2

    .line 1087
    sget-object v1, Lgyy;->k:[B

    const/4 v2, 0x6

    aput-byte v4, v1, v2

    .line 1088
    sget-object v1, Lgyy;->k:[B

    const/4 v2, 0x7

    aput-byte v4, v1, v2

    .line 1089
    sget-object v1, Lgyy;->k:[B

    const/16 v2, 0x8

    aput-byte v3, v1, v2

    .line 1090
    sget-object v1, Lgyy;->k:[B

    const/16 v2, 0x9

    aput-byte v3, v1, v2

    .line 1091
    sget-object v1, Lgyy;->k:[B

    aput-byte v3, v1, v5

    .line 1092
    sget-object v1, Lgyy;->k:[B

    const/16 v2, 0xb

    aput-byte v4, v1, v2

    .line 1093
    sget-object v1, Lgyy;->k:[B

    const/16 v2, 0xc

    aput-byte v3, v1, v2

    .line 1094
    sget-object v1, Lgyy;->k:[B

    const/16 v2, 0xd

    aput-byte v3, v1, v2

    .line 1095
    sget-object v1, Lgyy;->k:[B

    aput-byte v3, v1, v6

    .line 1096
    sget-object v1, Lgyy;->k:[B

    const/16 v2, 0x27

    aput-byte v3, v1, v2

    .line 1098
    const/16 v0, 0xe

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 1099
    sget-object v1, Lgyy;->j:[B

    aput-byte v4, v1, v0

    .line 1100
    sget-object v1, Lgyy;->k:[B

    aput-byte v4, v1, v0

    .line 1098
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1103
    :cond_0
    const/16 v0, 0x7f

    :goto_1
    const/16 v1, 0xa0

    if-ge v0, v1, :cond_1

    .line 1104
    sget-object v1, Lgyy;->j:[B

    aput-byte v4, v1, v0

    .line 1105
    sget-object v1, Lgyy;->k:[B

    aput-byte v4, v1, v0

    .line 1103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1108
    :cond_1
    sget-object v1, Lgyy;->l:[C

    const/16 v2, 0x30

    aput-char v2, v1, v7

    .line 1109
    sget-object v1, Lgyy;->l:[C

    const/16 v2, 0x31

    aput-char v2, v1, v3

    .line 1110
    sget-object v1, Lgyy;->l:[C

    const/4 v2, 0x2

    const/16 v3, 0x32

    aput-char v3, v1, v2

    .line 1111
    sget-object v1, Lgyy;->l:[C

    const/4 v2, 0x3

    const/16 v3, 0x33

    aput-char v3, v1, v2

    .line 1112
    sget-object v1, Lgyy;->l:[C

    const/16 v2, 0x34

    aput-char v2, v1, v4

    .line 1113
    sget-object v1, Lgyy;->l:[C

    const/4 v2, 0x5

    const/16 v3, 0x35

    aput-char v3, v1, v2

    .line 1114
    sget-object v1, Lgyy;->l:[C

    const/4 v2, 0x6

    const/16 v3, 0x36

    aput-char v3, v1, v2

    .line 1115
    sget-object v1, Lgyy;->l:[C

    const/4 v2, 0x7

    const/16 v3, 0x37

    aput-char v3, v1, v2

    .line 1116
    sget-object v1, Lgyy;->l:[C

    const/16 v2, 0x8

    const/16 v3, 0x62

    aput-char v3, v1, v2

    .line 1117
    sget-object v1, Lgyy;->l:[C

    const/16 v2, 0x9

    const/16 v3, 0x74

    aput-char v3, v1, v2

    .line 1118
    sget-object v1, Lgyy;->l:[C

    const/16 v2, 0x6e

    aput-char v2, v1, v5

    .line 1119
    sget-object v1, Lgyy;->l:[C

    const/16 v2, 0xb

    const/16 v3, 0x76

    aput-char v3, v1, v2

    .line 1120
    sget-object v1, Lgyy;->l:[C

    const/16 v2, 0xc

    const/16 v3, 0x66

    aput-char v3, v1, v2

    .line 1121
    sget-object v1, Lgyy;->l:[C

    const/16 v2, 0xd

    const/16 v3, 0x72

    aput-char v3, v1, v2

    .line 1122
    sget-object v1, Lgyy;->l:[C

    const/16 v2, 0x22

    const/16 v3, 0x22

    aput-char v3, v1, v2

    .line 1123
    sget-object v1, Lgyy;->l:[C

    const/16 v2, 0x27

    const/16 v3, 0x27

    aput-char v3, v1, v2

    .line 1124
    sget-object v1, Lgyy;->l:[C

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    aput-char v3, v1, v2

    .line 1125
    sget-object v1, Lgyy;->l:[C

    aput-char v6, v1, v6

    .line 1128
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_5

    sput-object v1, Lgyy;->m:[C

    return-void

    .line 984
    .line 1036
    .line 1039
    .line 1045
    .line 1052
    .line 1128
    :array_0
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data

    :array_1
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
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_3
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
    .end array-data

    :array_4
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x31s
        0x30s
        0x32s
        0x30s
        0x33s
        0x30s
        0x34s
        0x30s
        0x35s
        0x30s
        0x36s
        0x30s
        0x37s
        0x30s
        0x38s
        0x30s
        0x39s
        0x30s
        0x41s
        0x30s
        0x42s
        0x30s
        0x43s
        0x30s
        0x44s
        0x30s
        0x45s
        0x30s
        0x46s
        0x31s
        0x30s
        0x31s
        0x31s
        0x31s
        0x32s
        0x31s
        0x33s
        0x31s
        0x34s
        0x31s
        0x35s
        0x31s
        0x36s
        0x31s
        0x37s
        0x31s
        0x38s
        0x31s
        0x39s
        0x31s
        0x41s
        0x31s
        0x42s
        0x31s
        0x43s
        0x31s
        0x44s
        0x31s
        0x45s
        0x31s
        0x46s
        0x32s
        0x30s
        0x32s
        0x31s
        0x32s
        0x32s
        0x32s
        0x33s
        0x32s
        0x34s
        0x32s
        0x35s
        0x32s
        0x36s
        0x32s
        0x37s
        0x32s
        0x38s
        0x32s
        0x39s
        0x32s
        0x41s
        0x32s
        0x42s
        0x32s
        0x43s
        0x32s
        0x44s
        0x32s
        0x45s
        0x32s
        0x46s
    .end array-data

    :array_5
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgyy;-><init>(Ljava/io/Writer;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 51
    iput-object p1, p0, Lgyy;->d:Ljava/io/Writer;

    .line 52
    sget v0, Lgxk;->DEFAULT_GENERATE_FEATURE:I

    iput v0, p0, Lgyy;->c:I

    .line 54
    sget-object v0, Lgyy;->n:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lgyy;->a:[C

    .line 57
    sget-object v0, Lgyy;->n:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lgyy;->a:[C

    if-nez v0, :cond_0

    .line 61
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lgyy;->a:[C

    .line 63
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "featuresValue"    # I
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 70
    iput-object p1, p0, Lgyy;->d:Ljava/io/Writer;

    .line 72
    sget-object v1, Lgyy;->n:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Lgyy;->a:[C

    .line 73
    iget-object v1, p0, Lgyy;->a:[C

    if-eqz v1, :cond_0

    .line 74
    sget-object v1, Lgyy;->n:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 77
    :cond_0
    iget-object v1, p0, Lgyy;->a:[C

    if-nez v1, :cond_1

    .line 78
    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lgyy;->a:[C

    .line 81
    :cond_1
    array-length v2, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, p3, v1

    .line 82
    .local v0, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr p2, v3

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_2
    iput p2, p0, Lgyy;->c:I

    .line 85
    return-void
.end method

.method private a(Ljava/lang/CharSequence;II)Lgyy;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 238
    if-nez p1, :cond_0

    const-string/jumbo p1, "null"

    .end local p1    # "csq":Ljava/lang/CharSequence;
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lgyy;->write(Ljava/lang/String;II)V

    .line 240
    return-object p0
.end method

.method public static a(JI[C)V
    .locals 12
    .param p0, "i"    # J
    .param p2, "index"    # I
    .param p3, "buf"    # [C

    .prologue
    .line 989
    move v0, p2

    .line 990
    .local v0, "charPos":I
    const/4 v6, 0x0

    .line 992
    .local v6, "sign":C
    const-wide/16 v8, 0x0

    cmp-long v7, p0, v8

    if-gez v7, :cond_0

    .line 993
    const/16 v6, 0x2d

    .line 994
    neg-long p0, p0

    .line 998
    :cond_0
    :goto_0
    const-wide/32 v8, 0x7fffffff

    cmp-long v7, p0, v8

    if-lez v7, :cond_1

    .line 999
    const-wide/16 v8, 0x64

    div-long v2, p0, v8

    .line 1001
    .local v2, "q":J
    const/4 v7, 0x6

    shl-long v8, v2, v7

    const/4 v7, 0x5

    shl-long v10, v2, v7

    add-long/2addr v8, v10

    const/4 v7, 0x2

    shl-long v10, v2, v7

    add-long/2addr v8, v10

    sub-long v8, p0, v8

    long-to-int v5, v8

    .line 1002
    .local v5, "r":I
    move-wide p0, v2

    .line 1003
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lgyy;->h:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 1004
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lgyy;->g:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    goto :goto_0

    .line 1009
    .end local v2    # "q":J
    .end local v5    # "r":I
    :cond_1
    long-to-int v1, p0

    .line 1010
    .local v1, "i2":I
    :goto_1
    const/high16 v7, 0x10000

    if-lt v1, v7, :cond_2

    .line 1011
    div-int/lit8 v4, v1, 0x64

    .line 1013
    .local v4, "q2":I
    shl-int/lit8 v7, v4, 0x6

    shl-int/lit8 v8, v4, 0x5

    add-int/2addr v7, v8

    shl-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    sub-int v5, v1, v7

    .line 1014
    .restart local v5    # "r":I
    move v1, v4

    .line 1015
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lgyy;->h:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 1016
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lgyy;->g:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    goto :goto_1

    .line 1022
    .end local v4    # "q2":I
    .end local v5    # "r":I
    :cond_2
    const v7, 0xcccd

    mul-int/2addr v7, v1

    ushr-int/lit8 v4, v7, 0x13

    .line 1023
    .restart local v4    # "q2":I
    shl-int/lit8 v7, v4, 0x3

    shl-int/lit8 v8, v4, 0x1

    add-int/2addr v7, v8

    sub-int v5, v1, v7

    .line 1024
    .restart local v5    # "r":I
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lgyy;->f:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 1026
    move v1, v4

    if-nez v4, :cond_2

    .line 1028
    if-eqz v6, :cond_3

    .line 1029
    add-int/lit8 v0, v0, -0x1

    aput-char v6, p3, v0

    .line 1031
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Lgyy;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 232
    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    .line 233
    .local v0, "s":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lgyy;->write(Ljava/lang/String;II)V

    .line 234
    return-object p0

    .line 232
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 168
    iget-object v2, p0, Lgyy;->a:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, 0x1

    .line 170
    .local v0, "newCapacity":I
    if-ge v0, p1, :cond_0

    .line 171
    move v0, p1

    .line 173
    :cond_0
    new-array v1, v0, [C

    .line 174
    .local v1, "newValue":[C
    iget-object v2, p0, Lgyy;->a:[C

    iget v3, p0, Lgyy;->b:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iput-object v1, p0, Lgyy;->a:[C

    .line 176
    return-void
.end method

.method public final a(J)V
    .locals 13
    .param p1, "i"    # J

    .prologue
    const-wide/16 v10, 0x0

    .line 410
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v8, p1, v8

    if-nez v8, :cond_0

    .line 411
    const-string/jumbo v8, "-9223372036854775808"

    invoke-virtual {p0, v8}, Lgyy;->write(Ljava/lang/String;)V

    .line 448
    :goto_0
    return-void

    .line 415
    :cond_0
    cmp-long v8, p1, v10

    if-gez v8, :cond_5

    neg-long v6, p1

    .line 416
    .local v6, "val":J
    :goto_1
    const/4 v3, 0x0

    .line 417
    .local v3, "size":I
    const-wide/16 v4, 0xa

    .line 418
    .local v4, "p":J
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_2
    const/16 v8, 0x13

    if-ge v1, v8, :cond_1

    .line 419
    cmp-long v8, v6, v4

    if-gez v8, :cond_6

    .line 420
    move v3, v1

    .line 426
    :cond_1
    if-nez v3, :cond_2

    .line 427
    const/16 v3, 0x13

    .line 429
    :cond_2
    cmp-long v8, p1, v10

    if-gez v8, :cond_3

    .line 430
    add-int/lit8 v3, v3, 0x1

    .line 433
    :cond_3
    iget v8, p0, Lgyy;->b:I

    add-int v2, v8, v3

    .line 434
    .local v2, "newcount":I
    iget-object v8, p0, Lgyy;->a:[C

    array-length v8, v8

    if-le v2, v8, :cond_4

    .line 435
    iget-object v8, p0, Lgyy;->d:Ljava/io/Writer;

    if-nez v8, :cond_7

    .line 436
    invoke-virtual {p0, v2}, Lgyy;->a(I)V

    .line 445
    :cond_4
    iget-object v8, p0, Lgyy;->a:[C

    invoke-static {p1, p2, v2, v8}, Lgyy;->a(JI[C)V

    .line 447
    iput v2, p0, Lgyy;->b:I

    goto :goto_0

    .end local v1    # "j":I
    .end local v2    # "newcount":I
    .end local v3    # "size":I
    .end local v4    # "p":J
    .end local v6    # "val":J
    :cond_5
    move-wide v6, p1

    .line 415
    goto :goto_1

    .line 423
    .restart local v1    # "j":I
    .restart local v3    # "size":I
    .restart local v4    # "p":J
    .restart local v6    # "val":J
    :cond_6
    const-wide/16 v8, 0xa

    mul-long/2addr v4, v8

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 438
    .restart local v2    # "newcount":I
    :cond_7
    new-array v0, v3, [C

    .line 439
    .local v0, "chars":[C
    invoke-static {p1, p2, v3, v0}, Lgyy;->a(JI[C)V

    .line 440
    const/4 v8, 0x0

    array-length v9, v0

    invoke-virtual {p0, v0, v8, v9}, Lgyy;->write([CII)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .param p2, "state"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 101
    if-eqz p2, :cond_0

    .line 102
    iget v0, p0, Lgyy;->c:I

    iget v1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    iput v0, p0, Lgyy;->c:I

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget v0, p0, Lgyy;->c:I

    iget v1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lgyy;->c:I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;CZ)V
    .locals 24
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "seperator"    # C
    .param p3, "checkSpecial"    # Z

    .prologue
    .line 455
    if-nez p1, :cond_1

    .line 2451
    const-string/jumbo v21, "null"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgyy;->write(Ljava/lang/String;)V

    .line 457
    if-eqz p2, :cond_0

    .line 458
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lgyy;->write(I)V

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    .line 464
    .local v15, "len":I
    move-object/from16 v0, p0

    iget v0, v0, Lgyy;->b:I

    move/from16 v21, v0

    add-int v21, v21, v15

    add-int/lit8 v16, v21, 0x2

    .line 465
    .local v16, "newcount":I
    if-eqz p2, :cond_2

    .line 466
    add-int/lit8 v16, v16, 0x1

    .line 469
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->d:Ljava/io/Writer;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    .line 471
    const/16 v21, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lgyy;->write(I)V

    .line 473
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_6

    .line 474
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 476
    .local v7, "ch":C
    const/16 v21, 0xa1

    move/from16 v0, v21

    if-ge v7, v0, :cond_3

    sget-object v21, Lgyy;->j:[B

    aget-byte v21, v21, v7

    if-nez v21, :cond_4

    :cond_3
    const/16 v21, 0x2f

    move/from16 v0, v21

    if-ne v7, v0, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lgyy;->c:I

    move/from16 v21, v0

    sget-object v22, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v22, v0

    and-int v21, v21, v22

    if-eqz v21, :cond_5

    .line 479
    :cond_4
    const/16 v21, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lgyy;->write(I)V

    .line 480
    sget-object v21, Lgyy;->l:[C

    aget-char v21, v21, v7

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lgyy;->write(I)V

    .line 473
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 484
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lgyy;->write(I)V

    goto :goto_2

    .line 487
    .end local v7    # "ch":C
    :cond_6
    const/16 v21, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lgyy;->write(I)V

    .line 488
    if-eqz p2, :cond_0

    .line 489
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lgyy;->write(I)V

    goto/16 :goto_0

    .line 493
    .end local v11    # "i":I
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lgyy;->a(I)V

    .line 496
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lgyy;->b:I

    move/from16 v21, v0

    add-int/lit8 v19, v21, 0x1

    .line 497
    .local v19, "start":I
    add-int v9, v19, v15

    .line 499
    .local v9, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgyy;->b:I

    move/from16 v22, v0

    const/16 v23, 0x22

    aput-char v23, v21, v22

    .line 500
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v19

    invoke-virtual {v0, v1, v15, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 502
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lgyy;->b:I

    .line 504
    const/16 v17, 0x0

    .line 505
    .local v17, "specialCount":I
    const/4 v14, -0x1

    .line 506
    .local v14, "lastSpecialIndex":I
    const/4 v10, -0x1

    .line 507
    .local v10, "firstSpecialIndex":I
    const/4 v13, 0x0

    .line 508
    .local v13, "lastSpecial":C
    if-eqz p3, :cond_14

    .line 509
    move/from16 v11, v19

    .restart local v11    # "i":I
    :goto_3
    if-ge v11, v9, :cond_12

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    aget-char v7, v21, v11

    .line 512
    .restart local v7    # "ch":C
    const/16 v21, 0x2028

    move/from16 v0, v21

    if-ne v7, v0, :cond_a

    .line 513
    add-int/lit8 v17, v17, 0x1

    .line 514
    move v14, v11

    .line 515
    move v13, v7

    .line 516
    add-int/lit8 v16, v16, 0x4

    .line 518
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_9

    .line 519
    move v10, v11

    .line 509
    :cond_9
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 524
    :cond_a
    const/16 v21, 0x5d

    move/from16 v0, v21

    if-lt v7, v0, :cond_c

    .line 525
    const/16 v21, 0x7f

    move/from16 v0, v21

    if-lt v7, v0, :cond_9

    const/16 v21, 0xa0

    move/from16 v0, v21

    if-ge v7, v0, :cond_9

    .line 526
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_b

    .line 527
    move v10, v11

    .line 530
    :cond_b
    add-int/lit8 v17, v17, 0x1

    .line 531
    move v14, v11

    .line 532
    move v13, v7

    .line 533
    add-int/lit8 v16, v16, 0x4

    goto :goto_4

    .line 540
    :cond_c
    const/16 v21, 0x20

    move/from16 v0, v21

    if-eq v7, v0, :cond_11

    .line 542
    const/16 v21, 0x2f

    move/from16 v0, v21

    if-ne v7, v0, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lgyy;->c:I

    move/from16 v21, v0

    sget-object v22, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v22, v0

    and-int v21, v21, v22

    if-eqz v21, :cond_e

    .line 543
    const/4 v12, 0x1

    .line 553
    .local v12, "isSpecial":Z
    :goto_5
    if-eqz v12, :cond_9

    .line 554
    add-int/lit8 v17, v17, 0x1

    .line 555
    move v14, v11

    .line 556
    move v13, v7

    .line 558
    const/16 v21, 0xa1

    move/from16 v0, v21

    if-ge v7, v0, :cond_d

    sget-object v21, Lgyy;->j:[B

    aget-byte v21, v21, v7

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 561
    add-int/lit8 v16, v16, 0x4

    .line 564
    :cond_d
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_9

    .line 565
    move v10, v11

    goto :goto_4

    .line 544
    .end local v12    # "isSpecial":Z
    :cond_e
    const/16 v21, 0x23

    move/from16 v0, v21

    if-le v7, v0, :cond_f

    const/16 v21, 0x5c

    move/from16 v0, v21

    if-ne v7, v0, :cond_11

    .line 546
    :cond_f
    const/16 v21, 0x1f

    move/from16 v0, v21

    if-le v7, v0, :cond_10

    const/16 v21, 0x5c

    move/from16 v0, v21

    if-eq v7, v0, :cond_10

    const/16 v21, 0x22

    move/from16 v0, v21

    if-ne v7, v0, :cond_11

    .line 547
    :cond_10
    const/4 v12, 0x1

    .restart local v12    # "isSpecial":Z
    goto :goto_5

    .line 549
    .end local v12    # "isSpecial":Z
    :cond_11
    const/4 v12, 0x0

    .restart local v12    # "isSpecial":Z
    goto :goto_5

    .line 570
    .end local v7    # "ch":C
    .end local v12    # "isSpecial":Z
    :cond_12
    if-lez v17, :cond_14

    .line 571
    add-int v16, v16, v17

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-le v0, v1, :cond_13

    .line 573
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lgyy;->a(I)V

    .line 575
    :cond_13
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lgyy;->b:I

    .line 577
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 578
    const/16 v21, 0x2028

    move/from16 v0, v21

    if-ne v13, v0, :cond_15

    .line 579
    add-int/lit8 v18, v14, 0x1

    .line 580
    .local v18, "srcPos":I
    add-int/lit8 v8, v14, 0x6

    .line 581
    .local v8, "destPos":I
    sub-int v21, v9, v14

    add-int/lit8 v4, v21, -0x1

    .line 582
    .local v4, "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    const/16 v22, 0x5c

    aput-char v22, v21, v14

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v14, v14, 0x1

    const/16 v22, 0x75

    aput-char v22, v21, v14

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v14, v14, 0x1

    const/16 v22, 0x32

    aput-char v22, v21, v14

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v14, v14, 0x1

    const/16 v22, 0x30

    aput-char v22, v21, v14

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v14, v14, 0x1

    const/16 v22, 0x32

    aput-char v22, v21, v14

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v14, v14, 0x1

    const/16 v22, 0x38

    aput-char v22, v21, v14

    .line 653
    .end local v4    # "LengthOfCopy":I
    .end local v8    # "destPos":I
    .end local v11    # "i":I
    .end local v18    # "srcPos":I
    :cond_14
    :goto_6
    if-eqz p2, :cond_1d

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgyy;->b:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x2

    const/16 v23, 0x22

    aput-char v23, v21, v22

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgyy;->b:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    aput-char p2, v21, v22

    goto/16 :goto_0

    .line 591
    .restart local v11    # "i":I
    :cond_15
    move v7, v13

    .restart local v7    # "ch":C
    const/16 v21, 0xa1

    move/from16 v0, v21

    if-ge v13, v0, :cond_16

    sget-object v21, Lgyy;->j:[B

    aget-byte v21, v21, v7

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    .line 593
    add-int/lit8 v18, v14, 0x1

    .line 594
    .restart local v18    # "srcPos":I
    add-int/lit8 v8, v14, 0x6

    .line 595
    .restart local v8    # "destPos":I
    sub-int v21, v9, v14

    add-int/lit8 v4, v21, -0x1

    .line 596
    .restart local v4    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    move v5, v14

    .line 599
    .local v5, "bufIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .local v6, "bufIndex":I
    const/16 v22, 0x5c

    aput-char v22, v21, v5

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    const/16 v22, 0x75

    aput-char v22, v21, v6

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v22, Lgyy;->m:[C

    ushr-int/lit8 v23, v7, 0xc

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v5

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v22, Lgyy;->m:[C

    ushr-int/lit8 v23, v7, 0x8

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v6

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v22, Lgyy;->m:[C

    ushr-int/lit8 v23, v7, 0x4

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v5

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    sget-object v22, Lgyy;->m:[C

    and-int/lit8 v23, v7, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v6

    goto/16 :goto_6

    .line 606
    .end local v4    # "LengthOfCopy":I
    .end local v6    # "bufIndex":I
    .end local v8    # "destPos":I
    .end local v18    # "srcPos":I
    :cond_16
    add-int/lit8 v18, v14, 0x1

    .line 607
    .restart local v18    # "srcPos":I
    add-int/lit8 v8, v14, 0x2

    .line 608
    .restart local v8    # "destPos":I
    sub-int v21, v9, v14

    add-int/lit8 v4, v21, -0x1

    .line 609
    .restart local v4    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    const/16 v22, 0x5c

    aput-char v22, v21, v14

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v14, v14, 0x1

    sget-object v22, Lgyy;->l:[C

    aget-char v22, v22, v7

    aput-char v22, v21, v14

    goto/16 :goto_6

    .line 614
    .end local v4    # "LengthOfCopy":I
    .end local v7    # "ch":C
    .end local v8    # "destPos":I
    .end local v18    # "srcPos":I
    :cond_17
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_14

    .line 615
    sub-int v20, v10, v19

    .line 616
    .local v20, "textIndex":I
    move v5, v10

    .line 617
    .restart local v5    # "bufIndex":I
    move/from16 v11, v20

    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_14

    .line 618
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 620
    .restart local v7    # "ch":C
    const/16 v21, 0xa1

    move/from16 v0, v21

    if-ge v7, v0, :cond_18

    sget-object v21, Lgyy;->j:[B

    aget-byte v21, v21, v7

    if-nez v21, :cond_19

    :cond_18
    const/16 v21, 0x2f

    move/from16 v0, v21

    if-ne v7, v0, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lgyy;->c:I

    move/from16 v21, v0

    sget-object v22, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v22, v0

    and-int v21, v21, v22

    if-eqz v21, :cond_1b

    .line 623
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    const/16 v22, 0x5c

    aput-char v22, v21, v5

    .line 624
    sget-object v21, Lgyy;->j:[B

    aget-byte v21, v21, v7

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1a

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    const/16 v22, 0x75

    aput-char v22, v21, v6

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v22, Lgyy;->m:[C

    ushr-int/lit8 v23, v7, 0xc

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v5

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v22, Lgyy;->m:[C

    ushr-int/lit8 v23, v7, 0x8

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v6

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v22, Lgyy;->m:[C

    ushr-int/lit8 v23, v7, 0x4

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v5

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v22, Lgyy;->m:[C

    and-int/lit8 v23, v7, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v6

    .line 617
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7

    .line 632
    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v22, Lgyy;->l:[C

    aget-char v22, v22, v7

    aput-char v22, v21, v6

    goto :goto_8

    .line 636
    :cond_1b
    const/16 v21, 0x2028

    move/from16 v0, v21

    if-ne v7, v0, :cond_1c

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    const/16 v22, 0x5c

    aput-char v22, v21, v5

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    const/16 v22, 0x75

    aput-char v22, v21, v6

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v22, Lgyy;->m:[C

    ushr-int/lit8 v23, v7, 0xc

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v5

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v22, Lgyy;->m:[C

    ushr-int/lit8 v23, v7, 0x8

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v6

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v22, Lgyy;->m:[C

    ushr-int/lit8 v23, v7, 0x4

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v5

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v22, Lgyy;->m:[C

    and-int/lit8 v23, v7, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v6

    goto :goto_8

    .line 645
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    aput-char v7, v21, v5

    move v5, v6

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    goto/16 :goto_8

    .line 657
    .end local v5    # "bufIndex":I
    .end local v7    # "ch":C
    .end local v11    # "i":I
    .end local v20    # "textIndex":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgyy;->b:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    const/16 v23, 0x22

    aput-char v23, v21, v22

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "checkSpecial"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 757
    iget v0, p0, Lgyy;->c:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 758
    iget v0, p0, Lgyy;->c:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {p0, p1}, Lgyy;->c(Ljava/lang/String;)V

    .line 760
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lgyy;->write(I)V

    .line 3823
    :goto_0
    return-void

    .line 2872
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 2873
    iget v0, p0, Lgyy;->b:I

    add-int/2addr v0, v5

    add-int/lit8 v3, v0, 0x1

    .line 2874
    iget-object v0, p0, Lgyy;->a:[C

    array-length v0, v0

    if-le v3, v0, :cond_8

    .line 2875
    iget-object v0, p0, Lgyy;->d:Ljava/io/Writer;

    if-eqz v0, :cond_7

    .line 2876
    if-nez v5, :cond_1

    .line 2877
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lgyy;->write(I)V

    .line 2878
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lgyy;->write(I)V

    .line 2879
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lgyy;->write(I)V

    goto :goto_0

    .line 2883
    :cond_1
    const/4 v0, 0x0

    .line 2884
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_22

    .line 2885
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2886
    const/16 v3, 0xa1

    if-ge v2, v3, :cond_3

    sget-object v3, Lgyy;->k:[B

    aget-byte v2, v3, v2

    if-eqz v2, :cond_3

    .line 2887
    const/4 v0, 0x1

    move v1, v0

    .line 2892
    :goto_2
    if-eqz v1, :cond_2

    .line 2893
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lgyy;->write(I)V

    .line 2895
    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v5, :cond_5

    .line 2896
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2897
    const/16 v3, 0xa1

    if-ge v2, v3, :cond_4

    sget-object v3, Lgyy;->k:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_4

    .line 2898
    const/16 v3, 0x5c

    invoke-virtual {p0, v3}, Lgyy;->write(I)V

    .line 2899
    sget-object v3, Lgyy;->l:[C

    aget-char v2, v3, v2

    invoke-virtual {p0, v2}, Lgyy;->write(I)V

    .line 2895
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2884
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2901
    :cond_4
    invoke-virtual {p0, v2}, Lgyy;->write(I)V

    goto :goto_4

    .line 2904
    :cond_5
    if-eqz v1, :cond_6

    .line 2905
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lgyy;->write(I)V

    .line 2907
    :cond_6
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lgyy;->write(I)V

    goto :goto_0

    .line 2911
    :cond_7
    invoke-virtual {p0, v3}, Lgyy;->a(I)V

    .line 2914
    :cond_8
    if-nez v5, :cond_a

    .line 2915
    iget v0, p0, Lgyy;->b:I

    add-int/lit8 v0, v0, 0x3

    .line 2916
    iget-object v1, p0, Lgyy;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_9

    .line 2917
    iget v0, p0, Lgyy;->b:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lgyy;->a(I)V

    .line 2919
    :cond_9
    iget-object v0, p0, Lgyy;->a:[C

    iget v1, p0, Lgyy;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgyy;->b:I

    const/16 v2, 0x27

    aput-char v2, v0, v1

    .line 2920
    iget-object v0, p0, Lgyy;->a:[C

    iget v1, p0, Lgyy;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgyy;->b:I

    const/16 v2, 0x27

    aput-char v2, v0, v1

    .line 2921
    iget-object v0, p0, Lgyy;->a:[C

    iget v1, p0, Lgyy;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgyy;->b:I

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    goto/16 :goto_0

    .line 2925
    :cond_a
    iget v4, p0, Lgyy;->b:I

    .line 2926
    add-int v2, v4, v5

    .line 2928
    const/4 v0, 0x0

    iget-object v1, p0, Lgyy;->a:[C

    invoke-virtual {p1, v0, v5, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 2929
    iput v3, p0, Lgyy;->b:I

    .line 2931
    const/4 v1, 0x0

    move v0, v4

    .line 2933
    :goto_5
    if-ge v0, v2, :cond_f

    .line 2934
    iget-object v5, p0, Lgyy;->a:[C

    aget-char v5, v5, v0

    .line 2935
    const/16 v6, 0xa1

    if-ge v5, v6, :cond_c

    sget-object v6, Lgyy;->k:[B

    aget-byte v6, v6, v5

    if-eqz v6, :cond_c

    .line 2936
    if-nez v1, :cond_d

    .line 2937
    add-int/lit8 v3, v3, 0x3

    .line 2938
    iget-object v1, p0, Lgyy;->a:[C

    array-length v1, v1

    if-le v3, v1, :cond_b

    .line 2939
    invoke-virtual {p0, v3}, Lgyy;->a(I)V

    .line 2941
    :cond_b
    iput v3, p0, Lgyy;->b:I

    .line 2943
    iget-object v1, p0, Lgyy;->a:[C

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lgyy;->a:[C

    add-int/lit8 v8, v0, 0x3

    sub-int v9, v2, v0

    add-int/lit8 v9, v9, -0x1

    invoke-static {v1, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2944
    iget-object v1, p0, Lgyy;->a:[C

    const/4 v6, 0x0

    iget-object v7, p0, Lgyy;->a:[C

    const/4 v8, 0x1

    invoke-static {v1, v6, v7, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2945
    iget-object v1, p0, Lgyy;->a:[C

    const/16 v6, 0x27

    aput-char v6, v1, v4

    .line 2946
    iget-object v1, p0, Lgyy;->a:[C

    add-int/lit8 v0, v0, 0x1

    const/16 v6, 0x5c

    aput-char v6, v1, v0

    .line 2947
    iget-object v1, p0, Lgyy;->a:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v6, Lgyy;->l:[C

    aget-char v5, v6, v5

    aput-char v5, v1, v0

    .line 2948
    add-int/lit8 v2, v2, 0x2

    .line 2949
    iget-object v1, p0, Lgyy;->a:[C

    iget v5, p0, Lgyy;->b:I

    add-int/lit8 v5, v5, -0x2

    const/16 v6, 0x27

    aput-char v6, v1, v5

    .line 2951
    const/4 v1, 0x1

    .line 2933
    :cond_c
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2953
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 2954
    iget-object v6, p0, Lgyy;->a:[C

    array-length v6, v6

    if-le v3, v6, :cond_e

    .line 2955
    invoke-virtual {p0, v3}, Lgyy;->a(I)V

    .line 2957
    :cond_e
    iput v3, p0, Lgyy;->b:I

    .line 2959
    iget-object v6, p0, Lgyy;->a:[C

    add-int/lit8 v7, v0, 0x1

    iget-object v8, p0, Lgyy;->a:[C

    add-int/lit8 v9, v0, 0x2

    sub-int v10, v2, v0

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2960
    iget-object v6, p0, Lgyy;->a:[C

    const/16 v7, 0x5c

    aput-char v7, v6, v0

    .line 2961
    iget-object v6, p0, Lgyy;->a:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v7, Lgyy;->l:[C

    aget-char v5, v7, v5

    aput-char v5, v6, v0

    .line 2962
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2967
    :cond_f
    iget-object v0, p0, Lgyy;->a:[C

    add-int/lit8 v1, v3, -0x1

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    goto/16 :goto_0

    .line 765
    :cond_10
    iget v0, p0, Lgyy;->c:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 766
    const/16 v0, 0x3a

    invoke-virtual {p0, p1, v0, p2}, Lgyy;->a(Ljava/lang/String;CZ)V

    goto/16 :goto_0

    .line 3774
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 3775
    iget v0, p0, Lgyy;->b:I

    add-int/2addr v0, v5

    add-int/lit8 v3, v0, 0x1

    .line 3776
    iget-object v0, p0, Lgyy;->a:[C

    array-length v0, v0

    if-le v3, v0, :cond_19

    .line 3777
    iget-object v0, p0, Lgyy;->d:Ljava/io/Writer;

    if-eqz v0, :cond_18

    .line 3778
    if-nez v5, :cond_12

    .line 3779
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lgyy;->write(I)V

    .line 3780
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lgyy;->write(I)V

    .line 3781
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lgyy;->write(I)V

    goto/16 :goto_0

    .line 3785
    :cond_12
    const/4 v0, 0x0

    .line 3786
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v5, :cond_21

    .line 3787
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3788
    const/16 v3, 0xa1

    if-ge v2, v3, :cond_14

    sget-object v3, Lgyy;->j:[B

    aget-byte v2, v3, v2

    if-eqz v2, :cond_14

    .line 3789
    const/4 v0, 0x1

    move v1, v0

    .line 3794
    :goto_8
    if-eqz v1, :cond_13

    .line 3795
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lgyy;->write(I)V

    .line 3797
    :cond_13
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v5, :cond_16

    .line 3798
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3799
    const/16 v3, 0xa1

    if-ge v2, v3, :cond_15

    sget-object v3, Lgyy;->j:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_15

    .line 3800
    const/16 v3, 0x5c

    invoke-virtual {p0, v3}, Lgyy;->write(I)V

    .line 3801
    sget-object v3, Lgyy;->l:[C

    aget-char v2, v3, v2

    invoke-virtual {p0, v2}, Lgyy;->write(I)V

    .line 3797
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 3786
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3803
    :cond_15
    invoke-virtual {p0, v2}, Lgyy;->write(I)V

    goto :goto_a

    .line 3806
    :cond_16
    if-eqz v1, :cond_17

    .line 3807
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lgyy;->write(I)V

    .line 3809
    :cond_17
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lgyy;->write(I)V

    goto/16 :goto_0

    .line 3812
    :cond_18
    invoke-virtual {p0, v3}, Lgyy;->a(I)V

    .line 3815
    :cond_19
    if-nez v5, :cond_1b

    .line 3816
    iget v0, p0, Lgyy;->b:I

    add-int/lit8 v0, v0, 0x3

    .line 3817
    iget-object v1, p0, Lgyy;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_1a

    .line 3818
    iget v0, p0, Lgyy;->b:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lgyy;->a(I)V

    .line 3820
    :cond_1a
    iget-object v0, p0, Lgyy;->a:[C

    iget v1, p0, Lgyy;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgyy;->b:I

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 3821
    iget-object v0, p0, Lgyy;->a:[C

    iget v1, p0, Lgyy;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgyy;->b:I

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 3822
    iget-object v0, p0, Lgyy;->a:[C

    iget v1, p0, Lgyy;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgyy;->b:I

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    goto/16 :goto_0

    .line 3826
    :cond_1b
    iget v4, p0, Lgyy;->b:I

    .line 3827
    add-int v2, v4, v5

    .line 3829
    const/4 v0, 0x0

    iget-object v1, p0, Lgyy;->a:[C

    invoke-virtual {p1, v0, v5, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 3830
    iput v3, p0, Lgyy;->b:I

    .line 3832
    const/4 v1, 0x0

    move v0, v4

    .line 3834
    :goto_b
    if-ge v0, v2, :cond_20

    .line 3835
    iget-object v5, p0, Lgyy;->a:[C

    aget-char v5, v5, v0

    .line 3836
    const/16 v6, 0xa1

    if-ge v5, v6, :cond_1d

    sget-object v6, Lgyy;->j:[B

    aget-byte v6, v6, v5

    if-eqz v6, :cond_1d

    .line 3837
    if-nez v1, :cond_1e

    .line 3838
    add-int/lit8 v3, v3, 0x3

    .line 3839
    iget-object v1, p0, Lgyy;->a:[C

    array-length v1, v1

    if-le v3, v1, :cond_1c

    .line 3840
    invoke-virtual {p0, v3}, Lgyy;->a(I)V

    .line 3842
    :cond_1c
    iput v3, p0, Lgyy;->b:I

    .line 3844
    iget-object v1, p0, Lgyy;->a:[C

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lgyy;->a:[C

    add-int/lit8 v8, v0, 0x3

    sub-int v9, v2, v0

    add-int/lit8 v9, v9, -0x1

    invoke-static {v1, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3845
    iget-object v1, p0, Lgyy;->a:[C

    const/4 v6, 0x0

    iget-object v7, p0, Lgyy;->a:[C

    const/4 v8, 0x1

    invoke-static {v1, v6, v7, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3846
    iget-object v1, p0, Lgyy;->a:[C

    const/16 v6, 0x22

    aput-char v6, v1, v4

    .line 3847
    iget-object v1, p0, Lgyy;->a:[C

    add-int/lit8 v0, v0, 0x1

    const/16 v6, 0x5c

    aput-char v6, v1, v0

    .line 3848
    iget-object v1, p0, Lgyy;->a:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v6, Lgyy;->l:[C

    aget-char v5, v6, v5

    aput-char v5, v1, v0

    .line 3849
    add-int/lit8 v2, v2, 0x2

    .line 3850
    iget-object v1, p0, Lgyy;->a:[C

    iget v5, p0, Lgyy;->b:I

    add-int/lit8 v5, v5, -0x2

    const/16 v6, 0x22

    aput-char v6, v1, v5

    .line 3852
    const/4 v1, 0x1

    .line 3834
    :cond_1d
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 3854
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    .line 3855
    iget-object v6, p0, Lgyy;->a:[C

    array-length v6, v6

    if-le v3, v6, :cond_1f

    .line 3856
    invoke-virtual {p0, v3}, Lgyy;->a(I)V

    .line 3858
    :cond_1f
    iput v3, p0, Lgyy;->b:I

    .line 3860
    iget-object v6, p0, Lgyy;->a:[C

    add-int/lit8 v7, v0, 0x1

    iget-object v8, p0, Lgyy;->a:[C

    add-int/lit8 v9, v0, 0x2

    sub-int v10, v2, v0

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3861
    iget-object v6, p0, Lgyy;->a:[C

    const/16 v7, 0x5c

    aput-char v7, v6, v0

    .line 3862
    iget-object v6, p0, Lgyy;->a:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v7, Lgyy;->l:[C

    aget-char v5, v7, v5

    aput-char v5, v6, v0

    .line 3863
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3868
    :cond_20
    iget-object v0, p0, Lgyy;->a:[C

    iget v1, p0, Lgyy;->b:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    goto/16 :goto_0

    :cond_21
    move v1, v0

    goto/16 :goto_8

    :cond_22
    move v1, v0

    goto/16 :goto_2
.end method

.method public final a([B)V
    .locals 21
    .param p1, "bytes"    # [B

    .prologue
    .line 328
    move-object/from16 v0, p1

    array-length v3, v0

    .line 330
    .local v3, "bytesLen":I
    move-object/from16 v0, p0

    iget v0, v0, Lgyy;->c:I

    move/from16 v18, v0

    sget-object v19, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v19, v0

    and-int v18, v18, v19

    if-eqz v18, :cond_0

    const/16 v17, 0x1

    .line 331
    .local v17, "singleQuote":Z
    :goto_0
    if-eqz v17, :cond_1

    const/16 v14, 0x27

    .line 333
    .local v14, "quote":C
    :goto_1
    if-nez v3, :cond_3

    .line 334
    if-eqz v17, :cond_2

    const-string/jumbo v8, "\'\'"

    .line 335
    .local v8, "emptyString":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lgyy;->write(Ljava/lang/String;)V

    .line 407
    .end local v8    # "emptyString":Ljava/lang/String;
    :goto_3
    return-void

    .line 330
    .end local v14    # "quote":C
    .end local v17    # "singleQuote":Z
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 331
    .restart local v17    # "singleQuote":Z
    :cond_1
    const/16 v14, 0x22

    goto :goto_1

    .line 334
    .restart local v14    # "quote":C
    :cond_2
    const-string/jumbo v8, "\"\""

    goto :goto_2

    .line 339
    :cond_3
    sget-object v2, Lgxt;->v:[C

    .line 341
    .local v2, "CA":[C
    div-int/lit8 v18, v3, 0x3

    mul-int/lit8 v7, v18, 0x3

    .line 342
    .local v7, "eLen":I
    add-int/lit8 v18, v3, -0x1

    div-int/lit8 v18, v18, 0x3

    add-int/lit8 v18, v18, 0x1

    shl-int/lit8 v4, v18, 0x2

    .line 344
    .local v4, "charsLen":I
    move-object/from16 v0, p0

    iget v12, v0, Lgyy;->b:I

    .line 345
    .local v12, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lgyy;->b:I

    move/from16 v18, v0

    add-int v18, v18, v4

    add-int/lit8 v11, v18, 0x2

    .line 346
    .local v11, "newcount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v11, v0, :cond_9

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->d:Ljava/io/Writer;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 348
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lgyy;->write(I)V

    .line 350
    const/4 v15, 0x0

    .local v15, "s":I
    move/from16 v16, v15

    .end local v15    # "s":I
    .local v16, "s":I
    :goto_4
    move/from16 v0, v16

    if-ge v0, v7, :cond_4

    .line 352
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "s":I
    .restart local v15    # "s":I
    aget-byte v18, p1, v16

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x10

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "s":I
    .restart local v16    # "s":I
    aget-byte v19, p1, v15

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    or-int v18, v18, v19

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "s":I
    .restart local v15    # "s":I
    aget-byte v19, p1, v16

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v9, v18, v19

    .line 355
    .local v9, "i":I
    ushr-int/lit8 v18, v9, 0x12

    and-int/lit8 v18, v18, 0x3f

    aget-char v18, v2, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgyy;->write(I)V

    .line 356
    ushr-int/lit8 v18, v9, 0xc

    and-int/lit8 v18, v18, 0x3f

    aget-char v18, v2, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgyy;->write(I)V

    .line 357
    ushr-int/lit8 v18, v9, 0x6

    and-int/lit8 v18, v18, 0x3f

    aget-char v18, v2, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgyy;->write(I)V

    .line 358
    and-int/lit8 v18, v9, 0x3f

    aget-char v18, v2, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgyy;->write(I)V

    move/from16 v16, v15

    .line 359
    .end local v15    # "s":I
    .restart local v16    # "s":I
    goto :goto_4

    .line 362
    .end local v9    # "i":I
    :cond_4
    sub-int v10, v3, v7

    .line 363
    .local v10, "left":I
    if-lez v10, :cond_5

    .line 365
    aget-byte v18, p1, v7

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v19, v18, 0xa

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v10, v0, :cond_6

    add-int/lit8 v18, v3, -0x1

    aget-byte v18, p1, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x2

    :goto_5
    or-int v9, v19, v18

    .line 368
    .restart local v9    # "i":I
    shr-int/lit8 v18, v9, 0xc

    aget-char v18, v2, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgyy;->write(I)V

    .line 369
    ushr-int/lit8 v18, v9, 0x6

    and-int/lit8 v18, v18, 0x3f

    aget-char v18, v2, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgyy;->write(I)V

    .line 370
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v10, v0, :cond_7

    and-int/lit8 v18, v9, 0x3f

    aget-char v18, v2, v18

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgyy;->write(I)V

    .line 371
    const/16 v18, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgyy;->write(I)V

    .line 374
    .end local v9    # "i":I
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lgyy;->write(I)V

    goto/16 :goto_3

    .line 365
    :cond_6
    const/16 v18, 0x0

    goto :goto_5

    .line 370
    .restart local v9    # "i":I
    :cond_7
    const/16 v18, 0x3d

    goto :goto_6

    .line 377
    .end local v9    # "i":I
    .end local v10    # "left":I
    .end local v16    # "s":I
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lgyy;->a(I)V

    .line 379
    :cond_9
    move-object/from16 v0, p0

    iput v11, v0, Lgyy;->b:I

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v18, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .local v13, "offset":I
    aput-char v14, v18, v12

    .line 383
    const/4 v15, 0x0

    .restart local v15    # "s":I
    move v5, v13

    .local v5, "d":I
    move v6, v5

    .end local v5    # "d":I
    .local v6, "d":I
    move/from16 v16, v15

    .end local v15    # "s":I
    .restart local v16    # "s":I
    :goto_7
    move/from16 v0, v16

    if-ge v0, v7, :cond_a

    .line 385
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "s":I
    .restart local v15    # "s":I
    aget-byte v18, p1, v16

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x10

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "s":I
    .restart local v16    # "s":I
    aget-byte v19, p1, v15

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    or-int v18, v18, v19

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "s":I
    .restart local v15    # "s":I
    aget-byte v19, p1, v16

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v9, v18, v19

    .line 388
    .restart local v9    # "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v18, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    ushr-int/lit8 v19, v9, 0x12

    and-int/lit8 v19, v19, 0x3f

    aget-char v19, v2, v19

    aput-char v19, v18, v6

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v18, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "d":I
    .restart local v6    # "d":I
    ushr-int/lit8 v19, v9, 0xc

    and-int/lit8 v19, v19, 0x3f

    aget-char v19, v2, v19

    aput-char v19, v18, v5

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v18, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    ushr-int/lit8 v19, v9, 0x6

    and-int/lit8 v19, v19, 0x3f

    aget-char v19, v2, v19

    aput-char v19, v18, v6

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v18, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "d":I
    .restart local v6    # "d":I
    and-int/lit8 v19, v9, 0x3f

    aget-char v19, v2, v19

    aput-char v19, v18, v5

    move/from16 v16, v15

    .line 392
    .end local v15    # "s":I
    .restart local v16    # "s":I
    goto :goto_7

    .line 395
    .end local v9    # "i":I
    :cond_a
    sub-int v10, v3, v7

    .line 396
    .restart local v10    # "left":I
    if-lez v10, :cond_b

    .line 398
    aget-byte v18, p1, v7

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v19, v18, 0xa

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v10, v0, :cond_c

    add-int/lit8 v18, v3, -0x1

    aget-byte v18, p1, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x2

    :goto_8
    or-int v9, v19, v18

    .line 401
    .restart local v9    # "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, -0x5

    shr-int/lit8 v20, v9, 0xc

    aget-char v20, v2, v20

    aput-char v20, v18, v19

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, -0x4

    ushr-int/lit8 v20, v9, 0x6

    and-int/lit8 v20, v20, 0x3f

    aget-char v20, v2, v20

    aput-char v20, v18, v19

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v19, v0

    add-int/lit8 v20, v11, -0x3

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v10, v0, :cond_d

    and-int/lit8 v18, v9, 0x3f

    aget-char v18, v2, v18

    :goto_9
    aput-char v18, v19, v20

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, -0x2

    const/16 v20, 0x3d

    aput-char v20, v18, v19

    .line 406
    .end local v9    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, -0x1

    aput-char v14, v18, v19

    goto/16 :goto_3

    .line 398
    :cond_c
    const/16 v18, 0x0

    goto :goto_8

    .line 403
    .restart local v9    # "i":I
    :cond_d
    const/16 v18, 0x3d

    goto :goto_9
.end method

.method public final a(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 109
    iget v0, p0, Lgyy;->c:I

    iget v1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)[B
    .locals 5
    .param p1, "charsetName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 249
    iget-object v1, p0, Lgyy;->d:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 250
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "writer not null"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgyy;->a:[C

    const/4 v3, 0x0

    iget v4, p0, Lgyy;->b:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "toBytes error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final synthetic append(C)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    .line 4244
    invoke-virtual {p0, p1}, Lgyy;->write(I)V

    .line 31
    return-object p0
.end method

.method public final synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lgyy;->a(Ljava/lang/CharSequence;)Lgyy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lgyy;->a(Ljava/lang/CharSequence;II)Lgyy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    .line 5244
    invoke-virtual {p0, p1}, Lgyy;->write(I)V

    .line 31
    return-object p0
.end method

.method public final synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lgyy;->a(Ljava/lang/CharSequence;)Lgyy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lgyy;->a(Ljava/lang/CharSequence;II)Lgyy;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 8
    .param p1, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 293
    const/high16 v5, -0x80000000

    if-ne p1, v5, :cond_0

    .line 294
    const-string/jumbo v5, "-2147483648"

    invoke-virtual {p0, v5}, Lgyy;->write(Ljava/lang/String;)V

    .line 325
    :goto_0
    return-void

    .line 299
    :cond_0
    if-gez p1, :cond_3

    neg-int v4, p1

    .line 300
    .local v4, "x":I
    :goto_1
    const/4 v1, 0x0

    .line 301
    .local v1, "j":I
    :goto_2
    sget-object v5, Lgyy;->e:[I

    aget v5, v5, v1

    if-gt v4, v5, :cond_4

    .line 302
    add-int/lit8 v3, v1, 0x1

    .line 306
    .local v3, "size":I
    if-gez p1, :cond_1

    .line 307
    add-int/lit8 v3, v3, 0x1

    .line 310
    :cond_1
    iget v5, p0, Lgyy;->b:I

    add-int v2, v5, v3

    .line 311
    .local v2, "newcount":I
    iget-object v5, p0, Lgyy;->a:[C

    array-length v5, v5

    if-le v2, v5, :cond_2

    .line 312
    iget-object v5, p0, Lgyy;->d:Ljava/io/Writer;

    if-nez v5, :cond_5

    .line 313
    invoke-virtual {p0, v2}, Lgyy;->a(I)V

    .line 322
    :cond_2
    int-to-long v6, p1

    iget-object v5, p0, Lgyy;->a:[C

    invoke-static {v6, v7, v2, v5}, Lgyy;->a(JI[C)V

    .line 324
    iput v2, p0, Lgyy;->b:I

    goto :goto_0

    .end local v1    # "j":I
    .end local v2    # "newcount":I
    .end local v3    # "size":I
    .end local v4    # "x":I
    :cond_3
    move v4, p1

    .line 299
    goto :goto_1

    .line 300
    .restart local v1    # "j":I
    .restart local v4    # "x":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 315
    .restart local v2    # "newcount":I
    .restart local v3    # "size":I
    :cond_5
    new-array v0, v3, [C

    .line 316
    .local v0, "chars":[C
    int-to-long v6, p1

    invoke-static {v6, v7, v3, v0}, Lgyy;->a(JI[C)V

    .line 317
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {p0, v0, v5, v6}, Lgyy;->write([CII)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 666
    iget v0, p0, Lgyy;->c:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {p0, p1}, Lgyy;->c(Ljava/lang/String;)V

    .line 671
    :goto_0
    return-void

    .line 669
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lgyy;->a(Ljava/lang/String;CZ)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 674
    if-nez p1, :cond_1

    .line 675
    iget v9, p0, Lgyy;->b:I

    add-int/lit8 v6, v9, 0x4

    .line 676
    .local v6, "newcount":I
    iget-object v9, p0, Lgyy;->a:[C

    array-length v9, v9

    if-le v6, v9, :cond_0

    .line 677
    invoke-virtual {p0, v6}, Lgyy;->a(I)V

    .line 679
    :cond_0
    const-string/jumbo v9, "null"

    const/4 v10, 0x0

    const/4 v11, 0x4

    iget-object v12, p0, Lgyy;->a:[C

    iget v13, p0, Lgyy;->b:I

    invoke-virtual {v9, v10, v11, v12, v13}, Ljava/lang/String;->getChars(II[CI)V

    .line 680
    iput v6, p0, Lgyy;->b:I

    .line 754
    :goto_0
    return-void

    .line 684
    .end local v6    # "newcount":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 685
    .local v5, "len":I
    iget v9, p0, Lgyy;->b:I

    add-int/2addr v9, v5

    add-int/lit8 v6, v9, 0x2

    .line 686
    .restart local v6    # "newcount":I
    iget-object v9, p0, Lgyy;->a:[C

    array-length v9, v9

    if-le v6, v9, :cond_6

    .line 687
    iget-object v9, p0, Lgyy;->d:Ljava/io/Writer;

    if-eqz v9, :cond_5

    .line 688
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lgyy;->write(I)V

    .line 689
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 690
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 691
    .local v0, "ch":C
    const/16 v9, 0xd

    if-le v0, v9, :cond_2

    const/16 v9, 0x5c

    if-eq v0, v9, :cond_2

    const/16 v9, 0x27

    if-eq v0, v9, :cond_2

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_3

    iget v9, p0, Lgyy;->c:I

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v10, v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_3

    .line 693
    :cond_2
    const/16 v9, 0x5c

    invoke-virtual {p0, v9}, Lgyy;->write(I)V

    .line 694
    sget-object v9, Lgyy;->l:[C

    aget-char v9, v9, v0

    invoke-virtual {p0, v9}, Lgyy;->write(I)V

    .line 689
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 696
    :cond_3
    invoke-virtual {p0, v0}, Lgyy;->write(I)V

    goto :goto_2

    .line 699
    .end local v0    # "ch":C
    :cond_4
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lgyy;->write(I)V

    goto :goto_0

    .line 702
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {p0, v6}, Lgyy;->a(I)V

    .line 705
    :cond_6
    iget v9, p0, Lgyy;->b:I

    add-int/lit8 v8, v9, 0x1

    .line 706
    .local v8, "start":I
    add-int v1, v8, v5

    .line 708
    .local v1, "end":I
    iget-object v9, p0, Lgyy;->a:[C

    iget v10, p0, Lgyy;->b:I

    const/16 v11, 0x27

    aput-char v11, v9, v10

    .line 709
    const/4 v9, 0x0

    iget-object v10, p0, Lgyy;->a:[C

    invoke-virtual {p1, v9, v5, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 710
    iput v6, p0, Lgyy;->b:I

    .line 712
    const/4 v7, 0x0

    .line 713
    .local v7, "specialCount":I
    const/4 v4, -0x1

    .line 714
    .local v4, "lastSpecialIndex":I
    const/4 v3, 0x0

    .line 715
    .local v3, "lastSpecial":C
    move v2, v8

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v1, :cond_9

    .line 716
    iget-object v9, p0, Lgyy;->a:[C

    aget-char v0, v9, v2

    .line 717
    .restart local v0    # "ch":C
    const/16 v9, 0xd

    if-le v0, v9, :cond_7

    const/16 v9, 0x5c

    if-eq v0, v9, :cond_7

    const/16 v9, 0x27

    if-eq v0, v9, :cond_7

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_8

    iget v9, p0, Lgyy;->c:I

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v10, v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_8

    .line 719
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 720
    move v4, v2

    .line 721
    move v3, v0

    .line 715
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 725
    .end local v0    # "ch":C
    :cond_9
    add-int/2addr v6, v7

    .line 726
    iget-object v9, p0, Lgyy;->a:[C

    array-length v9, v9

    if-le v6, v9, :cond_a

    .line 727
    invoke-virtual {p0, v6}, Lgyy;->a(I)V

    .line 729
    :cond_a
    iput v6, p0, Lgyy;->b:I

    .line 731
    const/4 v9, 0x1

    if-ne v7, v9, :cond_c

    .line 732
    iget-object v9, p0, Lgyy;->a:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Lgyy;->a:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v13, v1, v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 733
    iget-object v9, p0, Lgyy;->a:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v4

    .line 734
    iget-object v9, p0, Lgyy;->a:[C

    add-int/lit8 v4, v4, 0x1

    sget-object v10, Lgyy;->l:[C

    aget-char v10, v10, v3

    aput-char v10, v9, v4

    .line 753
    :cond_b
    iget-object v9, p0, Lgyy;->a:[C

    iget v10, p0, Lgyy;->b:I

    add-int/lit8 v10, v10, -0x1

    const/16 v11, 0x27

    aput-char v11, v9, v10

    goto/16 :goto_0

    .line 735
    :cond_c
    const/4 v9, 0x1

    if-le v7, v9, :cond_b

    .line 736
    iget-object v9, p0, Lgyy;->a:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Lgyy;->a:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v13, v1, v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 737
    iget-object v9, p0, Lgyy;->a:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v4

    .line 738
    iget-object v9, p0, Lgyy;->a:[C

    add-int/lit8 v4, v4, 0x1

    sget-object v10, Lgyy;->l:[C

    aget-char v10, v10, v3

    aput-char v10, v9, v4

    .line 739
    add-int/lit8 v1, v1, 0x1

    .line 740
    add-int/lit8 v2, v4, -0x2

    :goto_4
    if-lt v2, v8, :cond_b

    .line 741
    iget-object v9, p0, Lgyy;->a:[C

    aget-char v0, v9, v2

    .line 743
    .restart local v0    # "ch":C
    const/16 v9, 0xd

    if-le v0, v9, :cond_d

    const/16 v9, 0x5c

    if-eq v0, v9, :cond_d

    const/16 v9, 0x27

    if-eq v0, v9, :cond_d

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_e

    iget v9, p0, Lgyy;->c:I

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v10, v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_e

    .line 745
    :cond_d
    iget-object v9, p0, Lgyy;->a:[C

    add-int/lit8 v10, v2, 0x1

    iget-object v11, p0, Lgyy;->a:[C

    add-int/lit8 v12, v2, 0x2

    sub-int v13, v1, v2

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    iget-object v9, p0, Lgyy;->a:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v2

    .line 747
    iget-object v9, p0, Lgyy;->a:[C

    add-int/lit8 v10, v2, 0x1

    sget-object v11, Lgyy;->l:[C

    aget-char v11, v11, v0

    aput-char v11, v9, v10

    .line 748
    add-int/lit8 v1, v1, 0x1

    .line 740
    :cond_e
    add-int/lit8 v2, v2, -0x1

    goto :goto_4
.end method

.method public final close()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 273
    iget-object v0, p0, Lgyy;->d:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget v0, p0, Lgyy;->b:I

    if-lez v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lgyy;->flush()V

    .line 276
    :cond_0
    iget-object v0, p0, Lgyy;->a:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_1

    .line 277
    sget-object v0, Lgyy;->n:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lgyy;->a:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 280
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lgyy;->a:[C

    .line 281
    return-void
.end method

.method public final flush()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 971
    iget-object v1, p0, Lgyy;->d:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 981
    :goto_0
    return-void

    .line 976
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgyy;->d:Ljava/io/Writer;

    iget-object v2, p0, Lgyy;->a:[C

    const/4 v3, 0x0

    iget v4, p0, Lgyy;->b:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 977
    iget-object v1, p0, Lgyy;->d:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 978
    const/4 v1, 0x0

    iput v1, p0, Lgyy;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 265
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgyy;->a:[C

    const/4 v2, 0x0

    iget v3, p0, Lgyy;->b:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final write(I)V
    .locals 4
    .param p1, "c"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 116
    iget v1, p0, Lgyy;->b:I

    add-int/lit8 v0, v1, 0x1

    .line 117
    .local v0, "newcount":I
    iget-object v1, p0, Lgyy;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 118
    iget-object v1, p0, Lgyy;->d:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 119
    invoke-virtual {p0, v0}, Lgyy;->a(I)V

    .line 125
    :cond_0
    :goto_0
    iget-object v1, p0, Lgyy;->a:[C

    iget v2, p0, Lgyy;->b:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 126
    iput v0, p0, Lgyy;->b:I

    .line 127
    return-void

    .line 121
    :cond_1
    invoke-virtual {p0}, Lgyy;->flush()V

    .line 122
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final write(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 284
    :goto_0
    if-nez p1, :cond_0

    .line 1451
    const-string/jumbo p1, "null"

    goto :goto_0

    .line 289
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgyy;->write(Ljava/lang/String;II)V

    .line 290
    return-void
.end method

.method public final write(Ljava/lang/String;II)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 186
    iget v2, p0, Lgyy;->b:I

    add-int v0, v2, p3

    .line 187
    .local v0, "newcount":I
    iget-object v2, p0, Lgyy;->a:[C

    array-length v2, v2

    if-le v0, v2, :cond_0

    .line 188
    iget-object v2, p0, Lgyy;->d:Ljava/io/Writer;

    if-nez v2, :cond_1

    .line 189
    invoke-virtual {p0, v0}, Lgyy;->a(I)V

    .line 202
    :cond_0
    :goto_0
    add-int v2, p2, p3

    iget-object v3, p0, Lgyy;->a:[C

    iget v4, p0, Lgyy;->b:I

    invoke-virtual {p1, p2, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 203
    iput v0, p0, Lgyy;->b:I

    .line 204
    return-void

    .line 192
    :cond_1
    iget-object v2, p0, Lgyy;->a:[C

    array-length v2, v2

    iget v3, p0, Lgyy;->b:I

    sub-int v1, v2, v3

    .line 193
    .local v1, "rest":I
    add-int v2, p2, v1

    iget-object v3, p0, Lgyy;->a:[C

    iget v4, p0, Lgyy;->b:I

    invoke-virtual {p1, p2, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 194
    iget-object v2, p0, Lgyy;->a:[C

    array-length v2, v2

    iput v2, p0, Lgyy;->b:I

    .line 195
    invoke-virtual {p0}, Lgyy;->flush()V

    .line 196
    sub-int/2addr p3, v1

    .line 197
    add-int/2addr p2, v1

    .line 198
    iget-object v2, p0, Lgyy;->a:[C

    array-length v2, v2

    if-gt p3, v2, :cond_1

    .line 199
    move v0, p3

    goto :goto_0
.end method

.method public final write([CII)V
    .locals 4
    .param p1, "c"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 137
    if-ltz p2, :cond_0

    array-length v2, p1

    if-gt p2, v2, :cond_0

    if-ltz p3, :cond_0

    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_0

    add-int v2, p2, p3

    if-gez v2, :cond_1

    .line 142
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 143
    :cond_1
    if-nez p3, :cond_2

    .line 165
    :goto_0
    return-void

    .line 147
    :cond_2
    iget v2, p0, Lgyy;->b:I

    add-int v0, v2, p3

    .line 148
    .local v0, "newcount":I
    iget-object v2, p0, Lgyy;->a:[C

    array-length v2, v2

    if-le v0, v2, :cond_3

    .line 149
    iget-object v2, p0, Lgyy;->d:Ljava/io/Writer;

    if-nez v2, :cond_4

    .line 150
    invoke-virtual {p0, v0}, Lgyy;->a(I)V

    .line 163
    :cond_3
    :goto_1
    iget-object v2, p0, Lgyy;->a:[C

    iget v3, p0, Lgyy;->b:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iput v0, p0, Lgyy;->b:I

    goto :goto_0

    .line 153
    :cond_4
    iget-object v2, p0, Lgyy;->a:[C

    array-length v2, v2

    iget v3, p0, Lgyy;->b:I

    sub-int v1, v2, v3

    .line 154
    .local v1, "rest":I
    iget-object v2, p0, Lgyy;->a:[C

    iget v3, p0, Lgyy;->b:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget-object v2, p0, Lgyy;->a:[C

    array-length v2, v2

    iput v2, p0, Lgyy;->b:I

    .line 156
    invoke-virtual {p0}, Lgyy;->flush()V

    .line 157
    sub-int/2addr p3, v1

    .line 158
    add-int/2addr p2, v1

    .line 159
    iget-object v2, p0, Lgyy;->a:[C

    array-length v2, v2

    if-gt p3, v2, :cond_4

    .line 160
    move v0, p3

    goto :goto_1
.end method
