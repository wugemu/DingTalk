.class public final Laoe;
.super Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;
.source "BindingXOrientationHandler.java"

# interfaces
.implements Laoo$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoe$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:D

.field private c:D

.field private d:D

.field private e:D

.field private f:D

.field private g:D

.field private h:Laoo;

.field private i:Laop;

.field private j:Laop;

.field private k:Laop;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private n:Laov;

.field private o:Laov;

.field private p:Laoe$a;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Laoa;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Laoa;
    .param p3, "extension"    # [Ljava/lang/Object;

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;-><init>(Landroid/content/Context;Laoa;[Ljava/lang/Object;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoe;->a:Z

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Laoe;->m:Ljava/util/LinkedList;

    .line 214
    new-instance v1, Laov;

    move-wide v4, v2

    invoke-direct/range {v1 .. v7}, Laov;-><init>(DDD)V

    iput-object v1, p0, Laoe;->n:Laov;

    .line 215
    new-instance v1, Laov;

    move-wide v4, v6

    invoke-direct/range {v1 .. v7}, Laov;-><init>(DDD)V

    iput-object v1, p0, Laoe;->o:Laov;

    .line 217
    new-instance v1, Laoe$a;

    move-wide v4, v2

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Laoe$a;-><init>(DDD)V

    iput-object v1, p0, Laoe;->p:Laoe$a;

    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-static {p1}, Laoo;->a(Landroid/content/Context;)Laoo;

    move-result-object v0

    iput-object v0, p0, Laoe;->h:Laoo;

    .line 75
    :cond_0
    return-void
.end method

.method private varargs a(Ljava/lang/String;DDD[Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "alpha"    # D
    .param p4, "beta"    # D
    .param p6, "gamma"    # D
    .param p8, "extension"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 315
    iget-object v1, p0, Laoe;->mCallback:Lanu$a;

    if-eqz v1, :cond_1

    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 317
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "state"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string/jumbo v1, "alpha"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string/jumbo v1, "beta"

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string/jumbo v1, "gamma"

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string/jumbo v1, "token"

    iget-object v2, p0, Laoe;->mToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    array-length v1, p8

    if-lez v1, :cond_0

    aget-object v1, p8, v3

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 324
    aget-object v1, p8, v3

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 327
    :cond_0
    iget-object v1, p0, Laoe;->mCallback:Lanu$a;

    invoke-interface {v1, v0}, Lanu$a;->callback(Ljava/lang/Object;)V

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ">>>>>>>>>>>fire event:("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .end local v0    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method private static a(Ljava/util/List;I)V
    .locals 10
    .param p1, "threshold"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const-wide v8, 0x4076800000000000L    # 360.0

    .line 279
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 281
    .local v1, "l":I
    const/4 v4, 0x1

    if-le v1, v4, :cond_2

    .line 282
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 283
    add-int/lit8 v4, v0, -0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 284
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-int/lit8 v4, v0, -0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double v4, v6, v4

    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 285
    add-int/lit8 v4, v0, -0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v2, v4, v6

    .line 286
    .local v2, "times":D
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v6, v2, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 288
    .end local v2    # "times":D
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-int/lit8 v4, v0, -0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double v4, v6, v4

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 289
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 294
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(DDD)V
    .locals 27
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "gamma"    # D

    .prologue
    .line 160
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v0, v4

    move-wide/from16 p1, v0

    .line 161
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v0, v4

    move-wide/from16 p3, v0

    .line 162
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v0, v4

    move-wide/from16 p5, v0

    .line 164
    move-object/from16 v0, p0

    iget-wide v4, v0, Laoe;->e:D

    cmpl-double v4, p1, v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-wide v4, v0, Laoe;->f:D

    cmpl-double v4, p3, v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-wide v4, v0, Laoe;->g:D

    cmpl-double v4, p5, v4

    if-nez v4, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Laoe;->a:Z

    if-nez v4, :cond_2

    .line 169
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Laoe;->a:Z

    .line 170
    const-string/jumbo v5, "start"

    const/4 v4, 0x0

    new-array v12, v4, [Ljava/lang/Object;

    move-object/from16 v4, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v4 .. v12}, Laoe;->a(Ljava/lang/String;DDD[Ljava/lang/Object;)V

    .line 171
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Laoe;->b:D

    .line 172
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Laoe;->c:D

    .line 173
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Laoe;->d:D

    .line 177
    :cond_2
    const/16 v25, 0x0

    .line 178
    .local v25, "result":Z
    const-string/jumbo v4, "2d"

    move-object/from16 v0, p0

    iget-object v5, v0, Laoe;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1220
    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->i:Laop;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->j:Laop;

    if-eqz v4, :cond_8

    .line 1222
    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->m:Ljava/util/LinkedList;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1223
    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->m:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_3

    .line 1224
    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->m:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1227
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->m:Ljava/util/LinkedList;

    const/16 v5, 0x168

    invoke-static {v4, v5}, Laoe;->a(Ljava/util/List;I)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->m:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v5, v0, Laoe;->m:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Laoe;->b:D

    sub-double/2addr v4, v6

    const-wide v6, 0x4076800000000000L    # 360.0

    rem-double v10, v4, v6

    .line 1230
    move-object/from16 v0, p0

    iget-object v5, v0, Laoe;->i:Laop;

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v5 .. v11}, Laop;->a(DDD)Laoq;

    move-result-object v4

    .line 1231
    move-object/from16 v0, p0

    iget-object v5, v0, Laoe;->j:Laop;

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v5 .. v11}, Laop;->a(DDD)Laoq;

    move-result-object v12

    .line 1233
    move-object/from16 v0, p0

    iget-object v5, v0, Laoe;->n:Laov;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v5 .. v11}, Laov;->a(DDD)V

    .line 1234
    move-object/from16 v0, p0

    iget-object v5, v0, Laoe;->n:Laov;

    invoke-virtual {v5, v4}, Laov;->a(Laoq;)Laov;

    .line 1235
    move-object/from16 v0, p0

    iget-object v5, v0, Laoe;->o:Laov;

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v5 .. v11}, Laov;->a(DDD)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->o:Laov;

    invoke-virtual {v4, v12}, Laov;->a(Laoq;)Laov;

    .line 1238
    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->n:Laov;

    iget-wide v4, v4, Laov;->a:D

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    const-wide v6, 0x4056800000000000L    # 90.0

    sub-double/2addr v4, v6

    .line 1239
    move-object/from16 v0, p0

    iget-object v6, v0, Laoe;->o:Laov;

    iget-wide v6, v6, Laov;->b:D

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    const-wide v8, 0x4056800000000000L    # 90.0

    sub-double/2addr v6, v8

    .line 1241
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1242
    :cond_4
    const/16 v25, 0x0

    .line 184
    :cond_5
    :goto_1
    if-eqz v25, :cond_0

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->p:Laoe$a;

    iget-wide v0, v4, Laoe$a;->a:D

    move-wide/from16 v18, v0

    .line 189
    .local v18, "x":D
    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->p:Laoe$a;

    iget-wide v0, v4, Laoe$a;->b:D

    move-wide/from16 v20, v0

    .line 190
    .local v20, "y":D
    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->p:Laoe$a;

    iget-wide v0, v4, Laoe$a;->c:D

    move-wide/from16 v22, v0

    .line 192
    .local v22, "z":D
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Laoe;->e:D

    .line 193
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Laoe;->f:D

    .line 194
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Laoe;->g:D

    .line 197
    :try_start_0
    sget-boolean v4, Lanz;->a:Z

    if-eqz v4, :cond_6

    .line 198
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string/jumbo v5, "[OrientationHandler] orientation changed. (alpha:%f,beta:%f,gamma:%f,x:%f,y:%f,z:%f)"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 200
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    .line 198
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Laoe;->mScope:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-wide v12, v0, Laoe;->b:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Laoe;->c:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Laoe;->d:D

    move-wide/from16 v16, v0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-static/range {v5 .. v23}, Laom;->a(Ljava/util/Map;DDDDDDDDD)V

    .line 204
    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->mExitExpressionPair:Laok;

    move-object/from16 v0, p0

    iget-object v5, v0, Laoe;->mScope:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Laoe;->evaluateExitExpression(Laok;Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 205
    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->mExpressionHoldersMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v5, v0, Laoe;->mScope:Ljava/util/Map;

    const-string/jumbo v6, "orientation"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Laoe;->consumeExpression(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 208
    :catch_0
    move-exception v24

    .line 209
    .local v24, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "runtime error"

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lanz;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1245
    .end local v18    # "x":D
    .end local v20    # "y":D
    .end local v22    # "z":D
    .end local v24    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    .line 1246
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    .line 1248
    move-object/from16 v0, p0

    iget-object v8, v0, Laoe;->p:Laoe$a;

    iput-wide v4, v8, Laoe$a;->a:D

    .line 1249
    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->p:Laoe$a;

    iput-wide v6, v4, Laoe$a;->b:D

    .line 1251
    :cond_8
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 180
    :cond_9
    const-string/jumbo v4, "3d"

    move-object/from16 v0, p0

    iget-object v5, v0, Laoe;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1256
    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->k:Laop;

    if-eqz v4, :cond_d

    .line 1257
    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->m:Ljava/util/LinkedList;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1258
    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->m:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_a

    .line 1259
    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->m:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1262
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->m:Ljava/util/LinkedList;

    const/16 v5, 0x168

    invoke-static {v4, v5}, Laoe;->a(Ljava/util/List;I)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v4, v0, Laoe;->m:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v5, v0, Laoe;->m:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Laoe;->b:D

    sub-double/2addr v4, v6

    const-wide v6, 0x4076800000000000L    # 360.0

    rem-double v10, v4, v6

    .line 1264
    move-object/from16 v0, p0

    iget-object v5, v0, Laoe;->k:Laop;

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v5 .. v11}, Laop;->a(DDD)Laoq;

    move-result-object v4

    .line 1266
    iget-wide v6, v4, Laoq;->a:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_b

    iget-wide v6, v4, Laoq;->b:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_b

    iget-wide v6, v4, Laoq;->c:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_b

    iget-wide v6, v4, Laoq;->a:D

    .line 1267
    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_b

    iget-wide v6, v4, Laoq;->b:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_b

    iget-wide v6, v4, Laoq;->c:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1268
    :cond_b
    const/16 v25, 0x0

    .line 181
    :goto_2
    goto/16 :goto_1

    .line 1271
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Laoe;->p:Laoe$a;

    iget-wide v6, v4, Laoq;->a:D

    iput-wide v6, v5, Laoe$a;->a:D

    .line 1272
    move-object/from16 v0, p0

    iget-object v5, v0, Laoe;->p:Laoe$a;

    iget-wide v6, v4, Laoq;->b:D

    iput-wide v6, v5, Laoe$a;->b:D

    .line 1273
    move-object/from16 v0, p0

    iget-object v5, v0, Laoe;->p:Laoe$a;

    iget-wide v6, v4, Laoq;->c:D

    iput-wide v6, v5, Laoe$a;->c:D

    .line 1275
    :cond_d
    const/16 v25, 0x1

    goto :goto_2
.end method

.method public final onActivityPause()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Laoe;->h:Laoo;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Laoe;->h:Laoo;

    invoke-virtual {v0}, Laoo;->a()V

    .line 337
    :cond_0
    return-void
.end method

.method public final onActivityResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 341
    iget-object v0, p0, Laoe;->h:Laoo;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Laoe;->h:Laoo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoo;->a(I)Z

    .line 344
    :cond_0
    return-void
.end method

.method public final onBindExpression(Ljava/lang/String;Ljava/util/Map;Laok;Ljava/util/List;Lanu$a;)V
    .locals 8
    .param p1, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "exitExpressionPair"    # Laok;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "callback"    # Lanu$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Laok;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lanu$a;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p2, "globalConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "expressionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-wide v6, 0x4056800000000000L    # 90.0

    const/4 v4, 0x0

    .line 105
    invoke-super/range {p0 .. p5}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->onBindExpression(Ljava/lang/String;Ljava/util/Map;Laok;Ljava/util/List;Lanu$a;)V

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "sceneType":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 111
    const-string/jumbo v1, "sceneType"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "sceneType":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 112
    .restart local v0    # "sceneType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    const-string/jumbo v0, "2d"

    .line 118
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "2d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "3d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 119
    :cond_1
    const-string/jumbo v0, "2d"

    .line 122
    :cond_2
    iput-object v0, p0, Laoe;->l:Ljava/lang/String;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[ExpressionOrientationHandler] sceneType is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string/jumbo v1, "2d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 126
    new-instance v1, Laop;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v4, v2, v4}, Laop;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    iput-object v1, p0, Laoe;->i:Laop;

    .line 127
    new-instance v1, Laop;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v1, v2, v4, v3}, Laop;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    iput-object v1, p0, Laoe;->j:Laop;

    .line 131
    :cond_3
    :goto_1
    return-void

    .line 115
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_5
    const-string/jumbo v1, "3d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    new-instance v1, Laop;

    invoke-direct {v1, v4, v4, v4}, Laop;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    iput-object v1, p0, Laoe;->k:Laop;

    goto :goto_1
