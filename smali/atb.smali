.class final Latb;
.super Ljava/lang/Object;
.source "Duration.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)V
    .locals 12
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/calendar/data/protocol/DateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 69
    iput v8, p0, Latb;->a:I

    .line 70
    iput v7, p0, Latb;->b:I

    .line 71
    iput v7, p0, Latb;->c:I

    .line 72
    iput v7, p0, Latb;->d:I

    .line 73
    iput v7, p0, Latb;->e:I

    .line 74
    iput v7, p0, Latb;->f:I

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 77
    .local v2, "len":I
    if-gtz v2, :cond_1

    .line 140
    :cond_0
    return-void

    .line 81
    :cond_1
    const/4 v1, 0x0

    .line 84
    .local v1, "index":I
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 85
    .local v0, "c":C
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_3

    .line 86
    const/4 v4, -0x1

    iput v4, p0, Latb;->a:I

    .line 87
    add-int/lit8 v1, v1, 0x1

    .line 92
    :cond_2
    :goto_0
    if-lt v2, v1, :cond_0

    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 97
    const/16 v4, 0x50

    if-eq v0, v4, :cond_4

    .line 98
    new-instance v4, Lcom/alibaba/android/calendar/data/protocol/DateException;

    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v6, "Duration.parse(str=\'"

    aput-object v6, v5, v7

    aput-object p1, v5, v8

    const-string/jumbo v6, "\') expected \'P\' at index="

    aput-object v6, v5, v9

    .line 102
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 98
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/android/calendar/data/protocol/DateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 88
    :cond_3
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 106
    const/16 v4, 0x54

    if-ne v0, v4, :cond_5

    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 110
    :cond_5
    const/4 v3, 0x0

    .line 111
    .local v3, "n":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 112
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 113
    const/16 v4, 0x30

    if-lt v0, v4, :cond_7

    const/16 v4, 0x39

    if-gt v0, v4, :cond_7

    .line 114
    mul-int/lit8 v3, v3, 0xa

    .line 115
    add-int/lit8 v4, v0, -0x30

    add-int/2addr v3, v4

    .line 111
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 116
    :cond_7
    const/16 v4, 0x57

    if-ne v0, v4, :cond_8

    .line 117
    iput v3, p0, Latb;->b:I

    .line 118
    const/4 v3, 0x0

    goto :goto_2

    .line 119
    :cond_8
    const/16 v4, 0x48

    if-ne v0, v4, :cond_9

    .line 120
    iput v3, p0, Latb;->d:I

    .line 121
    const/4 v3, 0x0

    goto :goto_2

    .line 122
    :cond_9
    const/16 v4, 0x4d

    if-ne v0, v4, :cond_a

    .line 123
    iput v3, p0, Latb;->e:I

    .line 124
    const/4 v3, 0x0

    goto :goto_2

    .line 125
    :cond_a
    const/16 v4, 0x53

    if-ne v0, v4, :cond_b

    .line 126
    iput v3, p0, Latb;->f:I

    .line 127
    const/4 v3, 0x0

    goto :goto_2

    .line 128
    :cond_b
    const/16 v4, 0x44

    if-ne v0, v4, :cond_c

    .line 129
    iput v3, p0, Latb;->c:I

    .line 130
    const/4 v3, 0x0

    goto :goto_2

    .line 131
    :cond_c
    const/16 v4, 0x54

    if-eq v0, v4, :cond_6

    .line 132
    new-instance v4, Lcom/alibaba/android/calendar/data/protocol/DateException;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "Duration.parse(str=\'"

    aput-object v6, v5, v7

    aput-object p1, v5, v8

    const-string/jumbo v6, "\') unexpected char \'"

    aput-object v6, v5, v9

    .line 135
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const-string/jumbo v6, "\' at index="

    aput-object v6, v5, v11

    const/4 v6, 0x5

    .line 137
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 132
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/android/calendar/data/protocol/DateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
