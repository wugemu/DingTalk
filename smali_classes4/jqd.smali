.class public interface abstract Ljqd;
.super Ljava/lang/Object;
.source "IWMLContext.java"


# virtual methods
.method public abstract addPerLog(Ljava/lang/String;)Ljpm;
.end method

.method public abstract addShareInfo(Ljava/lang/String;Lcom/taobao/windmill/bundle/container/common/ShareInfoModel;)V
.end method

.method public abstract buildBundleUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAppCode()Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
.end method

.method public abstract getAppId()Ljava/lang/String;
.end method

.method public abstract getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
.end method

.method public abstract getAppLoadingView()Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;
.end method

.method public abstract getCurrentPageFrame()Ljqe;
.end method

.method public abstract getFileLoader()Ljqw;
.end method

.method public abstract getManifest()Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;
.end method

.method public abstract getMemoryStorage(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getRouter()Ljqr;
.end method

.method public abstract getRuntimeInstance()Ljrz;
.end method

.method public abstract putMemoryStorage(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setActionSheet(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDrawerInfo(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
