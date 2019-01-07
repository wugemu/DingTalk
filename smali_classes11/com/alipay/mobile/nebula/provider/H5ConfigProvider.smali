.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
.super Ljava/lang/Object;
.source "H5ConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;
    }
.end annotation


# static fields
.field public static final KEY_SSO_ALIPAY_WHITE_LIST_DOMAINS:Ljava/lang/String; = "h5_AlipayWhiteList"

.field public static final KEY_SSO_ALI_WHITE_LIST_DOMAINS:Ljava/lang/String; = "h5_AliWhiteList"

.field public static final KEY_SSO_PARTNER_WHITE_LIST_DOMAINS:Ljava/lang/String; = "h5_PartnerWhiteList"

.field public static final KEY_SSO_RPC_WHITE_LIST_DOMAINS:Ljava/lang/String; = "h5_rpcWhiteList"

.field public static final KEY_SSO_SERIOUS_ALI_WHITE_LIST_DOMAINS:Ljava/lang/String; = "h5_SeriousAliWhiteList"


# virtual methods
.method public abstract clearProcessCache()V
.end method

.method public abstract getConfig(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getConfigJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
.end method

.method public abstract getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
.end method

.method public abstract getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;
.end method

.method public abstract getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isAliDomains(Ljava/lang/String;)Z
.end method

.method public abstract isAlipayDomains(Ljava/lang/String;)Z
.end method

.method public abstract isPartnerDomains(Ljava/lang/String;)Z
.end method

.method public abstract isRpcDomains(Ljava/lang/String;)Z
.end method

.method public abstract isSeriousAliDomains(Ljava/lang/String;)Z
.end method

.method public abstract permitLocation(Ljava/lang/String;)Z
.end method
