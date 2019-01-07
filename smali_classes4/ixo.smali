.class public final Lixo;
.super Ljava/lang/Object;
.source "ReedSolomonEncoder.java"


# instance fields
.field public final a:Lixm;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lixn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lixm;)V
    .locals 5
    .param p1, "field"    # Lixm;

    .prologue
    const/4 v4, 0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lixm;->e:Lixm;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only QR Code is supported at this time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lixo;->a:Lixm;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lixo;->b:Ljava/util/List;

    .line 42
    iget-object v0, p0, Lixo;->b:Ljava/util/List;

    new-instance v1, Lixn;

    new-array v2, v4, [I

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-direct {v1, p1, v2}, Lixn;-><init>(Lixm;[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method


# virtual methods
.method public a(I)Lixn;
    .locals 16
    .param p1, "degree"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 46
    move-object/from16 v0, p0

    iget-object v4, v0, Lixo;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, p1

    if-lt v0, v4, :cond_5

    .line 47
    move-object/from16 v0, p0

    iget-object v4, v0, Lixo;->b:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lixo;->b:Ljava/util/List;

    .line 48
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 47
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lixn;

    .line 49
    .local v2, "lastGenerator":Lixn;
    move-object/from16 v0, p0

    iget-object v4, v0, Lixo;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "d":I
    :goto_0
    move/from16 v0, p1

    if-gt v1, v0, :cond_5

    .line 50
    new-instance v4, Lixn;

    move-object/from16 v0, p0

    iget-object v5, v0, Lixo;->a:Lixm;

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lixo;->a:Lixm;

    add-int/lit8 v9, v1, -0x1

    .line 52
    invoke-virtual {v8, v9}, Lixm;->a(I)I

    move-result v8

    aput v8, v6, v7

    invoke-direct {v4, v5, v6}, Lixn;-><init>(Lixm;[I)V

    .line 1163
    iget-object v5, v2, Lixn;->a:Lixm;

    iget-object v6, v4, Lixn;->a:Lixm;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1164
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1167
    :cond_0
    invoke-virtual {v2}, Lixn;->a()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lixn;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1168
    :cond_1
    iget-object v4, v2, Lixn;->a:Lixm;

    invoke-virtual {v4}, Lixm;->b()Lixn;

    move-result-object v3

    .line 53
    .local v3, "nextGenerator":Lixn;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lixo;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    move-object v2, v3

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1170
    .end local v3    # "nextGenerator":Lixn;
    :cond_2
    iget-object v6, v2, Lixn;->b:[I

    .line 1171
    array-length v7, v6

    .line 1172
    iget-object v8, v4, Lixn;->b:[I

    .line 1173
    array-length v9, v8

    .line 1174
    add-int v4, v7, v9

    add-int/lit8 v4, v4, -0x1

    new-array v10, v4, [I

    .line 1175
    const/4 v4, 0x0

    move v5, v4

    :goto_2
    if-ge v5, v7, :cond_4

    .line 1176
    aget v11, v6, v5

    .line 1177
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v9, :cond_3

    .line 1178
    add-int v12, v5, v4

    add-int v13, v5, v4

    aget v13, v10, v13

    iget-object v14, v2, Lixn;->a:Lixm;

    aget v15, v8, v4

    .line 1179
    invoke-virtual {v14, v11, v15}, Lixm;->c(II)I

    move-result v14

    .line 1178
    invoke-static {v13, v14}, Lixm;->b(II)I

    move-result v13

    aput v13, v10, v12

    .line 1177
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1175
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_2

    .line 1182
    :cond_4
    new-instance v3, Lixn;

    iget-object v4, v2, Lixn;->a:Lixm;

    invoke-direct {v3, v4, v10}, Lixn;-><init>(Lixm;[I)V

    goto :goto_1

    .line 57
    .end local v1    # "d":I
    .end local v2    # "lastGenerator":Lixn;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lixo;->b:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lixn;

    return-object v4
.end method
