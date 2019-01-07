.class public Lcom/amap/api/mapcore/util/dj;
.super Lcom/amap/api/mapcore/util/di;
.source "GLAnimationSet.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore/util/di;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/amap/api/mapcore/util/dn;

.field private x:J


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/di;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/dj;->a:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dj;->c:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Lcom/amap/api/mapcore/util/dn;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/dn;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dj;->w:Lcom/amap/api/mapcore/util/dn;

    .line 42
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/dj;->a(IZ)V

    .line 43
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dj;->p()V

    .line 44
    return-void
.end method

.method private a(IZ)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    if-eqz p2, :cond_0

    .line 64
    iget v0, p0, Lcom/amap/api/mapcore/util/dj;->a:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/amap/api/mapcore/util/dj;->a:I

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/dj;->a:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/dj;->a:I

    goto :goto_0
.end method

.method private p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/dj;->k:J

    .line 72
    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/amap/api/mapcore/util/di;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dj;->m()Lcom/amap/api/mapcore/util/dj;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 5

    .prologue
    .line 128
    iget v0, p0, Lcom/amap/api/mapcore/util/dj;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/amap/api/mapcore/util/dj;->a:I

    .line 129
    invoke-super {p0, p1, p2}, Lcom/amap/api/mapcore/util/di;->a(J)V

    .line 130
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/dj;->l:J

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/dj;->m:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/dj;->x:J

    .line 131
    return-void
.end method

