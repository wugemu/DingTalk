.class public final Lkry;
.super Ljava/lang/Object;
.source "DateTimeParserTokenManager.java"

# interfaces
.implements Lkrx;


# static fields
.field static a:I

.field static final c:[J

.field static final d:[I

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:[I

.field static final i:[J

.field static final j:[J

.field static final k:[J

.field static final l:[J


# instance fields
.field public b:Ljava/io/PrintStream;

.field protected m:Lkrz;

.field protected n:C

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field private final u:[I

.field private final v:[I

.field private final w:Ljava/lang/StringBuilder;

.field private x:Ljava/lang/StringBuilder;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 380
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lkry;->c:[J

    .line 583
    new-array v0, v4, [I

    sput-object v0, Lkry;->d:[I

    .line 587
    const/16 v0, 0x31

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v4

    const-string/jumbo v1, "\r"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\n"

    aput-object v1, v0, v6

    const-string/jumbo v1, ","

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "Mon"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "Tue"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Wed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Thu"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "Fri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "Sat"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "Sun"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "Jan"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "Feb"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "Mar"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "Apr"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "May"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "Jun"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "Jul"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "Dec"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "UT"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "GMT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "EST"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "EDT"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "CST"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "CDT"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "MST"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "MDT"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "PST"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "PDT"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    aput-object v3, v0, v1

    const/16 v1, 0x24

    aput-object v3, v0, v1

    const/16 v1, 0x25

    aput-object v3, v0, v1

    const/16 v1, 0x26

    aput-object v3, v0, v1

    const/16 v1, 0x27

    aput-object v3, v0, v1

    const/16 v1, 0x28

    aput-object v3, v0, v1

    const/16 v1, 0x29

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    aput-object v3, v0, v1

    const/16 v1, 0x30

    aput-object v3, v0, v1

    sput-object v0, Lkry;->e:[Ljava/lang/String;

    .line 598
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string/jumbo v1, "INCOMMENT"

    aput-object v1, v0, v5

    const-string/jumbo v1, "NESTED_COMMENT"

    aput-object v1, v0, v6

    sput-object v0, Lkry;->f:[Ljava/lang/String;

    .line 605
    const/16 v0, 0x31

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lkry;->g:[I

    .line 609
    new-array v0, v5, [J

    const-wide v2, 0x400fffffffffL

    aput-wide v2, v0, v4

    sput-object v0, Lkry;->i:[J

    .line 612
    new-array v0, v5, [J

    const-wide v2, 0x5000000000L

    aput-wide v2, v0, v4

    sput-object v0, Lkry;->j:[J

    .line 615
    new-array v0, v5, [J

    const-wide v2, 0x1000000000L

    aput-wide v2, v0, v4

    sput-object v0, Lkry;->k:[J

    .line 618
    new-array v0, v5, [J

    const-wide v2, 0x3fa000000000L

    aput-wide v2, v0, v4

    sput-object v0, Lkry;->l:[J

    return-void

    .line 380
    .line 605
    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        -0x1
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lkrz;)V
    .locals 2
    .param p1, "stream"    # Lkrz;

    .prologue
    const/4 v1, 0x0

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lkry;->b:Ljava/io/PrintStream;

    .line 622
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lkry;->u:[I

    .line 623
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lkry;->v:[I

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lkry;->w:Ljava/lang/StringBuilder;

    .line 625
    iget-object v0, p0, Lkry;->w:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lkry;->x:Ljava/lang/StringBuilder;

    .line 698
    iput v1, p0, Lkry;->o:I

    .line 699
    iput v1, p0, Lkry;->p:I

    .line 633
    iput-object p1, p0, Lkry;->m:Lkrz;

    .line 634
    return-void
.end method

.method private a(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "kind"    # I

    .prologue
    .line 69
    iput p2, p0, Lkry;->t:I

    .line 70
    iput p1, p0, Lkry;->s:I

    .line 71
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final a(IJ)I
    .locals 6
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    const-wide v0, 0x7fe7cf7f0L

    const-wide/16 v4, 0x0

    const/16 v3, 0x23

    const/4 v2, -0x1

    .line 39
    packed-switch p1, :pswitch_data_0

    .line 60
    :cond_0
    :goto_0
    return v2

    .line 42
    :pswitch_0
    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 44
    iput v3, p0, Lkry;->t:I

    goto :goto_0

    .line 49
    :pswitch_1
    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 51
    iget v0, p0, Lkry;->s:I

    if-nez v0, :cond_0

    .line 53
    iput v3, p0, Lkry;->t:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lkry;->s:I

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(J)I
    .locals 7
    .param p1, "active0"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 123
    :try_start_0
    iget-object v1, p0, Lkry;->m:Lkrz;

    invoke-virtual {v1}, Lkrz;->a()C

    move-result v1

    iput-char v1, p0, Lkry;->n:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    iget-char v1, p0, Lkry;->n:C

    sparse-switch v1, :sswitch_data_0

    .line 159
    :cond_0
    invoke-direct {p0, v6, p1, p2}, Lkry;->b(IJ)I

    move-result v0

    :goto_0
    return v0

    .line 125
    :catch_0
    move-exception v1

    invoke-direct {p0, v6, p1, p2}, Lkry;->a(IJ)I

    goto :goto_0

    .line 131
    :sswitch_0
    const-wide v0, 0x550000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lkry;->a(JJ)I

    move-result v0

    goto :goto_0

    .line 133
    :sswitch_1
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, p1, p2, v0, v1}, Lkry;->a(JJ)I

    move-result v0

    goto :goto_0

    .line 135
    :sswitch_2
    const-wide v0, 0x2a8000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lkry;->a(JJ)I

    move-result v0

    goto :goto_0

    .line 137
    :sswitch_3
    const-wide/32 v2, 0x2000000

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 138
    const/16 v1, 0x19

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto :goto_0

    .line 141
    :sswitch_4
    const-wide/32 v0, 0xaa00

    invoke-direct {p0, p1, p2, v0, v1}, Lkry;->a(JJ)I

    move-result v0

    goto :goto_0

    .line 143
    :sswitch_5
    const-wide/32 v0, 0x100000

    invoke-direct {p0, p1, p2, v0, v1}, Lkry;->a(JJ)I

    move-result v0

    goto :goto_0

    .line 145
    :sswitch_6
    const-wide/32 v0, 0x481040

    invoke-direct {p0, p1, p2, v0, v1}, Lkry;->a(JJ)I

    move-result v0

    goto :goto_0

    .line 147
    :sswitch_7
    const-wide/16 v0, 0x80

    invoke-direct {p0, p1, p2, v0, v1}, Lkry;->a(JJ)I

    move-result v0

    goto :goto_0

    .line 149
    :sswitch_8
    const-wide/32 v0, 0x200010

    invoke-direct {p0, p1, p2, v0, v1}, Lkry;->a(JJ)I

    move-result v0

    goto :goto_0

    .line 151
    :sswitch_9
    const-wide/16 v0, 0x4000

    invoke-direct {p0, p1, p2, v0, v1}, Lkry;->a(JJ)I

    move-result v0

    goto :goto_0

    .line 153
    :sswitch_a
    const-wide/16 v0, 0x100

    invoke-direct {p0, p1, p2, v0, v1}, Lkry;->a(JJ)I

    move-result v0

    goto :goto_0

    .line 155
    :sswitch_b
    const-wide/32 v0, 0x70420

    invoke-direct {p0, p1, p2, v0, v1}, Lkry;->a(JJ)I

    move-result v0

    goto/16 :goto_0

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x4d -> :sswitch_1
        0x53 -> :sswitch_2
        0x54 -> :sswitch_3
        0x61 -> :sswitch_4
        0x63 -> :sswitch_5
        0x65 -> :sswitch_6
        0x68 -> :sswitch_7
        0x6f -> :sswitch_8
        0x70 -> :sswitch_9
        0x72 -> :sswitch_a
        0x75 -> :sswitch_b
    .end sparse-switch
.end method

.method private a(JJ)I
    .locals 7
    .param p1, "old0"    # J
    .param p3, "active0"    # J

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v0, 0x2

    .line 163
    and-long/2addr p3, p1

    cmp-long v1, p3, v4

    if-nez v1, :cond_0

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lkry;->b(IJ)I

    move-result v0

    .line 261
    :goto_0
    return v0

    .line 165
    :cond_0
    :try_start_0
    iget-object v1, p0, Lkry;->m:Lkrz;

    invoke-virtual {v1}, Lkrz;->a()C

    move-result v1

    iput-char v1, p0, Lkry;->n:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    iget-char v1, p0, Lkry;->n:C

    sparse-switch v1, :sswitch_data_0

    .line 261
    :cond_1
    invoke-direct {p0, v6, p3, p4}, Lkry;->b(IJ)I

    move-result v0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    invoke-direct {p0, v6, p3, p4}, Lkry;->a(IJ)I

    goto :goto_0

    .line 173
    :sswitch_0
    const-wide/32 v2, 0x4000000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 174
    const/16 v1, 0x1a

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto :goto_0

    .line 175
    :cond_2
    const-wide/32 v2, 0x8000000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 176
    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto :goto_0

    .line 177
    :cond_3
    const-wide/32 v2, 0x10000000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 178
    const/16 v1, 0x1c

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto :goto_0

    .line 179
    :cond_4
    const-wide/32 v2, 0x20000000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 180
    const/16 v1, 0x1d

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto :goto_0

    .line 181
    :cond_5
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    .line 182
    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto :goto_0

    .line 183
    :cond_6
    const-wide v2, 0x80000000L

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    .line 184
    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 185
    :cond_7
    const-wide v2, 0x100000000L

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8

    .line 186
    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 187
    :cond_8
    const-wide v2, 0x200000000L

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_9

    .line 188
    const/16 v1, 0x21

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 189
    :cond_9
    const-wide v2, 0x400000000L

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 190
    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 193
    :sswitch_1
    const-wide/16 v2, 0x1000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 194
    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 197
    :sswitch_2
    const-wide/32 v2, 0x400000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 198
    const/16 v1, 0x16

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 201
    :sswitch_3
    const-wide/16 v2, 0x40

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 202
    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 205
    :sswitch_4
    const-wide/16 v2, 0x20

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 206
    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 209
    :sswitch_5
    const-wide/32 v2, 0x40000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 210
    const/16 v1, 0x12

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 213
    :sswitch_6
    const-wide/16 v2, 0x100

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 214
    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 217
    :sswitch_7
    const-wide/32 v2, 0x20000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 218
    const/16 v1, 0x11

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 221
    :sswitch_8
    const-wide/16 v2, 0x10

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_a

    .line 222
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 223
    :cond_a
    const-wide/16 v2, 0x400

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b

    .line 224
    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 225
    :cond_b
    const-wide/16 v2, 0x800

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_c

    .line 226
    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 227
    :cond_c
    const-wide/32 v2, 0x10000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 228
    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 231
    :sswitch_9
    const-wide/32 v2, 0x80000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 232
    const/16 v1, 0x13

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 235
    :sswitch_a
    const-wide/16 v2, 0x2000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_d

    .line 236
    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 237
    :cond_d
    const-wide/16 v2, 0x4000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 238
    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 241
    :sswitch_b
    const-wide/16 v2, 0x200

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_e

    .line 242
    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 243
    :cond_e
    const-wide/32 v2, 0x100000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 244
    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 247
    :sswitch_c
    const-wide/16 v2, 0x80

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 248
    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 251
    :sswitch_d
    const-wide/32 v2, 0x200000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 252
    const/16 v1, 0x15

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 255
    :sswitch_e
    const-wide/32 v2, 0x8000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 256
    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lkry;->a(II)I

    move-result v0

    goto/16 :goto_0

    .line 170
    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_0
        0x62 -> :sswitch_1
        0x63 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_4
        0x67 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6c -> :sswitch_7
        0x6e -> :sswitch_8
        0x70 -> :sswitch_9
        0x72 -> :sswitch_a
        0x74 -> :sswitch_b
        0x75 -> :sswitch_c
        0x76 -> :sswitch_d
        0x79 -> :sswitch_e
    .end sparse-switch
.end method

.method private a(I)V
    .locals 3
    .param p1, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 850
    iget-object v0, p0, Lkry;->u:[I

    aget v0, v0, p1

    iget v1, p0, Lkry;->r:I

    if-eq v0, v1, :cond_0

    .line 852
    iget-object v0, p0, Lkry;->v:[I

    iget v1, p0, Lkry;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkry;->q:I

    aput p1, v0, v1

    .line 853
    iget-object v0, p0, Lkry;->u:[I

    iget v1, p0, Lkry;->r:I

    aput v1, v0, p1

    .line 855
    :cond_0
    return-void
.end method

.method private b(II)I
    .locals 10
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 265
    const/4 v4, 0x0

    .line 266
    .local v4, "startsAt":I
    const/4 v5, 0x4

    iput v5, p0, Lkry;->q:I

    .line 267
    const/4 v0, 0x1

    .line 268
    .local v0, "i":I
    iget-object v5, p0, Lkry;->v:[I

    const/4 v6, 0x0

    aput p1, v5, v6

    .line 269
    const v1, 0x7fffffff

    .line 272
    .local v1, "kind":I
    :goto_0
    iget v5, p0, Lkry;->r:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lkry;->r:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_0

    .line 273
    invoke-direct {p0}, Lkry;->b()V

    .line 274
    :cond_0
    iget-char v5, p0, Lkry;->n:C

    const/16 v6, 0x40

    if-ge v5, v6, :cond_9

    .line 276
    const-wide/16 v6, 0x1

    iget-char v5, p0, Lkry;->n:C

    shl-long v2, v6, v5

    .line 279
    .local v2, "l":J
    :cond_1
    iget-object v5, p0, Lkry;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v5, v5, v0

    packed-switch v5, :pswitch_data_0

    .line 314
    :cond_2
    :goto_1
    :pswitch_0
    if-ne v0, v4, :cond_1

    .line 343
    .end local v2    # "l":J
    :cond_3
    :goto_2
    const v5, 0x7fffffff

    if-eq v1, v5, :cond_4

    .line 345
    iput v1, p0, Lkry;->t:I

    .line 346
    iput p2, p0, Lkry;->s:I

    .line 347
    const v1, 0x7fffffff

    .line 349
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 350
    iget v0, p0, Lkry;->q:I

    iput v4, p0, Lkry;->q:I

    rsub-int/lit8 v4, v4, 0x4

    if-ne v0, v4, :cond_c

    .line 353
    :goto_3
    return p2

    .line 282
    .restart local v2    # "l":J
    :pswitch_1
    const-wide/high16 v6, 0x3ff000000000000L

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_6

    .line 284
    const/16 v5, 0x2e

    if-le v1, v5, :cond_5

    .line 285
    const/16 v1, 0x2e

    .line 286
    :cond_5
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lkry;->a(I)V

    goto :goto_1

    .line 288
    :cond_6
    const-wide v6, 0x100000200L

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_8

    .line 290
    const/16 v5, 0x24

    if-le v1, v5, :cond_7

    .line 291
    const/16 v1, 0x24

    .line 292
    :cond_7
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lkry;->a(I)V

    goto :goto_1

    .line 294
    :cond_8
    const-wide v6, 0x280000000000L

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 296
    const/16 v5, 0x18

    if-le v1, v5, :cond_2

    .line 297
    const/16 v1, 0x18

    goto :goto_1

    .line 301
    :pswitch_2
    const-wide v6, 0x100000200L

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 303
    const/16 v1, 0x24

    .line 304
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lkry;->a(I)V

    goto :goto_1

    .line 307
    :pswitch_3
    const-wide/high16 v6, 0x3ff000000000000L

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 309
    const/16 v1, 0x2e

    .line 310
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lkry;->a(I)V

    goto/16 :goto_1

    .line 316
    .end local v2    # "l":J
    :cond_9
    iget-char v5, p0, Lkry;->n:C

    const/16 v6, 0x80

    if-ge v5, v6, :cond_3

    .line 318
    const-wide/16 v6, 0x1

    iget-char v5, p0, Lkry;->n:C

    and-int/lit8 v5, v5, 0x3f

    shl-long v2, v6, v5

    .line 321
    .restart local v2    # "l":J
    :cond_a
    iget-object v5, p0, Lkry;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v5, v5, v0

    packed-switch v5, :pswitch_data_1

    .line 329
    :cond_b
    :goto_4
    if-ne v0, v4, :cond_a

    goto/16 :goto_2

    .line 324
    :pswitch_4
    const-wide v6, 0x7fffbfe07fffbfeL

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_b

    .line 325
    const/16 v1, 0x23

    goto :goto_4

    .line 352
    .end local v2    # "l":J
    :cond_c
    :try_start_0
    iget-object v5, p0, Lkry;->m:Lkrz;

    invoke-virtual {v5}, Lkrz;->a()C

    move-result v5

    iput-char v5, p0, Lkry;->n:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 353
    :catch_0
    move-exception v5

    goto/16 :goto_3

    .line 279
    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method private final b(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lkry;->a(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lkry;->b(II)I

    move-result v0

    return v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 653
    const v2, -0x7fffffff

    iput v2, p0, Lkry;->r:I

    .line 654
    const/4 v0, 0x4

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 655
    iget-object v2, p0, Lkry;->u:[I

    const/high16 v3, -0x80000000

    aput v3, v2, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 656
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-void
.end method

.method private c(II)I
    .locals 10
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 385
    const/4 v3, 0x0

    .line 386
    .local v3, "startsAt":I
    const/4 v6, 0x3

    iput v6, p0, Lkry;->q:I

    .line 387
    const/4 v0, 0x1

    .line 388
    .local v0, "i":I
    iget-object v6, p0, Lkry;->v:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 389
    const v2, 0x7fffffff

    .line 392
    .local v2, "kind":I
    :goto_0
    iget v6, p0, Lkry;->r:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lkry;->r:I

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_0

    .line 393
    invoke-direct {p0}, Lkry;->b()V

    .line 394
    :cond_0
    iget-char v6, p0, Lkry;->n:C

    const/16 v7, 0x40

    if-ge v6, v7, :cond_4

    .line 399
    :cond_1
    iget-object v6, p0, Lkry;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_0

    .line 411
    :cond_2
    :goto_1
    if-ne v0, v3, :cond_1

    .line 458
    :goto_2
    const v6, 0x7fffffff

    if-eq v2, v6, :cond_3

    .line 460
    iput v2, p0, Lkry;->t:I

    .line 461
    iput p2, p0, Lkry;->s:I

    .line 462
    const v2, 0x7fffffff

    .line 464
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 465
    iget v0, p0, Lkry;->q:I

    iput v3, p0, Lkry;->q:I

    rsub-int/lit8 v3, v3, 0x3

    if-ne v0, v3, :cond_b

    .line 468
    :goto_3
    return p2

    .line 402
    :pswitch_0
    const/16 v6, 0x29

    if-le v2, v6, :cond_2

    .line 403
    const/16 v2, 0x29

    goto :goto_1

    .line 406
    :pswitch_1
    const/16 v6, 0x27

    if-le v2, v6, :cond_2

    .line 407
    const/16 v2, 0x27

    goto :goto_1

    .line 413
    :cond_4
    iget-char v6, p0, Lkry;->n:C

    const/16 v7, 0x80

    if-ge v6, v7, :cond_8

    .line 418
    :cond_5
    iget-object v6, p0, Lkry;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_1

    .line 436
    :cond_6
    :goto_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 421
    :pswitch_2
    const/16 v6, 0x29

    if-le v2, v6, :cond_7

    .line 422
    const/16 v2, 0x29

    .line 423
    :cond_7
    iget-char v6, p0, Lkry;->n:C

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_6

    .line 424
    iget-object v6, p0, Lkry;->v:[I

    iget v7, p0, Lkry;->q:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lkry;->q:I

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_4

    .line 427
    :pswitch_3
    const/16 v6, 0x27

    if-le v2, v6, :cond_6

    .line 428
    const/16 v2, 0x27

    goto :goto_4

    .line 431
    :pswitch_4
    const/16 v6, 0x29

    if-le v2, v6, :cond_6

    .line 432
    const/16 v2, 0x29

    goto :goto_4

    .line 440
    :cond_8
    iget-char v6, p0, Lkry;->n:C

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v1, v6, 0x6

    .line 441
    .local v1, "i2":I
    const-wide/16 v6, 0x1

    iget-char v8, p0, Lkry;->n:C

    and-int/lit8 v8, v8, 0x3f

    shl-long v4, v6, v8

    .line 444
    .local v4, "l2":J
    :cond_9
    iget-object v6, p0, Lkry;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_2

    .line 456
    :cond_a
    :goto_5
    if-ne v0, v3, :cond_9

    goto/16 :goto_2

    .line 447
    :pswitch_5
    sget-object v6, Lkry;->c:[J

    aget-wide v6, v6, v1

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    const/16 v6, 0x29

    if-le v2, v6, :cond_a

    .line 448
    const/16 v2, 0x29

    goto :goto_5

    .line 451
    :pswitch_6
    sget-object v6, Lkry;->c:[J

    aget-wide v6, v6, v1

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    const/16 v6, 0x27

    if-le v2, v6, :cond_a

    .line 452
    const/16 v2, 0x27

    goto :goto_5

    .line 467
    .end local v1    # "i2":I
    .end local v4    # "l2":J
    :cond_b
    :try_start_0
    iget-object v6, p0, Lkry;->m:Lkrz;

    invoke-virtual {v6}, Lkrz;->a()C

    move-result v6

    iput-char v6, p0, Lkry;->n:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 468
    :catch_0
    move-exception v6

    goto/16 :goto_3

    .line 399
    .line 418
    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private c()Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 682
    sget-object v7, Lkry;->e:[Ljava/lang/String;

    iget v8, p0, Lkry;->t:I

    aget-object v5, v7, v8

    .line 683
    .local v5, "im":Ljava/lang/String;
    if-nez v5, :cond_0

    iget-object v7, p0, Lkry;->m:Lkrz;

    invoke-virtual {v7}, Lkrz;->f()Ljava/lang/String;

    move-result-object v2

    .line 684
    .local v2, "curTokenImage":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lkry;->m:Lkrz;

    invoke-virtual {v7}, Lkrz;->e()I

    move-result v1

    .line 685
    .local v1, "beginLine":I
    iget-object v7, p0, Lkry;->m:Lkrz;

    invoke-virtual {v7}, Lkrz;->d()I

    move-result v0

    .line 686
    .local v0, "beginColumn":I
    iget-object v7, p0, Lkry;->m:Lkrz;

    invoke-virtual {v7}, Lkrz;->c()I

    move-result v4

    .line 687
    .local v4, "endLine":I
    iget-object v7, p0, Lkry;->m:Lkrz;

    invoke-virtual {v7}, Lkrz;->b()I

    move-result v3

    .line 688
    .local v3, "endColumn":I
    iget v7, p0, Lkry;->t:I

    invoke-static {v7, v2}, Lorg/apache/james/mime4j/field/datetime/parser/Token;->newToken(ILjava/lang/String;)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v6

    .line 690
    .local v6, "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    iput v1, v6, Lorg/apache/james/mime4j/field/datetime/parser/Token;->beginLine:I

    .line 691
    iput v4, v6, Lorg/apache/james/mime4j/field/datetime/parser/Token;->endLine:I

    .line 692
    iput v0, v6, Lorg/apache/james/mime4j/field/datetime/parser/Token;->beginColumn:I

    .line 693
    iput v3, v6, Lorg/apache/james/mime4j/field/datetime/parser/Token;->endColumn:I

    .line 695
    return-object v6

    .end local v0    # "beginColumn":I
    .end local v1    # "beginLine":I
    .end local v2    # "curTokenImage":Ljava/lang/String;
    .end local v3    # "endColumn":I
    .end local v4    # "endLine":I
    .end local v6    # "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :cond_0
    move-object v2, v5

    .line 683
    goto :goto_0
.end method

.method private d(II)I
    .locals 10
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 497
    const/4 v3, 0x0

    .line 498
    .local v3, "startsAt":I
    const/4 v6, 0x3

    iput v6, p0, Lkry;->q:I

    .line 499
    const/4 v0, 0x1

    .line 500
    .local v0, "i":I
    iget-object v6, p0, Lkry;->v:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 501
    const v2, 0x7fffffff

    .line 504
    .local v2, "kind":I
    :goto_0
    iget v6, p0, Lkry;->r:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lkry;->r:I

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_0

    .line 505
    invoke-direct {p0}, Lkry;->b()V

    .line 506
    :cond_0
    iget-char v6, p0, Lkry;->n:C

    const/16 v7, 0x40

    if-ge v6, v7, :cond_4

    .line 511
    :cond_1
    iget-object v6, p0, Lkry;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_0

    .line 523
    :cond_2
    :goto_1
    if-ne v0, v3, :cond_1

    .line 570
    :goto_2
    const v6, 0x7fffffff

    if-eq v2, v6, :cond_3

    .line 572
    iput v2, p0, Lkry;->t:I

    .line 573
    iput p2, p0, Lkry;->s:I

    .line 574
    const v2, 0x7fffffff

    .line 576
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 577
    iget v0, p0, Lkry;->q:I

    iput v3, p0, Lkry;->q:I

    rsub-int/lit8 v3, v3, 0x3

    if-ne v0, v3, :cond_b

    .line 580
    :goto_3
    return p2

    .line 514
    :pswitch_0
    const/16 v6, 0x2d

    if-le v2, v6, :cond_2

    .line 515
    const/16 v2, 0x2d

    goto :goto_1

    .line 518
    :pswitch_1
    const/16 v6, 0x2a

    if-le v2, v6, :cond_2

    .line 519
    const/16 v2, 0x2a

    goto :goto_1

    .line 525
    :cond_4
    iget-char v6, p0, Lkry;->n:C

    const/16 v7, 0x80

    if-ge v6, v7, :cond_8

    .line 530
    :cond_5
    iget-object v6, p0, Lkry;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_1

    .line 548
    :cond_6
    :goto_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 533
    :pswitch_2
    const/16 v6, 0x2d

    if-le v2, v6, :cond_7

    .line 534
    const/16 v2, 0x2d

    .line 535
    :cond_7
    iget-char v6, p0, Lkry;->n:C

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_6

    .line 536
    iget-object v6, p0, Lkry;->v:[I

    iget v7, p0, Lkry;->q:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lkry;->q:I

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_4

    .line 539
    :pswitch_3
    const/16 v6, 0x2a

    if-le v2, v6, :cond_6

    .line 540
    const/16 v2, 0x2a

    goto :goto_4

    .line 543
    :pswitch_4
    const/16 v6, 0x2d

    if-le v2, v6, :cond_6

    .line 544
    const/16 v2, 0x2d

    goto :goto_4

    .line 552
    :cond_8
    iget-char v6, p0, Lkry;->n:C

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v1, v6, 0x6

    .line 553
    .local v1, "i2":I
    const-wide/16 v6, 0x1

    iget-char v8, p0, Lkry;->n:C

    and-int/lit8 v8, v8, 0x3f

    shl-long v4, v6, v8

    .line 556
    .local v4, "l2":J
    :cond_9
    iget-object v6, p0, Lkry;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_2

    .line 568
    :cond_a
    :goto_5
    if-ne v0, v3, :cond_9

    goto/16 :goto_2

    .line 559
    :pswitch_5
    sget-object v6, Lkry;->c:[J

    aget-wide v6, v6, v1

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    const/16 v6, 0x2d

    if-le v2, v6, :cond_a

    .line 560
    const/16 v2, 0x2d

    goto :goto_5

    .line 563
    :pswitch_6
    sget-object v6, Lkry;->c:[J

    aget-wide v6, v6, v1

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    const/16 v6, 0x2a

    if-le v2, v6, :cond_a

    .line 564
    const/16 v2, 0x2a

    goto :goto_5

    .line 579
    .end local v1    # "i2":I
    .end local v4    # "l2":J
    :cond_b
    :try_start_0
    iget-object v6, p0, Lkry;->m:Lkrz;

    invoke-virtual {v6}, Lkrz;->a()C

    move-result v6

    iput-char v6, p0, Lkry;->n:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 580
    :catch_0
    move-exception v6

    goto/16 :goto_3

    .line 511
    .line 530
    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final a()Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 708
    const/4 v11, 0x0

    .line 710
    .local v11, "specialToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    const/4 v8, 0x0

    .line 717
    .local v8, "curPos":I
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lkry;->m:Lkrz;

    .line 1153
    const/4 v2, -0x1

    iput v2, v0, Lkrz;->c:I

    .line 1154
    invoke-virtual {v0}, Lkrz;->a()C

    move-result v2

    .line 1155
    iget v6, v0, Lkrz;->d:I

    iput v6, v0, Lkrz;->c:I

    .line 717
    iput-char v2, p0, Lkry;->n:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    iget-object v0, p0, Lkry;->w:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lkry;->x:Ljava/lang/StringBuilder;

    .line 727
    iget-object v0, p0, Lkry;->x:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 728
    const/4 v0, 0x0

    iput v0, p0, Lkry;->y:I

    .line 732
    :goto_1
    iget v0, p0, Lkry;->o:I

    packed-switch v0, :pswitch_data_0

    .line 750
    :goto_2
    iget v0, p0, Lkry;->t:I

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_9

    .line 752
    iget v0, p0, Lkry;->s:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v8, :cond_1

    .line 753
    iget-object v0, p0, Lkry;->m:Lkrz;

    iget v2, p0, Lkry;->s:I

    sub-int v2, v8, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lkrz;->a(I)V

    .line 754
    :cond_1
    sget-object v0, Lkry;->i:[J

    iget v2, p0, Lkry;->t:I

    shr-int/lit8 v2, v2, 0x6

    aget-wide v6, v0, v2

    const-wide/16 v12, 0x1

    iget v0, p0, Lkry;->t:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v12, v0

    and-long/2addr v6, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v6, v12

    if-eqz v0, :cond_3

    .line 756
    invoke-direct {p0}, Lkry;->c()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v9

    .line 757
    .local v9, "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    iput-object v11, v9, Lorg/apache/james/mime4j/field/datetime/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 758
    sget-object v0, Lkry;->g:[I

    iget v2, p0, Lkry;->t:I

    aget v0, v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 759
    sget-object v0, Lkry;->g:[I

    iget v2, p0, Lkry;->t:I

    aget v0, v0, v2

    iput v0, p0, Lkry;->o:I

    :cond_2
    move-object v10, v9

    .line 760
    .end local v9    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .local v10, "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :goto_3
    return-object v10

    .line 721
    .end local v10    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput v0, p0, Lkry;->t:I

    .line 722
    invoke-direct {p0}, Lkry;->c()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v9

    .line 723
    .restart local v9    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    iput-object v11, v9, Lorg/apache/james/mime4j/field/datetime/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-object v10, v9

    .line 724
    .end local v9    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .restart local v10    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    goto :goto_3

    .line 735
    .end local v10    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :pswitch_0
    const v0, 0x7fffffff

    iput v0, p0, Lkry;->t:I

    .line 736
    const/4 v0, 0x0

    iput v0, p0, Lkry;->s:I

    .line 2075
    iget-char v0, p0, Lkry;->n:C

    sparse-switch v0, :sswitch_data_0

    .line 2118
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lkry;->b(II)I

    move-result v8

    .line 738
    :goto_4
    goto :goto_2

    .line 2078
    :sswitch_0
    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lkry;->a(II)I

    move-result v8

    goto :goto_4

    .line 2080
    :sswitch_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lkry;->a(II)I

    move-result v8

    goto :goto_4

    .line 2082
    :sswitch_2
    const/4 v0, 0x0

    const/16 v2, 0x25

    invoke-direct {p0, v0, v2}, Lkry;->a(II)I

    move-result v8

    goto :goto_4

    .line 2084
    :sswitch_3
    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lkry;->a(II)I

    move-result v8

    goto :goto_4

    .line 2086
    :sswitch_4
    const/4 v0, 0x0

    const/16 v2, 0x17

    invoke-direct {p0, v0, v2}, Lkry;->a(II)I

    move-result v8

    goto :goto_4

    .line 2088
    :sswitch_5
    const-wide/32 v6, 0x44000

    invoke-direct {p0, v6, v7}, Lkry;->a(J)I

    move-result v8

    goto :goto_4

    .line 2090
    :sswitch_6
    const-wide/32 v6, 0x60000000

    invoke-direct {p0, v6, v7}, Lkry;->a(J)I

    move-result v8

    goto :goto_4

    .line 2092
    :sswitch_7
    const-wide/32 v6, 0x400000

    invoke-direct {p0, v6, v7}, Lkry;->a(J)I

    move-result v8

    goto :goto_4

    .line 2094
    :sswitch_8
    const-wide/32 v6, 0x18000000

    invoke-direct {p0, v6, v7}, Lkry;->a(J)I

    move-result v8

    goto :goto_4

    .line 2096
    :sswitch_9
    const-wide/16 v6, 0x1100

    invoke-direct {p0, v6, v7}, Lkry;->a(J)I

    move-result v8

    goto :goto_4

    .line 2098
    :sswitch_a
    const-wide/32 v6, 0x4000000

    invoke-direct {p0, v6, v7}, Lkry;->a(J)I

    move-result v8

    goto :goto_4

    .line 2100
    :sswitch_b
    const-wide/32 v6, 0x30800

    invoke-direct {p0, v6, v7}, Lkry;->a(J)I

    move-result v8

    goto :goto_4

    .line 2102
    :sswitch_c
    const-wide v6, 0x18000a010L

    invoke-direct {p0, v6, v7}, Lkry;->a(J)I

    move-result v8

    goto :goto_4

    .line 2104
    :sswitch_d
    const-wide/32 v6, 0x200000

    invoke-direct {p0, v6, v7}, Lkry;->a(J)I

    move-result v8

    goto/16 :goto_4

    .line 2106
    :sswitch_e
    const-wide/32 v6, 0x100000

    invoke-direct {p0, v6, v7}, Lkry;->a(J)I

    move-result v8

    goto/16 :goto_4

    .line 2108
    :sswitch_f
    const-wide v6, 0x600000000L

    invoke-direct {p0, v6, v7}, Lkry;->a(J)I

    move-result v8

    goto/16 :goto_4

    .line 2110
    :sswitch_10
    const-wide/32 v6, 0x80600

    invoke-direct {p0, v6, v7}, Lkry;->a(J)I

    move-result v8

    goto/16 :goto_4

    .line 2112
    :sswitch_11
    const-wide/16 v6, 0xa0

    invoke-direct {p0, v6, v7}, Lkry;->a(J)I

    move-result v8

    goto/16 :goto_4

    .line 2114
    :sswitch_12
    const-wide/32 v6, 0x2000000

    invoke-direct {p0, v6, v7}, Lkry;->a(J)I

    move-result v8

    goto/16 :goto_4

    .line 2116
    :sswitch_13
    const-wide/16 v6, 0x40

    invoke-direct {p0, v6, v7}, Lkry;->a(J)I

    move-result v8

    goto/16 :goto_4

    .line 740
    :pswitch_1
    const v0, 0x7fffffff

    iput v0, p0, Lkry;->t:I

    .line 741
    const/4 v0, 0x0

    iput v0, p0, Lkry;->s:I

    .line 2370
    iget-char v0, p0, Lkry;->n:C

    packed-switch v0, :pswitch_data_1

    .line 2377
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lkry;->c(II)I

    move-result v8

    .line 743
    :goto_5
    goto/16 :goto_2

    .line 2373
    :pswitch_2
    const/4 v0, 0x0

    const/16 v2, 0x28

    invoke-direct {p0, v0, v2}, Lkry;->a(II)I

    move-result v8

    goto :goto_5

    .line 2375
    :pswitch_3
    const/4 v0, 0x0

    const/16 v2, 0x26

    invoke-direct {p0, v0, v2}, Lkry;->a(II)I

    move-result v8

    goto :goto_5

    .line 745
    :pswitch_4
    const v0, 0x7fffffff

    iput v0, p0, Lkry;->t:I

    .line 746
    const/4 v0, 0x0

    iput v0, p0, Lkry;->s:I

    .line 2485
    iget-char v0, p0, Lkry;->n:C

    packed-switch v0, :pswitch_data_2

    .line 2492
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lkry;->d(II)I

    move-result v8

    .line 747
    :goto_6
    goto/16 :goto_2

    .line 2488
    :pswitch_5
    const/4 v0, 0x0

    const/16 v2, 0x2b

    invoke-direct {p0, v0, v2}, Lkry;->a(II)I

    move-result v8

    goto :goto_6

    .line 2490
    :pswitch_6
    const/4 v0, 0x0

    const/16 v2, 0x2c

    invoke-direct {p0, v0, v2}, Lkry;->a(II)I

    move-result v8

    goto :goto_6

    .line 762
    :cond_3
    sget-object v0, Lkry;->j:[J

    iget v2, p0, Lkry;->t:I

    shr-int/lit8 v2, v2, 0x6

    aget-wide v6, v0, v2

    const-wide/16 v12, 0x1

    iget v0, p0, Lkry;->t:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v12, v0

    and-long/2addr v6, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v6, v12

    if-eqz v0, :cond_6

    .line 764
    sget-object v0, Lkry;->k:[J

    iget v2, p0, Lkry;->t:I

    shr-int/lit8 v2, v2, 0x6

    aget-wide v6, v0, v2

    const-wide/16 v12, 0x1

    iget v0, p0, Lkry;->t:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v12, v0

    and-long/2addr v6, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v6, v12

    if-eqz v0, :cond_4

    .line 766
    invoke-direct {p0}, Lkry;->c()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v9

    .line 767
    .restart local v9    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    if-nez v11, :cond_5

    .line 768
    move-object v11, v9

    .line 775
    .end local v9    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :cond_4
    :goto_7
    sget-object v0, Lkry;->g:[I

    iget v2, p0, Lkry;->t:I

    aget v0, v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 776
    sget-object v0, Lkry;->g:[I

    iget v2, p0, Lkry;->t:I

    aget v0, v0, v2

    iput v0, p0, Lkry;->o:I

    goto/16 :goto_0

    .line 771
    .restart local v9    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :cond_5
    iput-object v11, v9, Lorg/apache/james/mime4j/field/datetime/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 772
    iput-object v9, v11, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-object v11, v9

    goto :goto_7

    .line 2816
    .end local v9    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :cond_6
    iget v0, p0, Lkry;->y:I

    iget v2, p0, Lkry;->s:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lkry;->z:I

    add-int/2addr v0, v2

    iput v0, p0, Lkry;->y:I

    .line 2817
    iget v0, p0, Lkry;->t:I

    packed-switch v0, :pswitch_data_3

    .line 780
    :cond_7
    :goto_8
    :pswitch_7
    sget-object v0, Lkry;->g:[I

    iget v2, p0, Lkry;->t:I

    aget v0, v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    .line 781
    sget-object v0, Lkry;->g:[I

    iget v2, p0, Lkry;->t:I

    aget v0, v0, v2

    iput v0, p0, Lkry;->o:I

    .line 782
    :cond_8
    const/4 v8, 0x0

    .line 783
    const v0, 0x7fffffff

    iput v0, p0, Lkry;->t:I

    .line 785
    :try_start_1
    iget-object v0, p0, Lkry;->m:Lkrz;

    invoke-virtual {v0}, Lkrz;->a()C

    move-result v0

    iput-char v0, p0, Lkry;->n:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 790
    :cond_9
    iget-object v0, p0, Lkry;->m:Lkrz;

    invoke-virtual {v0}, Lkrz;->c()I

    move-result v3

    .line 791
    .local v3, "error_line":I
    iget-object v0, p0, Lkry;->m:Lkrz;

    invoke-virtual {v0}, Lkrz;->b()I

    move-result v4

    .line 792
    .local v4, "error_column":I
    const/4 v5, 0x0

    .line 793
    .local v5, "error_after":Ljava/lang/String;
    const/4 v1, 0x0

    .line 794
    .local v1, "EOFSeen":Z
    :try_start_2
    iget-object v0, p0, Lkry;->m:Lkrz;

    invoke-virtual {v0}, Lkrz;->a()C

    iget-object v0, p0, Lkry;->m:Lkrz;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lkrz;->a(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 805
    :goto_9
    if-nez v1, :cond_a

    .line 806
    iget-object v0, p0, Lkry;->m:Lkrz;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lkrz;->a(I)V

    .line 807
    const/4 v0, 0x1

    if-gt v8, v0, :cond_e

    const-string/jumbo v5, ""

    .line 809
    :cond_a
    :goto_a
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;

    iget v2, p0, Lkry;->o:I

    iget-char v6, p0, Lkry;->n:C

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    .line 2820
    .end local v1    # "EOFSeen":Z
    .end local v3    # "error_line":I
    .end local v4    # "error_column":I
    .end local v5    # "error_after":Ljava/lang/String;
    :pswitch_8
    iget-object v0, p0, Lkry;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkry;->m:Lkrz;

    iget v6, p0, Lkry;->y:I

    invoke-virtual {v2, v6}, Lkrz;->b(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2821
    const/4 v0, 0x0

    iput v0, p0, Lkry;->y:I

    .line 2822
    iget-object v0, p0, Lkry;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkry;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 2825
    :pswitch_9
    iget-object v0, p0, Lkry;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkry;->m:Lkrz;

    iget v6, p0, Lkry;->y:I

    invoke-virtual {v2, v6}, Lkrz;->b(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2826
    const/4 v0, 0x0

    iput v0, p0, Lkry;->y:I

    .line 2827
    const/4 v0, 0x1

    sput v0, Lkry;->a:I

    goto/16 :goto_8

    .line 2830
    :pswitch_a
    iget-object v0, p0, Lkry;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkry;->m:Lkrz;

    iget v6, p0, Lkry;->y:I

    invoke-virtual {v2, v6}, Lkrz;->b(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2831
    const/4 v0, 0x0

    iput v0, p0, Lkry;->y:I

    .line 2832
    iget-object v0, p0, Lkry;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkry;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 2835
    :pswitch_b
    iget-object v0, p0, Lkry;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkry;->m:Lkrz;

    iget v6, p0, Lkry;->y:I

    invoke-virtual {v2, v6}, Lkrz;->b(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2836
    const/4 v0, 0x0

    iput v0, p0, Lkry;->y:I

    .line 2837
    sget v0, Lkry;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lkry;->a:I

    goto/16 :goto_8

    .line 2840
    :pswitch_c
    iget-object v0, p0, Lkry;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkry;->m:Lkrz;

    iget v6, p0, Lkry;->y:I

    invoke-virtual {v2, v6}, Lkrz;->b(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2841
    const/4 v0, 0x0

    iput v0, p0, Lkry;->y:I

    .line 2842
    sget v0, Lkry;->a:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lkry;->a:I

    if-nez v0, :cond_7

    .line 3671
    const/4 v0, 0x1

    iput v0, p0, Lkry;->o:I

    goto/16 :goto_8

    .line 796
    .restart local v1    # "EOFSeen":Z
    .restart local v3    # "error_line":I
    .restart local v4    # "error_column":I
    .restart local v5    # "error_after":Ljava/lang/String;
    :catch_2
    move-exception v0

    const/4 v1, 0x1

    .line 797
    const/4 v0, 0x1

    if-gt v8, v0, :cond_c

    const-string/jumbo v5, ""

    .line 798
    :goto_b
    iget-char v0, p0, Lkry;->n:C

    const/16 v2, 0xa

    if-eq v0, v2, :cond_b

    iget-char v0, p0, Lkry;->n:C

    const/16 v2, 0xd

    if-ne v0, v2, :cond_d

    .line 799
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 800
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 797
    :cond_c
    iget-object v0, p0, Lkry;->m:Lkrz;

    invoke-virtual {v0}, Lkrz;->f()Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    .line 803
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    .line 807
    :cond_e
    iget-object v0, p0, Lkry;->m:Lkrz;

    invoke-virtual {v0}, Lkrz;->f()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_a

    .line 732
    .line 2075
    .line 2370
    .line 2485
    .line 2817
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x28 -> :sswitch_2
        0x2c -> :sswitch_3
        0x3a -> :sswitch_4
        0x41 -> :sswitch_5
        0x43 -> :sswitch_6
        0x44 -> :sswitch_7
        0x45 -> :sswitch_8
        0x46 -> :sswitch_9
        0x47 -> :sswitch_a
        0x4a -> :sswitch_b
        0x4d -> :sswitch_c
        0x4e -> :sswitch_d
        0x4f -> :sswitch_e
        0x50 -> :sswitch_f
        0x53 -> :sswitch_10
        0x54 -> :sswitch_11
        0x55 -> :sswitch_12
        0x57 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x27
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
