.class public Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;
.super Lcom/alibaba/doraemon/impl/statistics/unify/UnifyStatisticsImpl;
.source "FullFlowUnifyStatisticsImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;


# static fields
.field private static final DIMENSION_KEY_ERROR_STEP:Ljava/lang/String; = "err_step"

.field private static final DIMENSION_KEY_STEP_RESULT_1:Ljava/lang/String; = "s_r_1"

.field private static final DIMENSION_KEY_STEP_RESULT_10:Ljava/lang/String; = "s_r_10"

.field private static final DIMENSION_KEY_STEP_RESULT_2:Ljava/lang/String; = "s_r_2"

.field private static final DIMENSION_KEY_STEP_RESULT_3:Ljava/lang/String; = "s_r_3"

.field private static final DIMENSION_KEY_STEP_RESULT_4:Ljava/lang/String; = "s_r_4"

.field private static final DIMENSION_KEY_STEP_RESULT_5:Ljava/lang/String; = "s_r_5"

.field private static final DIMENSION_KEY_STEP_RESULT_6:Ljava/lang/String; = "s_r_6"

.field private static final DIMENSION_KEY_STEP_RESULT_7:Ljava/lang/String; = "s_r_7"

.field private static final DIMENSION_KEY_STEP_RESULT_8:Ljava/lang/String; = "s_r_8"

.field private static final DIMENSION_KEY_STEP_RESULT_9:Ljava/lang/String; = "s_r_9"

.field private static final MEASURE_KEY_STEP_COST_1:Ljava/lang/String; = "s_c_1"

.field private static final MEASURE_KEY_STEP_COST_10:Ljava/lang/String; = "s_c_10"

.field private static final MEASURE_KEY_STEP_COST_2:Ljava/lang/String; = "s_c_2"

.field private static final MEASURE_KEY_STEP_COST_3:Ljava/lang/String; = "s_c_3"

.field private static final MEASURE_KEY_STEP_COST_4:Ljava/lang/String; = "s_c_4"

.field private static final MEASURE_KEY_STEP_COST_5:Ljava/lang/String; = "s_c_5"

.field private static final MEASURE_KEY_STEP_COST_6:Ljava/lang/String; = "s_c_6"

.field private static final MEASURE_KEY_STEP_COST_7:Ljava/lang/String; = "s_c_7"

.field private static final MEASURE_KEY_STEP_COST_8:Ljava/lang/String; = "s_c_8"

.field private static final MEASURE_KEY_STEP_COST_9:Ljava/lang/String; = "s_c_9"

.field private static final MODULE:Ljava/lang/String; = "unify"

.field private static final MONITOR_POINT:Ljava/lang/String; = "full_flow"

.field private static sIsRegistered:Z


# instance fields
.field private mStatisticsModelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->sIsRegistered:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/statistics/unify/UnifyStatisticsImpl;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->mStatisticsModelMap:Ljava/util/Map;

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->register()V

    .line 88
    return-void
.end method


