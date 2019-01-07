.class public Lcom/alipay/mobile/security/faceauth/model/strategy/GroupActionStrategy;
.super Lcom/alipay/mobile/security/faceauth/model/strategy/DefaultActionStrategy;
.source "GroupActionStrategy.java"


# instance fields
.field a:[I

.field b:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/model/strategy/DefaultActionStrategy;-><init>()V

    .line 12
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/GroupActionStrategy;->a:[I

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/GroupActionStrategy;->b:[I

    return-void

    .line 12
    .line 13
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x7
    .end array-data
.end method


# virtual methods
.method public getMotionCount()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x2

    return v0
.end method

.method public getRandom(I)Ljava/util/List;
    .locals 8
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 20
    .local v4, "rand":Ljava/util/Random;
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/GroupActionStrategy;->a:[I

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget v0, v5, v6

    .line 21
    .local v0, "choose1":I
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/GroupActionStrategy;->b:[I

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget v1, v5, v6

    .line 28
    .local v1, "choose2":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 32
    .local v3, "order":I
    packed-switch v3, :pswitch_data_0

    .line 43
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "action list:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 45
    return-object v2

    .line 34
    :pswitch_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    .line 37
    :pswitch_1
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
