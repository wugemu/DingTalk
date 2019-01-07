.class public interface abstract Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;
.super Ljava/lang/Object;
.source "FullFlowUnifyStatistics.java"

# interfaces
.implements Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;


# static fields
.field public static final DIMENSION_VALUE_STEP_1:Ljava/lang/String; = "1"

.field public static final DIMENSION_VALUE_STEP_10:Ljava/lang/String; = "10"

.field public static final DIMENSION_VALUE_STEP_2:Ljava/lang/String; = "2"

.field public static final DIMENSION_VALUE_STEP_3:Ljava/lang/String; = "3"

.field public static final DIMENSION_VALUE_STEP_4:Ljava/lang/String; = "4"

.field public static final DIMENSION_VALUE_STEP_5:Ljava/lang/String; = "5"

.field public static final DIMENSION_VALUE_STEP_6:Ljava/lang/String; = "6"

.field public static final DIMENSION_VALUE_STEP_7:Ljava/lang/String; = "7"

.field public static final DIMENSION_VALUE_STEP_8:Ljava/lang/String; = "8"

.field public static final DIMENSION_VALUE_STEP_9:Ljava/lang/String; = "9"


# virtual methods
.method public abstract commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract commitSuccess(Ljava/lang/String;)V
.end method

.method public abstract endSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getUnifyStatisticsModel(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract startStatistics(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V
.end method
