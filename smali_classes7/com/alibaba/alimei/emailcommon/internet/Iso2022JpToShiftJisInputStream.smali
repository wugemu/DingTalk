.class public final Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;
.super Ljava/io/InputStream;
.source "Iso2022JpToShiftJisInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream$Charset;
    }
.end annotation


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream$Charset;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 15
    sget-object v0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream$Charset;->ASCII:Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream$Charset;

    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;->b:Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream$Charset;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;->d:Z

    .line 21
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;->a:Ljava/io/InputStream;

    .line 22
    return-void
.end method


# virtual methods
.method public final read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v6, 0x42

    const/16 v8, 0x21

    const/16 v5, 0x7e

    const/4 v7, 0x0

    .line 27
    iget-boolean v4, p0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;->d:Z

    if-eqz v4, :cond_1

    .line 29
    iput-boolean v7, p0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;->d:Z

    .line 30
    iget v0, p0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;->c:I

    .line 83
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 33
    :cond_1
    iget-object v4, p0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 34
    .local v0, "in1":I
    const/16 v4, 0x1b

    if-ne v0, v4, :cond_3

    .line 36
    iget-object v4, p0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 37
    const/16 v4, 0x28

    if-ne v0, v4, :cond_8

    .line 39
    iget-object v4, p0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 40
    if-eq v0, v6, :cond_2

    const/16 v4, 0x4a

    if-ne v0, v4, :cond_6

    .line 41
    :cond_2
    sget-object v4, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream$Charset;->ASCII:Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream$Charset;

    iput-object v4, p0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;->b:Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream$Charset;

    .line 57
    :goto_1
    iget-object v4, p0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 60
    :cond_3
    const/16 v4, 0xa

    if-eq v0, v4, :cond_4

    const/16 v4, 0xd

    if-ne v0, v4, :cond_5

    .line 61
    :cond_4
    sget-object v4, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream$Charset;->ASCII:Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream$Charset;

    iput-object v4, p0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;->b:Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream$Charset;

    .line 63
    :cond_5
    if-lt v0, v8, :cond_0

    if-ge v0, v5, :cond_0

    .line 66
    sget-object v4, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream$1;->a:[I

    iget-object v6, p0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;->b:Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream$Charset;

    invoke-virtual {v6}, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream$Charset;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 85
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    .line 42
    :cond_6
    const/16 v4, 0x49

    if-ne v0, v4, :cond_7

    .line 43
    sget-object v4, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream$Charset;->JISX0201:Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream$Charset;

    iput-object v4, p0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;->b:Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream$Charset;

    goto :goto_1

    .line 45
    :cond_7
    new-instance v4, Ljava/nio/charset/MalformedInputException;

    invoke-direct {v4, v7}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v4

    .line 47
    :cond_8
    const/16 v4, 0x24

    if-ne v0, v4, :cond_b

    .line 49
    iget-object v4, p0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 50
    const/16 v4, 0x40

    if-eq v0, v4, :cond_9

    if-ne v0, v6, :cond_a

    .line 51
    :cond_9
    sget-object v4, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream$Charset;->JISX0208:Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream$Charset;

    iput-object v4, p0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;->b:Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream$Charset;

    goto :goto_1

    .line 53
    :cond_a
    new-instance v4, Ljava/nio/charset/MalformedInputException;

    invoke-direct {v4, v7}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v4

    .line 56
    :cond_b
    new-instance v4, Ljava/nio/charset/MalformedInputException;

    invoke-direct {v4, v7}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v4

    .line 71
    :pswitch_1
    add-int/lit16 v0, v0, 0x80

    goto/16 :goto_0

    .line 73
    :pswitch_2
    iget-object v4, p0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 74
    .local v1, "in2":I
    if-lt v1, v8, :cond_c

    if-lt v1, v5, :cond_d

    .line 75
    :cond_c
    new-instance v4, Ljava/nio/charset/MalformedInputException;

    invoke-direct {v4, v7}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v4

    .line 77
    :cond_d
    add-int/lit8 v4, v0, 0x1

    div-int/lit8 v6, v4, 0x2

    const/16 v4, 0x5f

    if-ge v0, v4, :cond_e

    const/16 v4, 0x70

    :goto_2
    add-int v2, v6, v4

    .line 78
    .local v2, "out1":I
    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_f

    move v4, v5

    :goto_3
    add-int v3, v1, v4

    .line 80
    .local v3, "out2":I
    iput v3, p0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;->c:I

    .line 81
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;->d:Z

    move v0, v2

    .line 83
    goto/16 :goto_0

    .line 77
    .end local v2    # "out1":I
    .end local v3    # "out2":I
    :cond_e
    const/16 v4, 0xb0

    goto :goto_2

    .line 78
    .restart local v2    # "out1":I
    :cond_f
    const/16 v4, 0x60

    if-ge v1, v4, :cond_10

    const/16 v4, 0x1f

    goto :goto_3

    :cond_10
    const/16 v4, 0x20

    goto :goto_3

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
