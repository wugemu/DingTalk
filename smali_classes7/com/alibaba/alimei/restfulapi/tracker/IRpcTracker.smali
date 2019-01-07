.class public interface abstract Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;
.super Ljava/lang/Object;
.source "IRpcTracker.java"


# static fields
.field public static final DOWNSTREAM_TYPE_FILE:I = 0x1

.field public static final DOWNSTREAM_TYPE_NORMAL:I


# virtual methods
.method public abstract commit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract endTrackDuration(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract endTraffic(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registerMonitorPointDynamic(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registerMonitorPointDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeTrackDuration(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reportTraffic(Ljava/lang/String;Ljava/lang/String;JJI)V
.end method

.method public abstract startTrackDuration(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startTraffic(Ljava/lang/String;Ljava/lang/String;)V
.end method
