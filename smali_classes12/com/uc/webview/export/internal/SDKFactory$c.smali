.class final Lcom/uc/webview/export/internal/SDKFactory$c;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/SDKFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2042
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory$c;->a:Ljava/lang/Object;

    .line 2043
    sput-object v1, Lcom/uc/webview/export/internal/SDKFactory$c;->b:Ljava/lang/String;

    .line 2044
    sput-object v1, Lcom/uc/webview/export/internal/SDKFactory$c;->c:Ljava/util/Map;

    .line 2045
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/webview/export/internal/SDKFactory$c;->d:Z

    return-void
.end method

.method public static a()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    .line 2082
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory$c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory$c;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory$c;->d:Z

    if-eqz v0, :cond_1

    .line 2119
    :cond_0
    :goto_0
    return-void

    .line 2085
    :cond_1
    sget-object v3, Lcom/uc/webview/export/internal/SDKFactory$c;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 2086
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory$c;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory$c;->c:Ljava/util/Map;

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory$c;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 2087
    const/4 v1, 0x0

    .line 2089
    :try_start_1
    const-string/jumbo v0, "SDKFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ParamCD.parser sCD : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/uc/webview/export/internal/SDKFactory$c;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    const-string/jumbo v0, "cd_pp_co"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 2091
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2092
    new-instance v5, Lorg/json/JSONObject;

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory$c;->b:Ljava/lang/String;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2093
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 2094
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2095
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2096
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2097
    const-string/jumbo v8, "SDKFactory"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ParamCD.parser key : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 2113
    :catch_0
    move-exception v0

    .line 2104
    :try_start_2
    const-string/jumbo v1, "SDKFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ParamCD.parser cd exception java.lang.ClassCastException "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2112
    :try_start_3
    const-string/jumbo v0, "SDKFactory"

    const-string/jumbo v1, "ParamCD.parser faulure!!"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/webview/export/internal/SDKFactory$c;->d:Z

    .line 2115
    const-string/jumbo v0, "cd_pp_fa"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 2119
    :cond_2
    :goto_2
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2100
    :cond_3
    :try_start_4
    sput-object v4, Lcom/uc/webview/export/internal/SDKFactory$c;->c:Ljava/util/Map;

    .line 2101
    const-string/jumbo v0, "cd_pp_su"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 2105
    :catch_1
    move-exception v0

    .line 2107
    :try_start_5
    const-string/jumbo v1, "SDKFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ParamCD.parser cd exception org.json.JSONException "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2112
    :try_start_6
    const-string/jumbo v0, "SDKFactory"

    const-string/jumbo v1, "ParamCD.parser faulure!!"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/webview/export/internal/SDKFactory$c;->d:Z

    .line 2115
    const-string/jumbo v0, "cd_pp_fa"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 2108
    :catch_2
    move-exception v0

    .line 2110
    :try_start_7
    const-string/jumbo v1, "SDKFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ParamCD.parser cd exception java.lang.Throwable "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2112
    :try_start_8
    const-string/jumbo v0, "SDKFactory"

    const-string/jumbo v1, "ParamCD.parser faulure!!"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/webview/export/internal/SDKFactory$c;->d:Z

    .line 2115
    const-string/jumbo v0, "cd_pp_fa"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_2

    .line 2112
    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v1, :cond_4

    .line 2113
    const-string/jumbo v1, "SDKFactory"

    const-string/jumbo v2, "ParamCD.parser faulure!!"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    const/4 v1, 0x1

    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory$c;->d:Z

    .line 2115
    const-string/jumbo v1, "cd_pp_fa"

    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    :cond_4
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2112
    :catchall_2
    move-exception v0

    move v1, v2

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2048
    const-string/jumbo v0, "JSON_CMD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2065
    :goto_0
    return-void

    .line 2051
    :cond_0
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory$c;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2052
    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory$c;->b:Ljava/lang/String;

    .line 2053
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory$c;->c:Ljava/util/Map;

    .line 2054
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/webview/export/internal/SDKFactory$c;->d:Z

    .line 2055
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2057
    :try_start_1
    new-instance v0, Lcom/uc/webview/export/internal/b;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/b;-><init>()V

    .line 2061
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/b;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2062
    :catch_0
    move-exception v0

    .line 2063
    const-string/jumbo v1, "SDKFactory"

    const-string/jumbo v2, "parser"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2055
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2068
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory$c;->a()V

    .line 2070
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory$c;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory$c;->c:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 2078
    :cond_0
    :goto_0
    return-object v0

    .line 2073
    :cond_1
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory$c;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2074
    :try_start_0
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory$c;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory$c;->c:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 2075
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory$c;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 2077
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
