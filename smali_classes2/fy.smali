.class public final Lfy;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfy;->a:Ljava/lang/Object;

    .line 41
    const/16 v0, 0x18

    new-array v0, v0, [C

    sput-object v0, Lfy;->b:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IIZI)I
    .locals 1
    .param p0, "amt"    # I
    .param p1, "suffix"    # I
    .param p2, "always"    # Z
    .param p3, "zeropad"    # I

    .prologue
    .line 44
    const/16 v0, 0x63

    if-gt p0, v0, :cond_0

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    if-lt p3, v0, :cond_1

    .line 45
    :cond_0
    add-int/lit8 v0, p1, 0x3

    .line 53
    :goto_0
    return v0

    .line 47
    :cond_1
    const/16 v0, 0x9

    if-gt p0, v0, :cond_2

    if-eqz p2, :cond_3

    const/4 v0, 0x2

    if-lt p3, v0, :cond_3

    .line 48
    :cond_2
    add-int/lit8 v0, p1, 0x2

    goto :goto_0

    .line 50
    :cond_3
    if-nez p2, :cond_4

    if-lez p0, :cond_5

    .line 51
    :cond_4
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    .line 53
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([CICIZI)I
    .locals 3
    .param p0, "formatStr"    # [C
    .param p1, "amt"    # I
    .param p2, "suffix"    # C
    .param p3, "pos"    # I
    .param p4, "always"    # Z
    .param p5, "zeropad"    # I

    .prologue
    .line 58
    if-nez p4, :cond_0

    if-lez p1, :cond_7

    .line 59
    :cond_0
    move v1, p3

    .line 60
    .local v1, "startPos":I
    if-eqz p4, :cond_1

    const/4 v2, 0x3

    if-ge p5, v2, :cond_2

    :cond_1
    const/16 v2, 0x63

    if-le p1, v2, :cond_3

    .line 61
    :cond_2
    div-int/lit8 v0, p1, 0x64

    .line 62
    .local v0, "dig":I
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 63
    add-int/lit8 p3, p3, 0x1

    .line 64
    mul-int/lit8 v2, v0, 0x64

    sub-int/2addr p1, v2

    .line 66
    .end local v0    # "dig":I
    :cond_3
    if-eqz p4, :cond_4

    const/4 v2, 0x2

    if-ge p5, v2, :cond_5

    :cond_4
    const/16 v2, 0x9

    if-gt p1, v2, :cond_5

    if-eq v1, p3, :cond_6

    .line 67
    :cond_5
    div-int/lit8 v0, p1, 0xa

    .line 68
    .restart local v0    # "dig":I
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 69
    add-int/lit8 p3, p3, 0x1

    .line 70
    mul-int/lit8 v2, v0, 0xa

    sub-int/2addr p1, v2

    .line 72
    .end local v0    # "dig":I
    :cond_6
    add-int/lit8 v2, p1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 73
    add-int/lit8 p3, p3, 0x1

    .line 74
    aput-char p2, p0, p3

    .line 75
    add-int/lit8 p3, p3, 0x1

    .line 77
    .end local v1    # "startPos":I
    :cond_7
    return p3
.end method

.method public static a(JJLjava/io/PrintWriter;)V
    .locals 4
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "pw"    # Ljava/io/PrintWriter;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 178
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 179
    const-string/jumbo v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Lfy;->a(JLjava/io/PrintWriter;I)V

    goto :goto_0
.end method

.method public static a(JLjava/io/PrintWriter;)V
    .locals 2
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lfy;->a(JLjava/io/PrintWriter;I)V

    .line 173
    return-void
.end method

.method private static a(JLjava/io/PrintWriter;I)V
    .locals 18
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "fieldLen"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 163
    sget-object v16, Lfy;->a:Ljava/lang/Object;

    monitor-enter v16

    .line 164
    const/4 v2, 0x0

    .line 1081
    :try_start_0
    sget-object v3, Lfy;->b:[C

    array-length v3, v3

    if-ge v3, v2, :cond_0

    .line 1082
    new-array v2, v2, [C

    sput-object v2, Lfy;->b:[C

    .line 1085
    :cond_0
    sget-object v2, Lfy;->b:[C

    .line 1087
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-nez v3, :cond_1

    .line 1093
    const/4 v3, 0x0

    const/16 v4, 0x30

    aput-char v4, v2, v3

    .line 1094
    const/4 v12, 0x1

    .line 165
    .end local p0    # "duration":J
    .local v12, "len":I
    :goto_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lfy;->b:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v12}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    monitor-exit v16

    return-void

    .line 1098
    .end local v12    # "len":I
    .restart local p0    # "duration":J
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-lez v3, :cond_3

    .line 1099
    const/16 v3, 0x2b

    move v7, v3

    .line 1105
    .end local p0    # "duration":J
    :goto_1
    const-wide/16 v4, 0x3e8

    rem-long v4, p0, v4

    long-to-int v0, v4

    move/from16 v17, v0

    .line 1106
    const-wide/16 v4, 0x3e8

    div-long v4, p0, v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v6, v4

    .line 1107
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1109
    const v8, 0x15180

    if-le v6, v8, :cond_2

    .line 1110
    const v3, 0x15180

    div-int v3, v6, v3

    .line 1111
    const v8, 0x15180

    mul-int/2addr v8, v3

    sub-int/2addr v6, v8

    .line 1113
    :cond_2
    const/16 v8, 0xe10

    if-le v6, v8, :cond_8

    .line 1114
    div-int/lit16 v5, v6, 0xe10

    .line 1115
    mul-int/lit16 v8, v5, 0xe10

    sub-int/2addr v6, v8

    move v15, v5

    move v5, v6

    .line 1117
    :goto_2
    const/16 v6, 0x3c

    if-le v5, v6, :cond_7

    .line 1118
    div-int/lit8 v4, v5, 0x3c

    .line 1119
    mul-int/lit8 v6, v4, 0x3c

    sub-int/2addr v5, v6

    move v13, v4

    move v14, v5

    .line 1122
    :goto_3
    const/4 v4, 0x0

    .line 1137
    aput-char v7, v2, v4

    .line 1138
    const/4 v5, 0x1

    .line 1142
    const/16 v4, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lfy;->a([CICIZI)I

    move-result v9

    .line 1143
    const/16 v8, 0x68

    if-eq v9, v5, :cond_4

    const/4 v10, 0x1

    :goto_4
    const/4 v11, 0x0

    move-object v6, v2

    move v7, v15

    invoke-static/range {v6 .. v11}, Lfy;->a([CICIZI)I

    move-result v9

    .line 1144
    const/16 v8, 0x6d

    if-eq v9, v5, :cond_5

    const/4 v10, 0x1

    :goto_5
    const/4 v11, 0x0

    move-object v6, v2

    move v7, v13

    invoke-static/range {v6 .. v11}, Lfy;->a([CICIZI)I

    move-result v8

    .line 1145
    const/16 v4, 0x73

    if-eq v8, v5, :cond_6

    const/4 v6, 0x1

    :goto_6
    const/4 v7, 0x0

    move v3, v14

    move v5, v8

    invoke-static/range {v2 .. v7}, Lfy;->a([CICIZI)I

    move-result v5

    .line 1146
    const/16 v4, 0x6d

    const/4 v6, 0x1

    const/4 v7, 0x0

    move/from16 v3, v17

    invoke-static/range {v2 .. v7}, Lfy;->a([CICIZI)I

    move-result v3

    .line 1147
    const/16 v4, 0x73

    aput-char v4, v2, v3

    .line 1148
    add-int/lit8 v12, v3, 0x1

    goto/16 :goto_0

    .line 1101
    .restart local p0    # "duration":J
    :cond_3
    const/16 v3, 0x2d

    .line 1102
    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    move v7, v3

    goto/16 :goto_1

    .line 1143
    .end local p0    # "duration":J
    :cond_4
    const/4 v10, 0x0

    goto :goto_4

    .line 1144
    :cond_5
    const/4 v10, 0x0

    goto :goto_5

    .line 1145
    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    .line 166
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_7
    move v13, v4

    move v14, v5

    goto :goto_3

    :cond_8
    move v15, v5

    move v5, v6

    goto :goto_2
.end method
