.class public final Laru;
.super Ljava/lang/Object;
.source "CalendarDiurnalViewBlock.java"


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Larv;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laxn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laru;->d:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laru;->c:Ljava/util/List;

    .line 25
    return-void
.end method

.method public static a(Laxn;)Laru;
    .locals 4
    .param p0, "event"    # Laxn;

    .prologue
    .line 28
    new-instance v0, Laru;

    invoke-direct {v0}, Laru;-><init>()V

    .line 29
    .local v0, "viewBlock":Laru;
    invoke-virtual {v0, p0}, Laru;->b(Laxn;)V

    .line 30
    invoke-interface {p0}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Laru;->a:J

    .line 31
    invoke-interface {p0}, Laxn;->getShowEndTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Laru;->b:J

    .line 32
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Laru;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 63
    iget-object v3, p0, Laru;->d:Ljava/util/List;

    invoke-static {v3}, Lavm;->b(Ljava/util/List;)V

    .line 65
    iget-object v3, p0, Laru;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxn;

    .line 66
    .local v0, "event":Laxn;
    if-eqz v0, :cond_0

    .line 70
    iget-object v4, p0, Laru;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    iget-object v4, p0, Laru;->c:Ljava/util/List;

    invoke-static {v0}, Larv;->a(Laxn;)Larv;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_1
    const/4 v1, 0x0

    .line 76
    .local v1, "hasAddToColumn":Z
    iget-object v4, p0, Laru;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Larv;

    .line 77
    .local v2, "viewColumn":Larv;
    if-eqz v2, :cond_2

    .line 81
    invoke-virtual {v2, v0}, Larv;->c(Laxn;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 82
    invoke-virtual {v2, v0}, Larv;->b(Laxn;)V

    .line 83
    const/4 v1, 0x1

    .line 88
    .end local v2    # "viewColumn":Larv;
    :cond_3
    if-nez v1, :cond_0

    .line 89
    iget-object v4, p0, Laru;->c:Ljava/util/List;

    invoke-static {v0}, Larv;->a(Laxn;)Larv;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v0    # "event":Laxn;
    .end local v1    # "hasAddToColumn":Z
    :cond_4
    return-void
.end method

.method public final b(Laxn;)V
    .locals 4
    .param p1, "event"    # Laxn;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 44
    if-nez p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Laru;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-interface {p1}, Laxn;->getShowEndTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Laru;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 50
    invoke-interface {p1}, Laxn;->getShowEndTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laru;->b:J

    .line 52
    :cond_2
    invoke-interface {p1}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Laru;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 53
    invoke-interface {p1}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laru;->a:J

    goto :goto_0
.end method

.method public final c()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 95
    iget-object v9, p0, Laru;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 134
    :cond_0
    return-void

    .line 99
    :cond_1
    iget-object v9, p0, Laru;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 100
    .local v7, "size":I
    const/high16 v9, 0x3f800000    # 1.0f

    int-to-float v10, v7

    div-float v1, v9, v10

    .line 102
    .local v1, "columnWidthPercentage":F
    const/4 v0, 0x0

    .local v0, "columnIndex":I
    :goto_0
    if-ge v0, v7, :cond_0

    .line 103
    iget-object v9, p0, Laru;->c:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Larv;

    .line 104
    .local v8, "viewColumn":Larv;
    if-eqz v8, :cond_5

    .line 1049
    iget-object v3, v8, Larv;->a:Ljava/util/List;

    .line 109
    .local v3, "eventList":Ljava/util/List;, "Ljava/util/List<Laxn;>;"
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 113
    int-to-float v9, v0

    mul-float v5, v9, v1

    .line 114
    .local v5, "horizontalStartPercentage":F
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laxn;

    .line 115
    .local v2, "event":Laxn;
    if-eqz v2, :cond_2

    .line 119
    add-float v4, v5, v1

    .line 120
    .local v4, "horizontalEndPercentage":F
    add-int/lit8 v6, v0, 0x1

    .local v6, "otherColumn":I
    :goto_2
    if-ge v6, v7, :cond_4

    .line 121
    iget-object v9, p0, Laru;->c:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 125
    iget-object v9, p0, Laru;->c:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Larv;

    invoke-virtual {v9, v2}, Larv;->c(Laxn;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 126
    add-float/2addr v4, v1

    .line 120
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 131
    :cond_4
    new-instance v9, Larw;

    invoke-direct {v9, v2, v5, v4}, Larw;-><init>(Laxn;FF)V

    .line 2045
    iget-object v11, v8, Larv;->b:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    .end local v2    # "event":Laxn;
    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Laxn;>;"
    .end local v4    # "horizontalEndPercentage":F
    .end local v5    # "horizontalStartPercentage":F
    .end local v6    # "otherColumn":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
