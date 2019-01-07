.class public Lcom/alibaba/alimei/sdk/displayer/comparator/FolderComparator;
.super Ljava/lang/Object;
.source "FolderComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/alimei/sdk/model/FolderModel;",
        ">;"
    }
.end annotation


# static fields
.field public static instance:Lcom/alibaba/alimei/sdk/displayer/comparator/FolderComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/alibaba/alimei/sdk/displayer/comparator/FolderComparator;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/displayer/comparator/FolderComparator;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/displayer/comparator/FolderComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/FolderComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public compare(Lcom/alibaba/alimei/sdk/model/FolderModel;Lcom/alibaba/alimei/sdk/model/FolderModel;)I
    .locals 10
    .param p1, "lhs"    # Lcom/alibaba/alimei/sdk/model/FolderModel;
    .param p2, "rhs"    # Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 24
    if-ne p1, p2, :cond_0

    .line 25
    const/4 v8, 0x0

    .line 131
    :goto_0
    return v8

    .line 28
    :cond_0
    iget v8, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    if-nez v8, :cond_1

    .line 29
    const/16 v8, -0x9

    goto :goto_0

    .line 32
    :cond_1
    iget v8, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    if-nez v8, :cond_2

    .line 33
    const/16 v8, 0x9

    goto :goto_0

    .line 36
    :cond_2
    iget v8, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v9, -0x3

    if-ne v8, v9, :cond_3

    .line 37
    const/4 v8, -0x8

    goto :goto_0

    .line 40
    :cond_3
    iget v8, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v9, -0x3

    if-ne v8, v9, :cond_4

    .line 41
    const/16 v8, 0x8

    goto :goto_0

    .line 44
    :cond_4
    iget v8, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_5

    .line 45
    const/4 v8, -0x7

    goto :goto_0

    .line 47
    :cond_5
    iget v8, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_6

    .line 48
    const/4 v8, 0x7

    goto :goto_0

    .line 53
    :cond_6
    iget-boolean v8, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPop:Z

    if-eqz v8, :cond_7

    .line 54
    const/16 v8, 0x3e8

    goto :goto_0

    .line 56
    :cond_7
    iget-boolean v8, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPop:Z

    if-eqz v8, :cond_8

    .line 57
    const/16 v8, -0x3e8

    goto :goto_0

    .line 61
    :cond_8
    iget v8, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_9

    .line 62
    const/16 v8, -0x3e7

    goto :goto_0

    .line 64
    :cond_9
    iget v8, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_a

    .line 65
    const/16 v8, 0x3e7

    goto :goto_0

    .line 69
    :cond_a
    iget v8, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_b

    .line 70
    const/16 v8, -0x3e6

    goto :goto_0

    .line 72
    :cond_b
    iget v8, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_c

    .line 73
    const/16 v8, 0x3e6

    goto :goto_0

    .line 77
    :cond_c
    iget v8, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_d

    .line 78
    const/16 v8, -0x3e5

    goto :goto_0

    .line 80
    :cond_d
    iget v8, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_e

    .line 81
    const/16 v8, 0x3e5

    goto/16 :goto_0

    .line 85
    :cond_e
    iget v8, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_f

    .line 86
    const/16 v8, -0x3e4

    goto/16 :goto_0

    .line 88
    :cond_f
    iget v8, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_10

    .line 89
    const/16 v8, 0x3e4

    goto/16 :goto_0

    .line 93
    :cond_10
    iget v8, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_11

    .line 94
    const/16 v8, -0x3e3

    goto/16 :goto_0

    .line 96
    :cond_11
    iget v8, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_12

    .line 97
    const/16 v8, 0x3e3

    goto/16 :goto_0

    .line 100
    :cond_12
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->mOrder:J

    .line 101
    .local v2, "lOrder":J
    iget-wide v6, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->mOrder:J

    .line 103
    .local v6, "rOrder":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_15

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_15

    .line 104
    cmp-long v8, v2, v6

    if-nez v8, :cond_13

    .line 105
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 106
    :cond_13
    cmp-long v8, v2, v6

    if-lez v8, :cond_14

    .line 107
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 108
    :cond_14
    cmp-long v8, v2, v6

    if-gez v8, :cond_15

    .line 109
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 113
    :cond_15
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_16

    .line 114
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 117
    :cond_16
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_17

    .line 118
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 121
    :cond_17
    cmp-long v8, v2, v6

    if-nez v8, :cond_19

    .line 122
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v0

    .line 123
    .local v0, "lId":J
    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v4

    .line 124
    .local v4, "rId":J
    cmp-long v8, v0, v4

    if-gez v8, :cond_18

    .line 125
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 126
    :cond_18
    cmp-long v8, v0, v4

    if-lez v8, :cond_19

    .line 127
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 131
    .end local v0    # "lId":J
    .end local v4    # "rId":J
    :cond_19
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    check-cast p2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/sdk/displayer/comparator/FolderComparator;->compare(Lcom/alibaba/alimei/sdk/model/FolderModel;Lcom/alibaba/alimei/sdk/model/FolderModel;)I

    move-result v0

    return v0
.end method
