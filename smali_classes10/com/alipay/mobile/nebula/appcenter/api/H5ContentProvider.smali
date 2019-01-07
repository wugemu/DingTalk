.class public interface abstract Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
.super Ljava/lang/Object;
.source "H5ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;
    }
.end annotation


# static fields
.field public static final H5_BRIDGE:Ljava/lang/String; = "https://a.alipayobjects.com/bridgeapi/1.0/jsready.js"

.field public static final PAGE_ERROR:Ljava/lang/String; = "https://alipay.com/h5container/h5_page_error.html"

.field public static final REDIRECT_LINK:Ljava/lang/String; = "https://alipay.com/h5container/redirect_link.html"

.field public static final SECURITY_LINK:Ljava/lang/String; = "https://alipay.com/h5container/security_link.html"

.field public static final UN_SAFE:Ljava/lang/String; = "https://alipay.com/h5container/un_safe.html"

.field public static final WHITE_LINK:Ljava/lang/String; = "https://alipay.com/h5container/white_link.html"


# virtual methods
.method public abstract getContent(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end method

.method public abstract getContent(Ljava/lang/String;Z)Landroid/webkit/WebResourceResponse;
.end method

.method public abstract getContent(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V
.end method

.method public abstract getContentOnUi(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V
.end method

.method public abstract getFallbackUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract mapContent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract releaseContent()V
.end method

.method public abstract setEnableFallbackUrl(Z)V
.end method

.method public abstract setFallbackCache(Ljava/lang/String;[B)V
.end method
