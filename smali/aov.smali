.class final Laov;
.super Ljava/lang/Object;
.source "Vector3.java"


# instance fields
.field a:D

.field b:D

.field c:D


# direct methods
.method constructor <init>(DDD)V
    .locals 3
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laov;->a:D

    .line 31
    iput-wide p3, p0, Laov;->b:D

    .line 32
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Laov;->c:D

    .line 33
    return-void
.end method


# virtual methods
.method final a(Laoq;)Laov;
    .locals 30
    .param p1, "q"    # Laoq;

    .prologue
    .line 42
    move-object/from16 v0, p0

    iget-wide v0, v0, Laov;->a:D

    move-wide/from16 v20, v0

    .local v20, "x":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Laov;->b:D

    move-wide/from16 v22, v0

    .local v22, "y":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Laov;->c:D

    move-wide/from16 v24, v0

    .line 43
    .local v24, "z":D
    move-object/from16 v0, p1

    iget-wide v14, v0, Laoq;->a:D

    .local v14, "qx":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Laoq;->b:D

    move-wide/from16 v16, v0

    .local v16, "qy":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Laoq;->c:D

    move-wide/from16 v18, v0

    .local v18, "qz":D
    move-object/from16 v0, p1

    iget-wide v12, v0, Laoq;->d:D

    .line 47
    .local v12, "qw":D
    mul-double v26, v12, v20

    mul-double v28, v16, v24

    add-double v26, v26, v28

    mul-double v28, v18, v22

    sub-double v6, v26, v28

    .line 48
    .local v6, "ix":D
    mul-double v26, v12, v22

    mul-double v28, v18, v20

    add-double v26, v26, v28

    mul-double v28, v14, v24

    sub-double v8, v26, v28

    .line 49
    .local v8, "iy":D
    mul-double v26, v12, v24

    mul-double v28, v14, v22

    add-double v26, v26, v28

    mul-double v28, v16, v20

    sub-double v10, v26, v28

    .line 50
    .local v10, "iz":D
    neg-double v0, v14

    move-wide/from16 v26, v0

    mul-double v26, v26, v20

    mul-double v28, v16, v22

    sub-double v26, v26, v28

    mul-double v28, v18, v24

    sub-double v4, v26, v28

    .line 54
    .local v4, "iw":D
    mul-double v26, v6, v12

    neg-double v0, v14

    move-wide/from16 v28, v0

    mul-double v28, v28, v4

    add-double v26, v26, v28

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v8

    add-double v26, v26, v28

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v10

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Laov;->a:D

    .line 55
    mul-double v26, v8, v12

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v4

    add-double v26, v26, v28

    neg-double v0, v14

    move-wide/from16 v28, v0

    mul-double v28, v28, v10

    add-double v26, v26, v28

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v6

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Laov;->b:D

    .line 56
    mul-double v26, v10, v12

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v4

    add-double v26, v26, v28

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v6

    add-double v26, v26, v28

    neg-double v0, v14

    move-wide/from16 v28, v0

    mul-double v28, v28, v8

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Laov;->c:D

    .line 58
    return-object p0
.end method

.method final a(DDD)V
    .locals 3
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laov;->a:D

    .line 37
    iput-wide p3, p0, Laov;->b:D

    .line 38
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Laov;->c:D

    .line 39
    return-void
.end method
