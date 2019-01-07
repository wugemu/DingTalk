.class public interface abstract Lcom/alibaba/wukong/idl/log/client/ClientLogIService;
.super Ljava/lang/Object;
.source "ClientLogIService.java"

# interfaces
.implements Lizl;


# virtual methods
.method public abstract alarm(Lcom/alibaba/wukong/idl/log/models/AlarmModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/idl/log/models/AlarmModel;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract upload(Lcom/alibaba/wukong/idl/log/models/UploadModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/idl/log/models/UploadModel;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