# virtual methods
.method public commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V
    .locals 22
    .param p1, "statisticsModel"    # Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;

    .prologue
    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->enableStat(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v5, p1

    .line 212
    check-cast v5, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    .line 214
    .local v5, "fullFlowUnifyStatisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;
    sget-boolean v18, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->sIsRegistered:Z

    if-nez v18, :cond_2

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->register()V

    .line 218
    :cond_2
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v4

    .line 219
    .local v4, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v18, "version"

    iget-object v0, v5, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->version:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 220
    const-string/jumbo v18, "biztype"

    iget-object v0, v5, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->bizType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 221
    const-string/jumbo v18, "subtype"

    iget-object v0, v5, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->subType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 222
    const-string/jumbo v18, "mime"

    iget-object v0, v5, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->mime:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 223
    const-string/jumbo v18, "vip_flag"

    iget-object v0, v5, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->vipFlag:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 224
    const-string/jumbo v18, "channel_type"

    iget-object v0, v5, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->channelType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 225
    const-string/jumbo v18, "result"

    iget-object v0, v5, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->result:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 226
    const-string/jumbo v18, "err_code"

    iget-object v0, v5, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->errorCode:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 227
    const-string/jumbo v18, "statuscode"

    iget-object v0, v5, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->statusCode:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 229
    const-string/jumbo v18, "err_step"

    iget-object v0, v5, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->errorStep:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 231
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v6

    .line 232
    .local v6, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v18, "rate"

    iget-wide v0, v5, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->rate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 233
    const-string/jumbo v18, "total_size"

    iget-wide v0, v5, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->totalSize:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 234
    const-string/jumbo v18, "transfer_size"

    iget-wide v0, v5, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->transferSize:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 235
    const-string/jumbo v18, "cost"

    iget-wide v0, v5, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->cost:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 237
    iget-object v7, v5, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->subFlowMap:Ljava/util/Map;

    .line 238
    .local v7, "subFlowMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;>;"
    const-string/jumbo v18, "1"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;

    .line 239
    .local v8, "subFlowModelStep1":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    if-eqz v8, :cond_3

    .line 240
    const-string/jumbo v18, "s_r_1"

    iget-object v0, v8, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->result:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 241
    const-string/jumbo v18, "s_c_1"

    iget-wide v0, v8, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->cost:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 244
    :cond_3
    const-string/jumbo v18, "2"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;

    .line 245
    .local v10, "subFlowModelStep2":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    if-eqz v10, :cond_4

    .line 246
    const-string/jumbo v18, "s_r_2"

    iget-object v0, v10, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->result:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 247
    const-string/jumbo v18, "s_c_2"

    iget-wide v0, v10, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->cost:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 250
    :cond_4
    const-string/jumbo v18, "3"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;

    .line 251
    .local v11, "subFlowModelStep3":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    if-eqz v11, :cond_5

    .line 252
    const-string/jumbo v18, "s_r_3"

    iget-object v0, v11, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->result:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 253
    const-string/jumbo v18, "s_c_3"

    iget-wide v0, v11, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->cost:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 256
    :cond_5
    const-string/jumbo v18, "4"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;

    .line 257
    .local v12, "subFlowModelStep4":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    if-eqz v12, :cond_6

    .line 258
    const-string/jumbo v18, "s_r_4"

    iget-object v0, v12, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->result:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 259
    const-string/jumbo v18, "s_c_4"

    iget-wide v0, v12, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->cost:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 262
    :cond_6
    const-string/jumbo v18, "5"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;

    .line 263
    .local v13, "subFlowModelStep5":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    if-eqz v13, :cond_7

    .line 264
    const-string/jumbo v18, "s_r_5"

    iget-object v0, v13, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->result:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 265
    const-string/jumbo v18, "s_c_5"

    iget-wide v0, v13, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->cost:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 268
    :cond_7
    const-string/jumbo v18, "6"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;

    .line 269
    .local v14, "subFlowModelStep6":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    if-eqz v14, :cond_8

    .line 270
    const-string/jumbo v18, "s_r_6"

    iget-object v0, v14, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->result:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 271
    const-string/jumbo v18, "s_c_6"

    iget-wide v0, v14, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->cost:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 274
    :cond_8
    const-string/jumbo v18, "7"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;

    .line 275
    .local v15, "subFlowModelStep7":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    if-eqz v15, :cond_9

    .line 276
    const-string/jumbo v18, "s_r_7"

    iget-object v0, v15, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->result:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 277
    const-string/jumbo v18, "s_c_7"

    iget-wide v0, v15, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->cost:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 280
    :cond_9
    const-string/jumbo v18, "8"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;

    .line 281
    .local v16, "subFlowModelStep8":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    if-eqz v16, :cond_a

    .line 282
    const-string/jumbo v18, "s_r_8"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->result:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 283
    const-string/jumbo v18, "s_c_8"

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->cost:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 286
    :cond_a
    const-string/jumbo v18, "9"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;

    .line 287
    .local v17, "subFlowModelStep9":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    if-eqz v17, :cond_b

    .line 288
    const-string/jumbo v18, "s_r_9"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->result:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 289
    const-string/jumbo v18, "s_c_9"

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->cost:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 292
    :cond_b
    const-string/jumbo v18, "10"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;

    .line 293
    .local v9, "subFlowModelStep10":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    if-eqz v9, :cond_c

    .line 294
    const-string/jumbo v18, "s_r_10"

    iget-object v0, v9, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->result:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 295
    const-string/jumbo v18, "s_c_10"

    iget-wide v0, v9, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->cost:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 298
    :cond_c
    sget-object v18, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->sStatistics:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v19, "unify"

    const-string/jumbo v20, "full_flow"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v4, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0
.end method

.method public commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "errorStep"    # Ljava/lang/String;
    .param p3, "stepErrorCode"    # Ljava/lang/String;
    .param p4, "serverErrorCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->mStatisticsModelMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    .line 167
    .local v0, "statisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p2, p3, p4}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 173
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->mStatisticsModelMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public commitSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "bizType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->mStatisticsModelMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    .line 150
    .local v0, "statisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalSuccessModel()Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 156
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->mStatisticsModelMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public endSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "step"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->mStatisticsModelMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    .line 135
    .local v0, "statisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;
    if-eqz v0, :cond_0

    .line 139
    const-string/jumbo v1, "Y"

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUnifyStatisticsModel(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;
    .locals 1
    .param p1, "bizType"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 198
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->mStatisticsModelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;

    goto :goto_0
.end method

.method protected register()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 305
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    .line 306
    .local v3, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v0, "version"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 307
    const-string/jumbo v0, "biztype"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 308
    const-string/jumbo v0, "subtype"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 309
    const-string/jumbo v0, "vip_flag"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 310
    const-string/jumbo v0, "mime"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 311
    const-string/jumbo v0, "channel_type"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 312
    const-string/jumbo v0, "result"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 313
    const-string/jumbo v0, "err_code"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 314
    const-string/jumbo v0, "statuscode"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 316
    const-string/jumbo v0, "err_step"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 317
    const-string/jumbo v0, "s_r_1"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 318
    const-string/jumbo v0, "s_r_2"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 319
    const-string/jumbo v0, "s_r_3"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 320
    const-string/jumbo v0, "s_r_4"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 321
    const-string/jumbo v0, "s_r_5"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 322
    const-string/jumbo v0, "s_r_6"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 323
    const-string/jumbo v0, "s_r_7"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 324
    const-string/jumbo v0, "s_r_8"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 325
    const-string/jumbo v0, "s_r_9"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 326
    const-string/jumbo v0, "s_r_10"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 329
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 330
    .local v4, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v0, "rate"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 331
    const-string/jumbo v0, "total_size"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 332
    const-string/jumbo v0, "transfer_size"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 333
    const-string/jumbo v0, "cost"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 335
    const-string/jumbo v0, "s_c_1"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 336
    const-string/jumbo v0, "s_c_2"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 337
    const-string/jumbo v0, "s_c_3"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 338
    const-string/jumbo v0, "s_c_4"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 339
    const-string/jumbo v0, "s_c_5"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 340
    const-string/jumbo v0, "s_c_6"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 341
    const-string/jumbo v0, "s_c_7"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 342
    const-string/jumbo v0, "s_c_8"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 343
    const-string/jumbo v0, "s_c_9"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 344
    const-string/jumbo v0, "s_c_10"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 347
    sget-object v0, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->sStatistics:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "unify"

    const-string/jumbo v2, "full_flow"

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V

    .line 349
    sput-boolean v5, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->sIsRegistered:Z

    .line 350
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "bizType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->mStatisticsModelMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    .line 184
    .local v0, "statisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->mStatisticsModelMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public startStatistics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    .line 98
    .local v0, "statisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->mStatisticsModelMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->mStatisticsModelMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "statisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;
    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    .line 102
    .restart local v0    # "statisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;
    :cond_1
    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->clear()V

    .line 109
    :goto_1
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startStatistics(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    new-instance v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    .end local v0    # "statisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;
    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;-><init>()V

    .line 106
    .restart local v0    # "statisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->mStatisticsModelMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public startSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "step"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;->mStatisticsModelMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    .line 120
    .local v0, "statisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    goto :goto_0
.end method
