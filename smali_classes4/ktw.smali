.class public final Lktw;
.super Ljava/io/FilterInputStream;


# instance fields
.field private final a:I

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lktw;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lktw;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Lktw;->a:I

    iput-boolean p3, p0, Lktw;->b:Z

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lktw;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lktw;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method static a(Ljava/io/InputStream;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x1f

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit8 v2, v0, 0x7f

    if-nez v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "corrupted stream - invalid high tag number found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "EOF found inside tag value."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method private static a(Lkwe;)Lktv;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    new-instance v0, Lktw;

    invoke-direct {v0, p0}, Lktw;-><init>(Ljava/io/InputStream;)V

    .line 1000
    new-instance v1, Lktv;

    invoke-direct {v1}, Lktv;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lktw;->a()Lkvm;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lktv;->a(Lkva;)V

    goto :goto_0

    .line 0
    :cond_0
    return-object v1
.end method

.method static a(I[B)Lkvm;
    .locals 5

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lkwc;

    invoke-direct {v0, v4, p0, p1}, Lkwc;-><init>(ZI[B)V

    :goto_0
    return-object v0

    :pswitch_1
    aget-byte v1, p1, v4

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v2, v0, [B

    const/4 v0, 0x1

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lkuy;

    invoke-direct {v0, v2, v1}, Lkuy;-><init>([BI)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lkux;

    invoke-direct {v0, p1}, Lkux;-><init>([B)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lkuz;

    invoke-direct {v0, p1}, Lkuz;-><init>([B)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lkvc;

    invoke-direct {v0, p1}, Lkvc;-><init>([B)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lkvh;

    invoke-direct {v0, p1}, Lkvh;-><init>([B)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lkvg;

    invoke-direct {v0, p1}, Lkvg;-><init>([B)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lkvi;

    invoke-direct {v0, p1}, Lkvi;-><init>([B)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lkvj;

    invoke-direct {v0, p1}, Lkvj;-><init>([B)V

    goto :goto_0

    :pswitch_9
    sget-object v0, Lkvk;->a:Lkvk;

    goto :goto_0

    :pswitch_a
    new-instance v0, Lkvl;

    invoke-direct {v0, p1}, Lkvl;-><init>([B)V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lkvn;

    invoke-direct {v0, p1}, Lkvn;-><init>([B)V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lkvo;

    invoke-direct {v0, p1}, Lkvo;-><init>([B)V

    goto :goto_0

    :pswitch_d
    new-instance v0, Lkvr;

    invoke-direct {v0, p1}, Lkvr;-><init>([B)V

    goto :goto_0

    :pswitch_e
    new-instance v0, Lkvx;

    invoke-direct {v0, p1}, Lkvx;-><init>([B)V

    goto :goto_0

    :pswitch_f
    new-instance v0, Lkwb;

    invoke-direct {v0, p1}, Lkwb;-><init>([B)V

    goto/16 :goto_0

    :pswitch_10
    new-instance v0, Lkvz;

    invoke-direct {v0, p1}, Lkvz;-><init>([B)V

    goto/16 :goto_0

    :pswitch_11
    new-instance v0, Lkwa;

    invoke-direct {v0, p1}, Lkwa;-><init>([B)V

    goto/16 :goto_0

    :pswitch_12
    new-instance v0, Lkwd;

    invoke-direct {v0, p1}, Lkwd;-><init>([B)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_8
        :pswitch_1
        :pswitch_c
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_7
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_12
        :pswitch_6
        :pswitch_f
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private b()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lktw;->a:I

    invoke-static {p0, v0}, Lktw;->b(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method static b(Ljava/io/InputStream;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "EOF found when length expected"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v2, 0x80

    if-ne v0, v2, :cond_2

    const/4 v0, -0x1

    :cond_1
    return v0

    :cond_2
    const/16 v2, 0x7f

    if-le v0, v2, :cond_1

    and-int/lit8 v3, v0, 0x7f

    const/4 v0, 0x4

    if-le v3, v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DER length more than 4 bytes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v1

    :goto_0
    if-ge v1, v3, :cond_5

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-gez v2, :cond_4

    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "EOF found reading length"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_5
    if-gez v0, :cond_6

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "corrupted stream - negative length found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-lt v0, p1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "corrupted stream - out of bounds length found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Lkvm;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    invoke-virtual {p0}, Lktw;->read()I

    move-result v3

    if-gtz v3, :cond_1

    if-nez v3, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unexpected end-of-contents marker"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 2000
    :goto_0
    return-object v0

    .line 0
    :cond_1
    invoke-static {p0, v3}, Lktw;->a(Ljava/io/InputStream;I)I

    move-result v4

    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0}, Lktw;->b()I

    move-result v5

    if-gez v5, :cond_6

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "indefinite length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    new-instance v0, Lkwf;

    invoke-direct {v0, p0}, Lkwf;-><init>(Ljava/io/InputStream;)V

    and-int/lit8 v1, v3, 0x40

    if-eqz v1, :cond_4

    new-instance v1, Lkug;

    iget v2, p0, Lktw;->a:I

    invoke-direct {v1, v0, v2}, Lkug;-><init>(Ljava/io/InputStream;I)V

    new-instance v0, Lkuk;

    invoke-direct {v0, v4, v1}, Lkuk;-><init>(ILkug;)V

    invoke-virtual {v0}, Lkuk;->c()Lkvm;

    move-result-object v0

    goto :goto_0

    :cond_4
    and-int/lit16 v1, v3, 0x80

    if-eqz v1, :cond_5

    new-instance v1, Lkuu;

    invoke-direct {v1, v3, v4, v0}, Lkuu;-><init>(IILjava/io/InputStream;)V

    invoke-virtual {v1}, Lkuu;->c()Lkvm;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v1, Lkug;

    iget v2, p0, Lktw;->a:I

    invoke-direct {v1, v0, v2}, Lkug;-><init>(Ljava/io/InputStream;I)V

    sparse-switch v4, :sswitch_data_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unknown BER object encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v0, Lkun;

    invoke-direct {v0, v1}, Lkun;-><init>(Lkug;)V

    invoke-virtual {v0}, Lkun;->c()Lkvm;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    new-instance v0, Lkuq;

    invoke-direct {v0, v1}, Lkuq;-><init>(Lkug;)V

    invoke-virtual {v0}, Lkuq;->c()Lkvm;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    new-instance v0, Lkus;

    invoke-direct {v0, v1}, Lkus;-><init>(Lkug;)V

    invoke-virtual {v0}, Lkus;->c()Lkvm;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    new-instance v0, Lkve;

    invoke-direct {v0, v1}, Lkve;-><init>(Lkug;)V

    invoke-virtual {v0}, Lkve;->c()Lkvm;

    move-result-object v0

    goto/16 :goto_0

    .line 2000
    :cond_6
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    new-instance v6, Lkwe;

    invoke-direct {v6, p0, v5}, Lkwe;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v5, v3, 0x40

    if-eqz v5, :cond_8

    new-instance v1, Lkuw;

    invoke-virtual {v6}, Lkwe;->a()[B

    move-result-object v2

    invoke-direct {v1, v0, v4, v2}, Lkuw;-><init>(ZI[B)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_9

    new-instance v0, Lkuu;

    invoke-direct {v0, v3, v4, v6}, Lkuu;-><init>(IILjava/io/InputStream;)V

    invoke-virtual {v0}, Lkuu;->c()Lkvm;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    if-eqz v0, :cond_b

    sparse-switch v4, :sswitch_data_1

    new-instance v0, Lkwc;

    invoke-virtual {v6}, Lkwe;->a()[B

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lkwc;-><init>(ZI[B)V

    goto/16 :goto_0

    :sswitch_4
    new-instance v0, Lkul;

    invoke-static {v6}, Lktw;->a(Lkwe;)Lktv;

    move-result-object v1

    iget-object v1, v1, Lktv;->a:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lkul;-><init>(Ljava/util/Vector;)V

    goto/16 :goto_0

    :sswitch_5
    iget-boolean v0, p0, Lktw;->b:Z

    if-eqz v0, :cond_a

    new-instance v0, Lkwh;

    invoke-virtual {v6}, Lkwe;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lkwh;-><init>([B)V

    goto/16 :goto_0

    :cond_a
    invoke-static {v6}, Lktw;->a(Lkwe;)Lktv;

    move-result-object v0

    invoke-static {v0}, Lkvf;->a(Lktv;)Lkvs;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_6
    invoke-static {v6}, Lktw;->a(Lkwe;)Lktv;

    move-result-object v0

    invoke-static {v0, v2}, Lkvf;->a(Lktv;Z)Lkvu;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_7
    new-instance v0, Lkvd;

    invoke-static {v6}, Lktw;->a(Lkwe;)Lktv;

    move-result-object v1

    invoke-direct {v0, v1}, Lkvd;-><init>(Lktv;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v6}, Lkwe;->a()[B

    move-result-object v0

    invoke-static {v4, v0}, Lktw;->a(I[B)Lkvm;

    move-result-object v0

    goto/16 :goto_0

    .line 0
    .line 2000
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_4
        0x8 -> :sswitch_7
        0x10 -> :sswitch_5
        0x11 -> :sswitch_6
    .end sparse-switch
.end method
