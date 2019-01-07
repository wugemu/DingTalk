.class public Lcom/ta/utdid2/android/utils/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/android/utils/Base64$Encoder;,
        Lcom/ta/utdid2/android/utils/Base64$Decoder;,
        Lcom/ta/utdid2/android/utils/Base64$Coder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CRLF:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final NO_CLOSE:I = 0x10

.field public static final NO_PADDING:I = 0x1

.field public static final NO_WRAP:I = 0x2

.field public static final URL_SAFE:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/ta/utdid2/android/utils/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ta/utdid2/android/utils/Base64;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .prologue
    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ta/utdid2/android/utils/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/ta/utdid2/android/utils/Base64;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BIII)[B
    .locals 5
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 154
    new-instance v0, Lcom/ta/utdid2/android/utils/Base64$Decoder;

    mul-int/lit8 v2, p2, 0x3

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    invoke-direct {v0, p3, v2}, Lcom/ta/utdid2/android/utils/Base64$Decoder;-><init>(I[B)V

    .line 156
    .local v0, "decoder":Lcom/ta/utdid2/android/utils/Base64$Decoder;
    const/4 v2, 0x1

    invoke-virtual {v0, p0, p1, p2, v2}, Lcom/ta/utdid2/android/utils/Base64$Decoder;->process([BIIZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "bad base-64"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_0
    iget v2, v0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->op:I

    iget-object v3, v0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->output:[B

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 162
    iget-object v1, v0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->output:[B

    .line 169
    :goto_0
    return-object v1

    .line 167
    :cond_1
    iget v2, v0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->op:I

    new-array v1, v2, [B

    .line 168
    .local v1, "temp":[B
    iget-object v2, v0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->output:[B

    iget v3, v0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->op:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static encode([BI)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .prologue
    .line 486
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/ta/utdid2/android/utils/Base64;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIII)[B
    .locals 5
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Assert"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 501
    new-instance v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;

    const/4 v2, 0x0

    invoke-direct {v0, p3, v2}, Lcom/ta/utdid2/android/utils/Base64$Encoder;-><init>(I[B)V

    .line 504
    .local v0, "encoder":Lcom/ta/utdid2/android/utils/Base64$Encoder;
    div-int/lit8 v2, p2, 0x3

    mul-int/lit8 v1, v2, 0x4

    .line 507
    .local v1, "output_len":I
    iget-boolean v2, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_padding:Z

    if-eqz v2, :cond_2

    .line 508
    rem-int/lit8 v2, p2, 0x3

    if-lez v2, :cond_0

    .line 509
    add-int/lit8 v1, v1, 0x4

    .line 525
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v2, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_newline:Z

    if-eqz v2, :cond_1

    if-lez p2, :cond_1

    .line 526
    add-int/lit8 v2, p2, -0x1

    div-int/lit8 v2, v2, 0x39

    add-int/lit8 v4, v2, 0x1

    iget-boolean v2, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_cr:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    :goto_1
    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 530
    :cond_1
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->output:[B

    .line 531
    invoke-virtual {v0, p0, p1, p2, v3}, Lcom/ta/utdid2/android/utils/Base64$Encoder;->process([BIIZ)Z

    .line 533
    sget-boolean v2, Lcom/ta/utdid2/android/utils/Base64;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    iget v2, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->op:I

    if-eq v2, v1, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 512
    :cond_2
    rem-int/lit8 v2, p2, 0x3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 516
    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    .line 517
    goto :goto_0

    .line 519
    :pswitch_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_3
    move v2, v3

    .line 526
    goto :goto_1

    .line 535
    :cond_4
    iget-object v2, v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->output:[B

    return-object v2

    .line 512
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .prologue
    .line 450
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/ta/utdid2/android/utils/Base64;->encode([BI)[B

    move-result-object v2

    const-string/jumbo v3, "US-ASCII"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 451
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encodeToString([BIII)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .prologue
    .line 470
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/ta/utdid2/android/utils/Base64;->encode([BIII)[B

    move-result-object v2

    const-string/jumbo v3, "US-ASCII"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 471
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
