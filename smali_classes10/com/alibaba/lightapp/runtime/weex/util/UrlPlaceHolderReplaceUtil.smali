.class public Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil;
.super Ljava/lang/Object;
.source "UrlPlaceHolderReplaceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;
    }
.end annotation


# static fields
.field private static final RECR_WEEX_VERSION_KEY:Ljava/lang/String; = "RECR_WEEX_VERSION_KEY"

.field private static final TAG:Ljava/lang/String; = "UrlPlaceHolderReplaceUtil"

.field private static final VERSION_CONTAINER:Ljava/lang/String; = "$RECRWeexVersion$"

.field private static final VERSION_HOLDER:Ljava/lang/String; = "\\$RECRWeexVersion\\$"

.field private static VERSION_HOLDER_ENCODE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    :try_start_0
    const-string/jumbo v1, "$RECRWeexVersion$"

    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil;->VERSION_HOLDER_ENCODE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-void

    .line 31
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_0
    move-exception v0

    .line 32
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil;->replaceUrlHolder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceUrlHolder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "originUrl"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    .end local p0    # "originUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 93
    .restart local p0    # "originUrl":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    const-string/jumbo v2, "RECR_WEEX_VERSION_KEY"

    invoke-static {v2}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    :cond_2
    const-string/jumbo v2, "RECR_WEEX_VERSION_KEY"

    invoke-static {v2, p1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    move-object v1, p0

    .line 105
    .local v1, "richUrl":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil;->VERSION_HOLDER_ENCODE:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    const-string/jumbo v2, "\\$RECRWeexVersion\\$"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object p0, v1

    .line 111
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static wrapperVersionHolderUrl(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;)V
    .locals 8
    .param p0, "originUrl"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;

    .prologue
    .line 37
    const-string/jumbo v4, "UrlPlaceHolderReplaceUtil"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "originUrl in wrapperVersionHolderUrl=>"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p0, v5, v6

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceNet(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    invoke-interface {p1, p0}, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;->callback(Ljava/lang/String;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string/jumbo v4, "$RECRWeexVersion$"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil;->VERSION_HOLDER_ENCODE:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 46
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v2

    .line 47
    .local v2, "orgId":J
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "corpId":Ljava/lang/String;
    const-class v4, Lcom/alibaba/lightapp/runtime/idl/RECRCommonIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/idl/RECRCommonIService;

    .line 49
    .local v1, "service":Lcom/alibaba/lightapp/runtime/idl/RECRCommonIService;
    new-instance v4, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$1;

    invoke-direct {v4, p1, p0}, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;Ljava/lang/String;)V

    invoke-interface {v1, v0, v4}, Lcom/alibaba/lightapp/runtime/idl/RECRCommonIService;->getWeexMainVersion(Ljava/lang/String;Liyv;)V

    goto :goto_0

    .line 75
    .end local v0    # "corpId":Ljava/lang/String;
    .end local v1    # "service":Lcom/alibaba/lightapp/runtime/idl/RECRCommonIService;
    .end local v2    # "orgId":J
    :cond_3
    if-eqz p1, :cond_0

    .line 76
    invoke-interface {p1, p0}, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;->callback(Ljava/lang/String;)V

    goto :goto_0
.end method
