.class final Laoq;
.super Ljava/lang/Object;
.source "Quaternion.java"


# instance fields
.field a:D

.field b:D

.field c:D

.field d:D


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method constructor <init>(DDDD)V
    .locals 3
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "w"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Laoq;->a:D

    .line 38
    iput-wide v0, p0, Laoq;->b:D

    .line 39
    iput-wide v0, p0, Laoq;->c:D

    .line 40
    iput-wide p7, p0, Laoq;->d:D

    .line 41
    return-void
.end method


# virtual methods
.method final a(Laoq;)Laoq;
    .locals 24
    .param p1, "q"    # Laoq;

    .prologue
    .line 124
    .line 1129
    move-object/from16 v0, p0

    iget-wide v4, v0, Laoq;->a:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Laoq;->b:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Laoq;->c:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Laoq;->d:D

    .line 1130
    move-object/from16 v0, p1

    iget-wide v12, v0, Laoq;->a:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Laoq;->b:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Laoq;->c:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Laoq;->d:D

    move-wide/from16 v18, v0

    .line 1132
    mul-double v20, v4, v18

    mul-double v22, v10, v12

    add-double v20, v20, v22

    mul-double v22, v6, v16

    add-double v20, v20, v22

    mul-double v22, v8, v14

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Laoq;->a:D

    .line 1133
    mul-double v20, v6, v18

    mul-double v22, v10, v14

    add-double v20, v20, v22

    mul-double v22, v8, v12

    add-double v20, v20, v22

    mul-double v22, v4, v16

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Laoq;->b:D

    .line 1134
    mul-double v20, v8, v18

    mul-double v22, v10, v16

    add-double v20, v20, v22

    mul-double v22, v4, v14

    add-double v20, v20, v22

    mul-double v22, v6, v12

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Laoq;->c:D

    .line 1135
    mul-double v10, v10, v18

    mul-double/2addr v4, v12

    sub-double v4, v10, v4

    mul-double/2addr v6, v14

    sub-double/2addr v4, v6

    mul-double v6, v8, v16

    sub-double/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Laoq;->d:D

    .line 124
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Quaternion{x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Laoq;->a:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Laoq;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Laoq;->c:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Laoq;->d:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
