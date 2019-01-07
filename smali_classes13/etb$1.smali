.class final Letb$1;
.super Ljava/lang/Object;
.source "SearchStatisticUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Letb;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Letb$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 337
    iget-object v5, p0, Letb$1;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leod;

    .line 338
    .local v3, "sampleLog":Leod;
    if-eqz v3, :cond_0

    .line 342
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 343
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v6, "uuid"

    .line 1040
    iget-object v7, v3, Leod;->a:Ljava/lang/String;

    .line 343
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 344
    const-string/jumbo v6, "i_t"

    .line 1048
    iget-object v7, v3, Leod;->b:Ljava/lang/String;

    .line 344
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 345
    const-string/jumbo v6, "i_d"

    .line 1064
    iget-object v7, v3, Leod;->d:Ljava/lang/String;

    .line 345
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 346
    const-string/jumbo v6, "tab"

    .line 1096
    iget-object v7, v3, Leod;->h:Ljava/lang/String;

    .line 346
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1104
    iget-object v6, v3, Leod;->i:Lcom/alibaba/android/search/model/BaseModel;

    .line 348
    if-eqz v6, :cond_2

    .line 2104
    iget-object v6, v3, Leod;->i:Lcom/alibaba/android/search/model/BaseModel;

    .line 348
    invoke-virtual {v6}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Msg:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    if-ne v6, v7, :cond_2

    move v1, v4

    .line 349
    .local v1, "isMsg":Z
    :goto_1
    if-nez v1, :cond_1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const-string/jumbo v7, "pref_key_search_negative_sample_commit_details"

    invoke-static {v6, v7, v4}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 351
    const-string/jumbo v6, "t_t"

    .line 3072
    iget-object v7, v3, Leod;->e:Ljava/lang/String;

    .line 351
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 352
    const-string/jumbo v6, "d_t"

    .line 3080
    iget-object v7, v3, Leod;->f:Ljava/lang/String;

    .line 352
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 353
    const-string/jumbo v6, "h_f"

    .line 3088
    iget-object v7, v3, Leod;->g:Ljava/lang/String;

    .line 353
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 356
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    .line 357
    .local v2, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v6, "p_t"

    .line 4056
    iget v7, v3, Leod;->c:I

    .line 357
    int-to-double v8, v7

    invoke-static {v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 359
    invoke-static {v0, v2}, Letb;->b(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto :goto_0

    .line 348
    .end local v1    # "isMsg":Z
    .end local v2    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 361
    .end local v0    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v3    # "sampleLog":Leod;
    :cond_3
    return-void
.end method
