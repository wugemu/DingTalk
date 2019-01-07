.class public final Leng;
.super Ljava/lang/Object;
.source "AssureSyncHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Leot;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "newResults":Ljava/util/List;, "Ljava/util/List<Leot;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lcpd;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 145
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    .line 146
    .local v0, "pushClickResult":Leot;
    if-eqz v0, :cond_0

    .line 1091
    if-nez v0, :cond_1

    .line 1092
    const/4 v2, 0x0

    .line 148
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1095
    :cond_1
    iget-object v2, v0, Leot;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/android/search/assure/model/AssureModel;->getAssureTypeFromSvr(Ljava/lang/String;)Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    move-result-object v2

    .line 1099
    sget-object v4, Lenk$1;->a:[I

    invoke-virtual {v2}, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    .line 1102
    new-instance v2, Lcom/alibaba/android/search/assure/model/UnkownAssureModel;

    invoke-direct {v2, v0}, Lcom/alibaba/android/search/assure/model/UnkownAssureModel;-><init>(Leot;)V

    .line 1115
    :goto_2
    invoke-virtual {v2}, Lcom/alibaba/android/search/assure/model/AssureModel;->parseBaseModel()V

    goto :goto_1

    .line 1105
    :pswitch_0
    new-instance v2, Lcom/alibaba/android/search/assure/model/ContactAssureModel;

    invoke-direct {v2, v0}, Lcom/alibaba/android/search/assure/model/ContactAssureModel;-><init>(Leot;)V

    goto :goto_2

    .line 1108
    :pswitch_1
    new-instance v2, Lcom/alibaba/android/search/assure/model/GroupAssureModel;

    invoke-direct {v2, v0}, Lcom/alibaba/android/search/assure/model/GroupAssureModel;-><init>(Leot;)V

    goto :goto_2

    .line 1111
    :pswitch_2
    new-instance v2, Lcom/alibaba/android/search/assure/model/FunctionAssureModel;

    invoke-direct {v2, v0}, Lcom/alibaba/android/search/assure/model/FunctionAssureModel;-><init>(Leot;)V

    goto :goto_2

    .line 151
    .end local v0    # "pushClickResult":Leot;
    :cond_2
    return-object v1

    .line 1099
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method a(Ljava/util/List;Lcou;)V
    .locals 2
    .param p2, "listener"    # Lcou;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;",
            "Lcou;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    .local p1, "assureModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Leng$2;

    invoke-direct {v1, p0, p1, p2}, Leng$2;-><init>(Leng;Ljava/util/List;Lcou;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method