.end method

.method public final onCreate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 86
    iget-object v0, p0, Laoe;->h:Laoo;

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Laoe;->h:Laoo;

    .line 1114
    iget-object v1, v0, Laoo;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Laoo;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1115
    iget-object v0, v0, Laoo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1
    iget-object v0, p0, Laoe;->h:Laoo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoo;->a(I)Z

    move-result v0

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->onDestroy()V

    .line 147
    iget-object v0, p0, Laoe;->h:Laoo;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Laoe;->h:Laoo;

    invoke-virtual {v0, p0}, Laoo;->a(Laoo$a;)Z

    .line 149
    iget-object v0, p0, Laoe;->h:Laoo;

    invoke-virtual {v0}, Laoo;->a()V

    .line 152
    :cond_0
    iget-object v0, p0, Laoe;->mExpressionHoldersMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Laoe;->mExpressionHoldersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Laoe;->mExpressionHoldersMap:Ljava/util/Map;

    .line 156
    :cond_1
    return-void
.end method

.method public final onDisable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0}, Laoe;->clearExpressions()V

    .line 136
    iget-object v1, p0, Laoe;->h:Laoo;

    if-nez v1, :cond_0

    .line 141
    :goto_0
    return v0

    .line 140
    :cond_0
    const-string/jumbo v1, "end"

    iget-wide v2, p0, Laoe;->e:D

    iget-wide v4, p0, Laoe;->f:D

    iget-wide v6, p0, Laoe;->g:D

    new-array v8, v0, [Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Laoe;->a(Ljava/lang/String;DDD[Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Laoe;->h:Laoo;

    invoke-virtual {v0, p0}, Laoo;->a(Laoo$a;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onExit(Ljava/util/Map;)V
    .locals 9
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 299
    .local p1, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "alpha"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 300
    .local v2, "alpha":D
    const-string/jumbo v0, "beta"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 301
    .local v4, "beta":D
    const-string/jumbo v0, "gamma"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 302
    .local v6, "gamma":D
    const-string/jumbo v1, "exit"

    const/4 v0, 0x0

    new-array v8, v0, [Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Laoe;->a(Ljava/lang/String;DDD[Ljava/lang/Object;)V

    .line 303
    return-void
.end method

.method public final onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 97
    return-void
.end method

.method protected final onUserIntercept(Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .param p1, "interceptorName"    # Ljava/lang/String;
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 307
    .local p2, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "alpha"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 308
    .local v2, "alpha":D
    const-string/jumbo v0, "beta"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 309
    .local v4, "beta":D
    const-string/jumbo v0, "gamma"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 310
    .local v6, "gamma":D
    const-string/jumbo v1, "interceptor"

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v9, "interceptor"

    invoke-static {v9, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    aput-object v9, v8, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Laoe;->a(Ljava/lang/String;DDD[Ljava/lang/Object;)V

    .line 311
    return-void
.end method
