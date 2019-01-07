.class final Lw$c;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/graphics/Matrix;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field final j:Landroid/graphics/Matrix;

.field k:I

.field l:[I

.field m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1294
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lw$c;->a:Landroid/graphics/Matrix;

    .line 1298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw$c;->b:Ljava/util/ArrayList;

    .line 1300
    iput v1, p0, Lw$c;->c:F

    .line 1301
    iput v1, p0, Lw$c;->d:F

    .line 1302
    iput v1, p0, Lw$c;->e:F

    .line 1303
    iput v2, p0, Lw$c;->f:F

    .line 1304
    iput v2, p0, Lw$c;->g:F

    .line 1305
    iput v1, p0, Lw$c;->h:F

    .line 1306
    iput v1, p0, Lw$c;->i:F

    .line 1310
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lw$c;->j:Landroid/graphics/Matrix;

    .line 1313
    const/4 v0, 0x0

    iput-object v0, p0, Lw$c;->m:Ljava/lang/String;

    .line 1356
    return-void
.end method

.method public constructor <init>(Lw$c;Lfk;)V
    .locals 8
    .param p1, "copy"    # Lw$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw$c;",
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "targetsMap":Lfk;, "Lfk<Ljava/lang/String;Ljava/lang/Object;>;"
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 1315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1294
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lw$c;->a:Landroid/graphics/Matrix;

    .line 1298
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lw$c;->b:Ljava/util/ArrayList;

    .line 1300
    iput v6, p0, Lw$c;->c:F

    .line 1301
    iput v6, p0, Lw$c;->d:F

    .line 1302
    iput v6, p0, Lw$c;->e:F

    .line 1303
    iput v7, p0, Lw$c;->f:F

    .line 1304
    iput v7, p0, Lw$c;->g:F

    .line 1305
    iput v6, p0, Lw$c;->h:F

    .line 1306
    iput v6, p0, Lw$c;->i:F

    .line 1310
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lw$c;->j:Landroid/graphics/Matrix;

    .line 1313
    const/4 v5, 0x0

    iput-object v5, p0, Lw$c;->m:Ljava/lang/String;

    .line 1316
    iget v5, p1, Lw$c;->c:F

    iput v5, p0, Lw$c;->c:F

    .line 1317
    iget v5, p1, Lw$c;->d:F

    iput v5, p0, Lw$c;->d:F

    .line 1318
    iget v5, p1, Lw$c;->e:F

    iput v5, p0, Lw$c;->e:F

    .line 1319
    iget v5, p1, Lw$c;->f:F

    iput v5, p0, Lw$c;->f:F

    .line 1320
    iget v5, p1, Lw$c;->g:F

    iput v5, p0, Lw$c;->g:F

    .line 1321
    iget v5, p1, Lw$c;->h:F

    iput v5, p0, Lw$c;->h:F

    .line 1322
    iget v5, p1, Lw$c;->i:F

    iput v5, p0, Lw$c;->i:F

    .line 1323
    iget-object v5, p1, Lw$c;->l:[I

    iput-object v5, p0, Lw$c;->l:[I

    .line 1324
    iget-object v5, p1, Lw$c;->m:Ljava/lang/String;

    iput-object v5, p0, Lw$c;->m:Ljava/lang/String;

    .line 1325
    iget v5, p1, Lw$c;->k:I

    iput v5, p0, Lw$c;->k:I

    .line 1326
    iget-object v5, p0, Lw$c;->m:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1327
    iget-object v5, p0, Lw$c;->m:Ljava/lang/String;

    invoke-virtual {p2, v5, p0}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    :cond_0
    iget-object v5, p0, Lw$c;->j:Landroid/graphics/Matrix;

    iget-object v6, p1, Lw$c;->j:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1332
    iget-object v0, p1, Lw$c;->b:Ljava/util/ArrayList;

    .line 1333
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 1334
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1335
    .local v1, "copyChild":Ljava/lang/Object;
    instance-of v5, v1, Lw$c;

    if-eqz v5, :cond_2

    move-object v2, v1

    .line 1336
    check-cast v2, Lw$c;

    .line 1337
    .local v2, "copyGroup":Lw$c;
    iget-object v5, p0, Lw$c;->b:Ljava/util/ArrayList;

    new-instance v6, Lw$c;

    invoke-direct {v6, v2, p2}, Lw$c;-><init>(Lw$c;Lfk;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    .end local v1    # "copyChild":Ljava/lang/Object;
    .end local v2    # "copyGroup":Lw$c;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1340
    .restart local v1    # "copyChild":Ljava/lang/Object;
    :cond_2
    instance-of v5, v1, Lw$b;

    if-eqz v5, :cond_3

    .line 1341
    new-instance v4, Lw$b;

    check-cast v1, Lw$b;

    .end local v1    # "copyChild":Ljava/lang/Object;
    invoke-direct {v4, v1}, Lw$b;-><init>(Lw$b;)V

    .line 1347
    .local v4, "newPath":Lw$d;
    :goto_2
    iget-object v5, p0, Lw$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    iget-object v5, v4, Lw$d;->n:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 1349
    iget-object v5, v4, Lw$d;->n:Ljava/lang/String;

    invoke-virtual {p2, v5, v4}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1342
    .end local v4    # "newPath":Lw$d;
    .restart local v1    # "copyChild":Ljava/lang/Object;
    :cond_3
    instance-of v5, v1, Lw$a;

    if-eqz v5, :cond_4

    .line 1343
    new-instance v4, Lw$a;

    check-cast v1, Lw$a;

    .end local v1    # "copyChild":Ljava/lang/Object;
    invoke-direct {v4, v1}, Lw$a;-><init>(Lw$a;)V

    .restart local v4    # "newPath":Lw$d;
    goto :goto_2

    .line 1345
    .end local v4    # "newPath":Lw$d;
    .restart local v1    # "copyChild":Ljava/lang/Object;
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Unknown object in the tree!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1353
    .end local v1    # "copyChild":Ljava/lang/Object;
    :cond_5
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1412
    iget-object v0, p0, Lw$c;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1413
    iget-object v0, p0, Lw$c;->j:Landroid/graphics/Matrix;

    iget v1, p0, Lw$c;->d:F

    neg-float v1, v1

    iget v2, p0, Lw$c;->e:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1414
    iget-object v0, p0, Lw$c;->j:Landroid/graphics/Matrix;

    iget v1, p0, Lw$c;->f:F

    iget v2, p0, Lw$c;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1415
    iget-object v0, p0, Lw$c;->j:Landroid/graphics/Matrix;

    iget v1, p0, Lw$c;->c:F

    invoke-virtual {v0, v1, v3, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1416
    iget-object v0, p0, Lw$c;->j:Landroid/graphics/Matrix;

    iget v1, p0, Lw$c;->h:F

    iget v2, p0, Lw$c;->d:F

    add-float/2addr v1, v2

    iget v2, p0, Lw$c;->i:F

    iget v3, p0, Lw$c;->e:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1417
    return-void
.end method

.method public final getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lw$c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 1363
    iget-object v0, p0, Lw$c;->j:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final getPivotX()F
    .locals 1

    .prologue
    .line 1435
    iget v0, p0, Lw$c;->d:F

    return v0
.end method

.method public final getPivotY()F
    .locals 1

    .prologue
    .line 1448
    iget v0, p0, Lw$c;->e:F

    return v0
.end method

.method public final getRotation()F
    .locals 1

    .prologue
    .line 1422
    iget v0, p0, Lw$c;->c:F

    return v0
.end method

.method public final getScaleX()F
    .locals 1

    .prologue
    .line 1461
    iget v0, p0, Lw$c;->f:F

    return v0
.end method

.method public final getScaleY()F
    .locals 1

    .prologue
    .line 1474
    iget v0, p0, Lw$c;->g:F

    return v0
.end method

.method public final getTranslateX()F
    .locals 1

    .prologue
    .line 1487
    iget v0, p0, Lw$c;->h:F

    return v0
.end method

.method public final getTranslateY()F
    .locals 1

    .prologue
    .line 1500
    iget v0, p0, Lw$c;->i:F

    return v0
.end method

.method public final setPivotX(F)V
    .locals 1
    .param p1, "pivotX"    # F

    .prologue
    .line 1440
    iget v0, p0, Lw$c;->d:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1441
    iput p1, p0, Lw$c;->d:F

    .line 1442
    invoke-virtual {p0}, Lw$c;->a()V

    .line 1444
    :cond_0
    return-void
.end method

.method public final setPivotY(F)V
    .locals 1
    .param p1, "pivotY"    # F

    .prologue
    .line 1453
    iget v0, p0, Lw$c;->e:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1454
    iput p1, p0, Lw$c;->e:F

    .line 1455
    invoke-virtual {p0}, Lw$c;->a()V

    .line 1457
    :cond_0
    return-void
.end method

.method public final setRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 1427
    iget v0, p0, Lw$c;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1428
    iput p1, p0, Lw$c;->c:F

    .line 1429
    invoke-virtual {p0}, Lw$c;->a()V

    .line 1431
    :cond_0
    return-void
.end method

.method public final setScaleX(F)V
    .locals 1
    .param p1, "scaleX"    # F

    .prologue
    .line 1466
    iget v0, p0, Lw$c;->f:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1467
    iput p1, p0, Lw$c;->f:F

    .line 1468
    invoke-virtual {p0}, Lw$c;->a()V

    .line 1470
    :cond_0
    return-void
.end method

.method public final setScaleY(F)V
    .locals 1
    .param p1, "scaleY"    # F

    .prologue
    .line 1479
    iget v0, p0, Lw$c;->g:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1480
    iput p1, p0, Lw$c;->g:F

    .line 1481
    invoke-virtual {p0}, Lw$c;->a()V

    .line 1483
    :cond_0
    return-void
.end method

.method public final setTranslateX(F)V
    .locals 1
    .param p1, "translateX"    # F

    .prologue
    .line 1492
    iget v0, p0, Lw$c;->h:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1493
    iput p1, p0, Lw$c;->h:F

    .line 1494
    invoke-virtual {p0}, Lw$c;->a()V

    .line 1496
    :cond_0
    return-void
.end method

.method public final setTranslateY(F)V
    .locals 1
    .param p1, "translateY"    # F

    .prologue
    .line 1505
    iget v0, p0, Lw$c;->i:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1506
    iput p1, p0, Lw$c;->i:F

    .line 1507
    invoke-virtual {p0}, Lw$c;->a()V

    .line 1509
    :cond_0
    return-void
.end method
