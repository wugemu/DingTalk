.class public final Lagg;
.super Ljava/lang/Object;
.source "Duration.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lagg;->a:I

    .line 41
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 143
    iget v2, p0, Lagg;->a:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    .line 144
    .local v0, "factor":J
    const v2, 0x93a80

    iget v3, p0, Lagg;->b:I

    mul-int/2addr v2, v3

    const v3, 0x15180

    iget v4, p0, Lagg;->c:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lagg;->d:I

    mul-int/lit16 v3, v3, 0xe10

    add-int/2addr v2, v3

    iget v3, p0, Lagg;->e:I

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    iget v3, p0, Lagg;->f:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/sdk/calendar/common/DateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/16 v6, 0x54

    const/4 v5, 0x0

    .line 49
    const/4 v4, 0x1

    iput v4, p0, Lagg;->a:I

    .line 50
    iput v5, p0, Lagg;->b:I

    .line 51
    iput v5, p0, Lagg;->c:I

    .line 52
    iput v5, p0, Lagg;->d:I

    .line 53
    iput v5, p0, Lagg;->e:I

    .line 54
    iput v5, p0, Lagg;->f:I

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 57
    .local v2, "len":I
    const/4 v1, 0x0

    .line 60
    .local v1, "index":I
    if-gtz v2, :cond_1

    .line 124
    :cond_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 65
    .local v0, "c":C
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_3

    .line 66
    const/4 v4, -0x1

    iput v4, p0, Lagg;->a:I

    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 73
    :cond_2
    :goto_0
    if-lt v2, v1, :cond_0

    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 78
    const/16 v4, 0x50

    if-eq v0, v4, :cond_4

    .line 79
    new-instance v4, Lcom/alibaba/alimei/sdk/calendar/common/DateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Duration.parse(str=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\') expected \'P\' at index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/alimei/sdk/calendar/common/DateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 69
    :cond_3
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 85
    if-ne v0, v6, :cond_5

    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 89
    :cond_5
    const/4 v3, 0x0

    .line 90
    .local v3, "n":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 91
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 92
    const/16 v4, 0x30

    if-lt v0, v4, :cond_7

    const/16 v4, 0x39

    if-gt v0, v4, :cond_7

    .line 93
    mul-int/lit8 v3, v3, 0xa

    .line 94
    add-int/lit8 v4, v0, -0x30

    add-int/2addr v3, v4

    .line 90
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    :cond_7
    const/16 v4, 0x57

    if-ne v0, v4, :cond_8

    .line 97
    iput v3, p0, Lagg;->b:I

    .line 98
    const/4 v3, 0x0

    goto :goto_2

    .line 100
    :cond_8
    const/16 v4, 0x48

    if-ne v0, v4, :cond_9

    .line 101
    iput v3, p0, Lagg;->d:I

    .line 102
    const/4 v3, 0x0

    goto :goto_2

    .line 104
    :cond_9
    const/16 v4, 0x4d

    if-ne v0, v4, :cond_a

    .line 105
    iput v3, p0, Lagg;->e:I

    .line 106
    const/4 v3, 0x0

    goto :goto_2

    .line 108
    :cond_a
    const/16 v4, 0x53

    if-ne v0, v4, :cond_b

    .line 109
    iput v3, p0, Lagg;->f:I

    .line 110
    const/4 v3, 0x0

    goto :goto_2

    .line 112
    :cond_b
    const/16 v4, 0x44

    if-ne v0, v4, :cond_c

    .line 113
    iput v3, p0, Lagg;->c:I

    .line 114
    const/4 v3, 0x0

    goto :goto_2

    .line 116
    :cond_c
    if-eq v0, v6, :cond_6

    .line 119
    new-instance v4, Lcom/alibaba/alimei/sdk/calendar/common/DateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Duration.parse(str=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\') unexpected char \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' at index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/alimei/sdk/calendar/common/DateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
