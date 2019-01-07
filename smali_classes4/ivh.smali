.class public final Livh;
.super Ljava/lang/Object;
.source "ImageListUber.java"

# interfaces
.implements Live;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Livh$c;,
        Livh$a;,
        Livh$b;
    }
.end annotation


# instance fields
.field private final a:[Live;

.field private final b:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Livh$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:[J

.field private d:I

.field private e:[I

.field private f:I


# direct methods
.method public constructor <init>([Live;I)V
    .locals 8
    .param p1, "sublist"    # [Live;
    .param p2, "sort"    # I

    .prologue
    const/4 v7, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, [Live;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Live;

    iput-object v4, p0, Livh;->a:[Live;

    .line 55
    new-instance v5, Ljava/util/PriorityQueue;

    const/4 v6, 0x4

    const/4 v4, 0x1

    if-ne p2, v4, :cond_1

    new-instance v4, Livh$a;

    invoke-direct {v4, v7}, Livh$a;-><init>(B)V

    :goto_0
    invoke-direct {v5, v6, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v5, p0, Livh;->b:Ljava/util/PriorityQueue;

    .line 59
    const/16 v4, 0x10

    new-array v4, v4, [J

    iput-object v4, p0, Livh;->c:[J

    .line 60
    iput v7, p0, Livh;->d:I

    .line 61
    iget-object v4, p0, Livh;->a:[Live;

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Livh;->e:[I

    .line 62
    const/4 v4, -0x1

    iput v4, p0, Livh;->f:I

    .line 63
    iget-object v4, p0, Livh;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->clear()V

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Livh;->a:[Live;

    array-length v2, v4

    .local v2, "n":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 65
    iget-object v4, p0, Livh;->a:[Live;

    aget-object v1, v4, v0

    .line 66
    .local v1, "list":Live;
    new-instance v3, Livh$c;

    invoke-direct {v3, v1, v0}, Livh$c;-><init>(Live;I)V

    .line 67
    .local v3, "slot":Livh$c;
    invoke-virtual {v3}, Livh$c;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Livh;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v4, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    .end local v0    # "i":I
    .end local v1    # "list":Live;
    .end local v2    # "n":I
    .end local v3    # "slot":Livh$c;
    :cond_1
    new-instance v4, Livh$b;

    invoke-direct {v4, v7}, Livh$b;-><init>(B)V

    goto :goto_0

    .line 69
    .restart local v0    # "i":I
    .restart local v2    # "n":I
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)Livd;
    .locals 24
    .param p1, "index"    # I

    .prologue
    .line 100
    if-ltz p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Livh;->b()I

    move-result v17

    move/from16 v0, p1

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    .line 101
    :cond_0
    new-instance v17, Ljava/lang/IndexOutOfBoundsException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "index "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " out of range max is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 102
    invoke-virtual/range {p0 .. p0}, Livh;->b()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 105
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Livh;->e:[I

    .line 108
    .local v11, "skipCounts":[I
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v11, v0}, Ljava/util/Arrays;->fill([II)V

    .line 114
    const/4 v10, 0x0

    .line 118
    .local v10, "skipCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    move-object/from16 v0, p0

    iget v7, v0, Livh;->d:I

    .local v7, "n":I
    :goto_0
    if-ge v6, v7, :cond_6

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Livh;->c:[J

    move-object/from16 v17, v0

    aget-wide v14, v17, v6

    .line 121
    .local v14, "v":J
    const-wide/16 v18, -0x1

    and-long v18, v18, v14

    move-wide/from16 v0, v18

    long-to-int v8, v0

    .line 122
    .local v8, "offset":I
    const/16 v17, 0x20

    shr-long v18, v14, v17

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v16, v0

    .line 123
    .local v16, "which":I
    add-int v17, v10, v8

    move/from16 v0, v17

    move/from16 v1, p1

    if-le v0, v1, :cond_3

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Livh;->e:[I

    move-object/from16 v17, v0

    aget v17, v17, v16

    sub-int v18, p1, v10

    add-int v13, v17, v18

    .line 125
    .local v13, "subindex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Livh;->a:[Live;

    move-object/from16 v17, v0

    aget-object v17, v17, v16

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Live;->a(I)Livd;

    move-result-object v9

    .line 137
    .end local v8    # "offset":I
    .end local v13    # "subindex":I
    .end local v14    # "v":J
    .end local v16    # "which":I
    :cond_2
    :goto_1
    return-object v9

    .line 127
    .restart local v8    # "offset":I
    .restart local v14    # "v":J
    .restart local v16    # "which":I
    :cond_3
    add-int/2addr v10, v8

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Livh;->e:[I

    move-object/from16 v17, v0

    aget v18, v17, v16

    add-int v18, v18, v8

    aput v18, v17, v16

    .line 118
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 139
    .end local v8    # "offset":I
    .end local v14    # "v":J
    .end local v16    # "which":I
    .local v12, "slot":Livh$c;
    :cond_4
    invoke-virtual {v12}, Livh$c;->a()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Livh;->b:Ljava/util/PriorityQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 1144
    .end local v12    # "slot":Livh$c;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Livh;->b:Ljava/util/PriorityQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Livh$c;

    .line 1145
    if-nez v17, :cond_7

    const/4 v12, 0x0

    .line 133
    .restart local v12    # "slot":Livh$c;
    :goto_2
    if-nez v12, :cond_a

    const/4 v9, 0x0

    goto :goto_1

    .line 1146
    .end local v12    # "slot":Livh$c;
    :cond_7
    move-object/from16 v0, v17

    iget v0, v0, Livh$c;->a:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Livh;->f:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1147
    move-object/from16 v0, p0

    iget v0, v0, Livh;->d:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Livh;->c:[J

    move-object/from16 v19, v0

    aget-wide v20, v19, v18

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    aput-wide v20, v19, v18

    :goto_3
    move-object/from16 v12, v17

    .line 1158
    goto :goto_2

    .line 1150
    :cond_8
    move-object/from16 v0, v17

    iget v0, v0, Livh$c;->a:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Livh;->f:I

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Livh;->c:[J

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Livh;->d:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 1152
    move-object/from16 v0, p0

    iget v0, v0, Livh;->d:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v18, v0

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Livh;->c:[J

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Livh;->d:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v18

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1154
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Livh;->c:[J

    .line 1156
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Livh;->c:[J

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Livh;->d:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Livh;->d:I

    move-object/from16 v0, p0

    iget v0, v0, Livh;->f:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v22, 0x20

    shl-long v20, v20, v22

    const-wide/16 v22, 0x1

    or-long v20, v20, v22

    aput-wide v20, v18, v19

    goto/16 :goto_3

    .line 134
    .restart local v12    # "slot":Livh$c;
    :cond_a
    move/from16 v0, p1

    if-ne v10, v0, :cond_4

    .line 135
    iget-object v9, v12, Livh$c;->c:Livd;

    .line 136
    .local v9, "result":Livd;
    invoke-virtual {v12}, Livh$c;->a()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Livh;->b:Ljava/util/PriorityQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public final a(Landroid/net/Uri;)Livd;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 162
    iget-object v3, p0, Livh;->a:[Live;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 163
    .local v1, "sublist":Live;
    invoke-interface {v1, p1}, Live;->a(Landroid/net/Uri;)Livd;

    move-result-object v0

    .line 164
    .local v0, "image":Livd;
    if-eqz v0, :cond_0

    .line 166
    .end local v0    # "image":Livd;
    .end local v1    # "sublist":Live;
    :goto_1
    return-object v0

    .line 162
    .restart local v0    # "image":Livd;
    .restart local v1    # "sublist":Live;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "image":Livd;
    .end local v1    # "sublist":Live;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 291
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Livh;->a:[Live;

    array-length v1, v2

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 292
    iget-object v2, p0, Livh;->a:[Live;

    aget-object v2, v2, v0

    invoke-interface {v2}, Live;->a()V

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "count":I
    iget-object v3, p0, Livh;->a:[Live;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 82
    .local v1, "subList":Live;
    invoke-interface {v1}, Live;->b()I

    move-result v5

    add-int/2addr v0, v5

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "subList":Live;
    :cond_0
    return v0
.end method
