.class public final Lcom/alibaba/android/search/service/SearchConfigCenter;
.super Ljava/lang/Object;
.source "SearchConfigCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/service/SearchConfigCenter$MsgSearchTypeConfig;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/alibaba/android/search/service/SearchConfigCenter;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/service/SearchConfigCenter$MsgSearchTypeConfig;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/alibaba/android/search/service/SearchConfigCenter;

    invoke-direct {v0}, Lcom/alibaba/android/search/service/SearchConfigCenter;-><init>()V

    sput-object v0, Lcom/alibaba/android/search/service/SearchConfigCenter;->c:Lcom/alibaba/android/search/service/SearchConfigCenter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static a()Lcom/alibaba/android/search/service/SearchConfigCenter;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/alibaba/android/search/service/SearchConfigCenter;->c:Lcom/alibaba/android/search/service/SearchConfigCenter;

    return-object v0
.end method

.method static synthetic a(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .param p0, "x0"    # Ljava/util/Map;

    .prologue
    const/4 v2, 0x5

    .line 23
    .line 5037
    if-eqz p0, :cond_1

    .line 5038
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v0

    .line 5039
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 5040
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5043
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    .line 5046
    :cond_1
    const/4 v0, 0x0

    .line 23
    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 120
    const-string/jumbo v0, "pref_key_search_vvip_list"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/search/service/SearchConfigCenter$MsgSearchTypeConfig;
    .locals 5
    .param p1, "contentType"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v2, p0, Lcom/alibaba/android/search/service/SearchConfigCenter;->a:Ljava/util/List;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 78
    :goto_0
    return-object v0

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/search/service/SearchConfigCenter;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/service/SearchConfigCenter$MsgSearchTypeConfig;

    .line 74
    .local v0, "config":Lcom/alibaba/android/search/service/SearchConfigCenter$MsgSearchTypeConfig;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/alibaba/android/search/service/SearchConfigCenter$MsgSearchTypeConfig;->contentTypes:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/alibaba/android/search/service/SearchConfigCenter$MsgSearchTypeConfig;->contentTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0    # "config":Lcom/alibaba/android/search/service/SearchConfigCenter$MsgSearchTypeConfig;
    :cond_2
    move-object v0, v1

    .line 78
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "configJson"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    :goto_0
    return-void

    .line 55
    :cond_0
    :try_start_0
    const-class v2, Ljava/lang/Long;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 56
    .local v1, "userWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v1, :cond_1

    .line 57
    const-string/jumbo v2, "empty debug whitelist config list"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 1050
    const-string/jumbo v4, "search"

    invoke-static {v4, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v1    # "userWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Exception parse msg search type config:"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {v0}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    .line 2050
    const-string/jumbo v4, "search"

    invoke-static {v4, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "userWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    iput-object v1, p0, Lcom/alibaba/android/search/service/SearchConfigCenter;->b:Ljava/util/List;

    .line 62
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "pref_key_msg_debug_white_list"

    invoke-static {v2, v3, p1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6
    .param p1, "configJson"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    :goto_0
    return-void

    .line 105
    :cond_0
    :try_start_0
    const-class v2, Lcom/alibaba/android/search/service/SearchConfigCenter$MsgSearchTypeConfig;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 106
    .local v0, "configList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/service/SearchConfigCenter$MsgSearchTypeConfig;>;"
    if-nez v0, :cond_1

    .line 107
    const-string/jumbo v2, "empty msg search type config list"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 3050
    const-string/jumbo v4, "search"

    invoke-static {v4, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v0    # "configList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/service/SearchConfigCenter$MsgSearchTypeConfig;>;"
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Exception parse msg search type config:"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {v1}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    .line 4050
    const-string/jumbo v4, "search"

    invoke-static {v4, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "configList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/service/SearchConfigCenter$MsgSearchTypeConfig;>;"
    :cond_1
    :try_start_1
    iput-object v0, p0, Lcom/alibaba/android/search/service/SearchConfigCenter;->a:Ljava/util/List;

    .line 112
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "pref_key_msg_search_type_list"

    invoke-static {v2, v3, p1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
