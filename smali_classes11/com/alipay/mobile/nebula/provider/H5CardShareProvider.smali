.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5CardShareProvider;
.super Ljava/lang/Object;
.source "H5CardShareProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/provider/H5CardShareProvider$CardShareCallBack;
    }
.end annotation


# virtual methods
.method public abstract release()V
.end method

.method public abstract requestShareInfo(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5CardShareProvider$CardShareCallBack;Liop;Lcom/alibaba/fastjson/JSONObject;)V
.end method

.method public abstract syncAutoJsContent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
.end method
