.class public interface abstract Lcom/alibaba/android/dingtalk/live/idl/client/LiveRecordService;
.super Ljava/lang/Object;
.source "LiveRecordService.java"

# interfaces
.implements Lizl;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract delLiveRecord(Ljava/lang/String;Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getLiveRecord(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lbvl;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getLiveRecordsAroundMe(IIILiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Liyv",
            "<",
            "Lbvf;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getLiveRecordsStartByMe(IILiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Liyv",
            "<",
            "Lbvf;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getPublicTypeInfo(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lbvl;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listLiveRecords(Lbve;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbve;",
            "Liyv",
            "<",
            "Lbvf;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract renameLiveRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract shareTo(Lbvr;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvr;",
            "Liyv",
            "<",
            "Lbvs;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updatePublicType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Lbvl;",
            ">;)V"
        }
    .end annotation
.end method
