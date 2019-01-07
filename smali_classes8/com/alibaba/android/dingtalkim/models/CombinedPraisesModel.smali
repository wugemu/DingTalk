.class public final Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;
.super Ljava/lang/Object;
.source "CombinedPraisesModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    .line 19
    sget-object v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;->FOLD:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->b:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/wukong/im/Message;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    goto :goto_0
.end method

.method public final a(ILcom/alibaba/wukong/im/Message;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 26
    invoke-static {p2}, Ldkc;->z(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    instance-of v6, p1, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    if-nez v6, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v1, p1

    .line 95
    check-cast v1, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    .line 97
    .local v1, "other":Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->b:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    iget-object v7, v1, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->b:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    if-ne v6, v7, :cond_0

    .line 101
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    .line 102
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, v1, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 105
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/Message;

    .line 106
    .local v3, "thisMsg":Lcom/alibaba/wukong/im/Message;
    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    .line 107
    .local v2, "otherMsg":Lcom/alibaba/wukong/im/Message;
    if-nez v3, :cond_3

    move v7, v5

    :goto_2
    if-nez v2, :cond_4

    move v6, v5

    :goto_3
    xor-int/2addr v6, v7

    if-nez v6, :cond_0

    .line 111
    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v7, v4

    .line 107
    goto :goto_2

    :cond_4
    move v6, v4

    goto :goto_3

    .end local v2    # "otherMsg":Lcom/alibaba/wukong/im/Message;
    .end local v3    # "thisMsg":Lcom/alibaba/wukong/im/Message;
    :cond_5
    move v4, v5

    .line 116
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 62
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    const/16 v0, 0x11

    .line 64
    .local v0, "code":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 65
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v1, :cond_0

    .line 66
    mul-int/lit8 v3, v0, 0x25

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    goto :goto_0

    .line 71
    .end local v0    # "code":I
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method
