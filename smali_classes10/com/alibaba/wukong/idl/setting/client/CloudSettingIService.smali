.class public interface abstract Lcom/alibaba/wukong/idl/setting/client/CloudSettingIService;
.super Ljava/lang/Object;
.source "CloudSettingIService.java"

# interfaces
.implements Lizl;


# virtual methods
.method public abstract getLatestSetting(JLiyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateCloudSettings(Lcom/alibaba/wukong/auth/x;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/auth/x;",
            "Liyv",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method
