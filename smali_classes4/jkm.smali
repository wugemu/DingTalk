.class public final Ljkm;
.super Ljava/lang/Object;
.source "TaoMediaProfile.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v0, p0, Ljkm;->a:I

    .line 79
    iput v0, p0, Ljkm;->b:I

    .line 80
    iput v1, p0, Ljkm;->c:I

    .line 81
    iput v1, p0, Ljkm;->d:I

    .line 82
    iput v2, p0, Ljkm;->e:I

    .line 83
    iput v2, p0, Ljkm;->f:I

    .line 84
    const v0, 0x5dc00

    iput v0, p0, Ljkm;->g:I

    .line 85
    const/16 v0, 0x14

    iput v0, p0, Ljkm;->h:I

    .line 86
    const/16 v0, 0x280

    iput v0, p0, Ljkm;->i:I

    .line 87
    const/16 v0, 0x1e0

    iput v0, p0, Ljkm;->j:I

    .line 88
    const/4 v0, 0x3

    iput v0, p0, Ljkm;->k:I

    .line 89
    iput v1, p0, Ljkm;->l:I

    .line 90
    const v0, 0xac44

    iput v0, p0, Ljkm;->m:I

    .line 91
    const/16 v0, 0x10

    iput v0, p0, Ljkm;->n:I

    .line 92
    iput v2, p0, Ljkm;->o:I

    .line 93
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 130
    const/16 v0, 0x10

    .line 131
    .local v0, "bitsPerSample":I
    iget v1, p0, Ljkm;->o:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 132
    const/16 v0, 0x8

    .line 134
    :cond_0
    return v0
.end method

.method public final b()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 140
    iget v1, p0, Ljkm;->n:I

    sparse-switch v1, :sswitch_data_0

    .line 155
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unsupported channel configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :sswitch_0
    const/4 v0, 0x1

    .line 158
    .local v0, "mChannelCount":I
    :goto_0
    return v0

    .line 148
    .end local v0    # "mChannelCount":I
    :sswitch_1
    const/4 v0, 0x2

    .line 149
    .restart local v0    # "mChannelCount":I
    goto :goto_0

    .line 151
    .end local v0    # "mChannelCount":I
    :sswitch_2
    const/4 v0, 0x2

    .line 152
    .restart local v0    # "mChannelCount":I
    goto :goto_0

    .line 140
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x30 -> :sswitch_2
    .end sparse-switch
.end method