.method public a(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 140
    iget-object v2, p0, Lcom/amap/api/mapcore/util/dj;->c:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/amap/api/mapcore/util/di;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget v2, p0, Lcom/amap/api/mapcore/util/dj;->a:I

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_3

    move v2, v1

    .line 143
    :goto_0
    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/amap/api/mapcore/util/di;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/di;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    iget v2, p0, Lcom/amap/api/mapcore/util/dj;->a:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/amap/api/mapcore/util/dj;->a:I

    .line 147
    :cond_0
    iget v2, p0, Lcom/amap/api/mapcore/util/dj;->a:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1

    move v0, v1

    .line 150
    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/amap/api/mapcore/util/di;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/di;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    iget v0, p0, Lcom/amap/api/mapcore/util/dj;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/amap/api/mapcore/util/dj;->a:I

    .line 154
    :cond_2
    iget v0, p0, Lcom/amap/api/mapcore/util/dj;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_4

    .line 155
    iget-wide v2, p0, Lcom/amap/api/mapcore/util/dj;->l:J

    iget-wide v4, p0, Lcom/amap/api/mapcore/util/dj;->m:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/dj;->x:J

    .line 166
    :goto_1
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/dj;->b:Z

    .line 167
    return-void

    :cond_3
    move v2, v0

    .line 142
    goto :goto_0

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dj;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 158
    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/amap/api/mapcore/util/di;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/di;->g()J

    move-result-wide v2

    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/amap/api/mapcore/util/di;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/di;->f()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/dj;->m:J

    .line 159
    iget-wide v2, p0, Lcom/amap/api/mapcore/util/dj;->l:J

    iget-wide v4, p0, Lcom/amap/api/mapcore/util/dj;->m:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/dj;->x:J

    goto :goto_1

    .line 161
    :cond_5
    iget-wide v2, p0, Lcom/amap/api/mapcore/util/dj;->x:J

    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/amap/api/mapcore/util/di;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/di;->g()J

    move-result-wide v4

    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/amap/api/mapcore/util/di;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/di;->f()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/dj;->x:J

    .line 162
    iget-wide v2, p0, Lcom/amap/api/mapcore/util/dj;->x:J

    iget-wide v4, p0, Lcom/amap/api/mapcore/util/dj;->l:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/dj;->m:J

    goto :goto_1
.end method

.method public a(JLcom/amap/api/mapcore/util/dn;)Z
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dj;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 264
    iget-object v7, p0, Lcom/amap/api/mapcore/util/dj;->c:Ljava/util/ArrayList;

    .line 265
    iget-object v8, p0, Lcom/amap/api/mapcore/util/dj;->w:Lcom/amap/api/mapcore/util/dn;

    .line 271
    invoke-virtual {p3}, Lcom/amap/api/mapcore/util/dn;->a()V

    .line 273
    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move v6, v3

    move v1, v2

    move v4, v2

    :goto_0
    if-ltz v5, :cond_5

    .line 274
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/di;

    .line 276
    invoke-virtual {v8}, Lcom/amap/api/mapcore/util/dn;->a()V

    .line 277
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dj;->e()F

    move-result v9

    invoke-virtual {v0, p1, p2, p3, v9}, Lcom/amap/api/mapcore/util/di;->a(JLcom/amap/api/mapcore/util/dn;F)Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz v4, :cond_2

    :cond_0
    move v4, v3

    .line 280
    :goto_1
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/di;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    move v1, v3

    .line 281
    :goto_2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/di;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v6, :cond_4

    move v0, v3

    .line 273
    :goto_3
    add-int/lit8 v5, v5, -0x1

    move v6, v0

    goto :goto_0

    :cond_2
    move v4, v2

    .line 277
    goto :goto_1

    :cond_3
    move v1, v2

    .line 280
    goto :goto_2

    :cond_4
    move v0, v2

    .line 281
    goto :goto_3

    .line 284
    :cond_5
    if-eqz v1, :cond_7

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/dj;->e:Z

    if-nez v0, :cond_7

    .line 285
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dj;->r:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    if-eqz v0, :cond_6

    .line 286
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dj;->r:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    invoke-interface {v0}, Lcom/amap/api/maps/model/animation/Animation$AnimationListener;->onAnimationStart()V

    .line 288
    :cond_6
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/dj;->e:Z

    .line 291
    :cond_7
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/dj;->d:Z

    if-eq v6, v0, :cond_9

    .line 292
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dj;->r:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    if-eqz v0, :cond_8

    .line 293
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dj;->r:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    invoke-interface {v0}, Lcom/amap/api/maps/model/animation/Animation$AnimationListener;->onAnimationEnd()V

    .line 295
    :cond_8
    iput-boolean v6, p0, Lcom/amap/api/mapcore/util/dj;->d:Z

    .line 298
    :cond_9
    return v4
.end method

.method public b(J)V
    .locals 5

    .prologue
    .line 176
    invoke-super {p0, p1, p2}, Lcom/amap/api/mapcore/util/di;->b(J)V

    .line 178
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dj;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 179
    iget-object v3, p0, Lcom/amap/api/mapcore/util/dj;->c:Ljava/util/ArrayList;

    .line 181
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 182
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/di;

    .line 183
    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/util/di;->b(J)V

    .line 181
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dj;->m()Lcom/amap/api/mapcore/util/dj;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 222
    iget-object v4, p0, Lcom/amap/api/mapcore/util/dj;->c:Ljava/util/ArrayList;

    .line 223
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 224
    const-wide/16 v2, 0x0

    .line 226
    iget v1, p0, Lcom/amap/api/mapcore/util/dj;->a:I

    and-int/lit8 v1, v1, 0x20

    const/16 v6, 0x20

    if-ne v1, v6, :cond_0

    const/4 v1, 0x1

    .line 227
    :goto_0
    if-eqz v1, :cond_1

    .line 228
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/dj;->m:J

    .line 235
    :goto_1
    return-wide v0

    :cond_0
    move v1, v0

    .line 226
    goto :goto_0

    :cond_1
    move v1, v0

    .line 230
    :goto_2
    if-ge v1, v5, :cond_2

    .line 231
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/di;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/di;->f()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 230
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public h()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 345
    iget v0, p0, Lcom/amap/api/mapcore/util/dj;->a:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 350
    iget v0, p0, Lcom/amap/api/mapcore/util/dj;->a:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Lcom/amap/api/mapcore/util/dj;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    invoke-super {p0}, Lcom/amap/api/mapcore/util/di;->a()Lcom/amap/api/mapcore/util/di;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/dj;

    .line 49
    new-instance v1, Lcom/amap/api/mapcore/util/dn;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/dn;-><init>()V

    iput-object v1, v0, Lcom/amap/api/mapcore/util/dj;->w:Lcom/amap/api/mapcore/util/dn;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/amap/api/mapcore/util/dj;->c:Ljava/util/ArrayList;

    .line 52
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dj;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 53
    iget-object v4, p0, Lcom/amap/api/mapcore/util/dj;->c:Ljava/util/ArrayList;

    .line 55
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 56
    iget-object v5, v0, Lcom/amap/api/mapcore/util/dj;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/di;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/di;->a()Lcom/amap/api/mapcore/util/di;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 59
    :cond_0
    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/di;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dj;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dj;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 355
    return-void
.end method
