.class public Lbru;
.super Ljava/lang/Object;
.source "CacheUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbru$a;
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static e:Lbru;


# instance fields
.field public a:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Object;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "https://dev-alidocs.dingtalk.com/h5/d?dd_func_rt=true&dd_rt_type=1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "https://dev-alidocs.dingtalk.com/h5/s?dd_func_rt=true&dd_rt_type=1"

    aput-object v1, v0, v3

    sput-object v0, Lbru;->b:[Ljava/lang/String;

    .line 48
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "https://pre-alidocs.dingtalk.com/h5/d?dd_func_rt=true&dd_rt_type=1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "https://pre-alidocs.dingtalk.com/h5/s?dd_func_rt=true&dd_rt_type=1"

    aput-object v1, v0, v3

    sput-object v0, Lbru;->c:[Ljava/lang/String;

    .line 53
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "https://alidocs.dingtalk.com/h5/d?dd_func_rt=true&dd_rt_type=1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "https://alidocs.dingtalk.com/h5/s?dd_func_rt=true&dd_rt_type=1"

    aput-object v1, v0, v3

    sput-object v0, Lbru;->d:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbru;->a:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbru;->f:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbru;->g:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbru;->h:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbru;->i:Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public static a()Lbru;
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lbru;->e:Lbru;

    if-nez v0, :cond_1

    .line 78
    const-class v1, Lbru;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v0, Lbru;->e:Lbru;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lbru;

    invoke-direct {v0}, Lbru;-><init>()V

    sput-object v0, Lbru;->e:Lbru;

    .line 82
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_1
    sget-object v0, Lbru;->e:Lbru;

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lbru;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lbru;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    .line 1262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1263
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 1265
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1267
    const-string/jumbo v1, "(?<=(?:(href|src)=\"))(.*?)(?=(?:\"))"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1268
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1269
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1270
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 1271
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseResourceList "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    if-eqz v2, :cond_2

    const-string/jumbo v3, "dd_cache=true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1273
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lbru;)V
    .locals 7
    .param p0, "x0"    # Lbru;

    .prologue
    const/4 v2, 0x0

    .line 41
    .line 4103
    const-string/jumbo v0, "doc"

    const-string/jumbo v1, "CacheUpdater"

    const-string/jumbo v3, "cache update start!"

    invoke-static {v0, v1, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4218
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v0

    if-nez v0, :cond_0

    .line 4219
    sget-object v0, Lbru;->b:[Ljava/lang/String;

    .line 4106
    :goto_0
    iget-object v1, p0, Lbru;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 4107
    :try_start_0
    iget-object v3, p0, Lbru;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 4108
    iget-object v3, p0, Lbru;->f:Ljava/util/List;

    invoke-static {v3, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4109
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4111
    iget-object v1, p0, Lbru;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 4112
    :try_start_1
    iget-object v3, p0, Lbru;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 4113
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4116
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v1

    .line 5175
    iput-boolean v2, v1, Lhpe;->d:Z

    move v1, v2

    .line 4117
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 4118
    aget-object v3, v0, v1

    .line 4119
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v4

    invoke-static {}, Lbru;->b()Ljava/util/Map;

    move-result-object v5

    new-instance v6, Lbru$2;

    invoke-direct {v6, p0, v3}, Lbru$2;-><init>(Lbru;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v5, v2, v6}, Lhpe;->a(Ljava/lang/String;Ljava/util/Map;ZLhpj;)Lcom/uc/webview/export/WebResourceResponse;

    .line 4117
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4220
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v0

    sget v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-ne v0, v1, :cond_1

    .line 4221
    sget-object v0, Lbru;->c:[Ljava/lang/String;

    goto :goto_0

    .line 4223
    :cond_1
    sget-object v0, Lbru;->d:[Ljava/lang/String;

    goto :goto_0

    .line 4109
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4113
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 41
    :cond_2
    return-void
.end method

.method static synthetic a(Lbru;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p0, "x0"    # Lbru;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 41
    .line 2136
    if-eqz p2, :cond_2

    .line 2137
    iget-object v1, p0, Lbru;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 2138
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2139
    iget-object v3, p0, Lbru;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2140
    iget-object v3, p0, Lbru;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2146
    :cond_2
    iget-object v1, p0, Lbru;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 2147
    :try_start_2
    iget-object v0, p0, Lbru;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2149
    iget-object v0, p0, Lbru;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 2156
    iget-object v2, p0, Lbru;->i:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2157
    :try_start_3
    const-string/jumbo v0, "doc"

    const-string/jumbo v3, "CacheUpdater"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "doCache cacheList = "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lbru;->h:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    iget-object v0, p0, Lbru;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2163
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v4

    invoke-static {}, Lbru;->b()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lbru$3;

    invoke-direct {v7, p0, v0}, Lbru$3;-><init>(Lbru;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v5, v6, v7}, Lhpe;->a(Ljava/lang/String;Ljava/util/Map;ZLhpj;)Lcom/uc/webview/export/WebResourceResponse;

    .line 2176
    const-string/jumbo v4, ".js"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, ".js?"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2189
    :cond_4
    const/4 v4, 0x3

    const/4 v5, 0x1

    new-instance v6, Lbru$4;

    invoke-direct {v6, p0, v0}, Lbru$4;-><init>(Lbru;Ljava/lang/String;)V

    invoke-static {v0, v4, v5, v6}, Lcom/uc/webview/export/extension/UCCore;->prefetchResource(Ljava/lang/String;IILandroid/webkit/ValueCallback;)V

    goto :goto_1

    .line 2204
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 2152
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 2195
    :cond_5
    :try_start_5
    const-string/jumbo v4, ".css"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, ".css?"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2196
    :cond_6
    const/4 v4, 0x2

    const/4 v5, 0x1

    new-instance v6, Lbru$5;

    invoke-direct {v6, p0, v0}, Lbru$5;-><init>(Lbru;Ljava/lang/String;)V

    invoke-static {v0, v4, v5, v6}, Lcom/uc/webview/export/extension/UCCore;->prefetchResource(Ljava/lang/String;IILandroid/webkit/ValueCallback;)V

    goto :goto_1

    .line 2204
    :cond_7
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2152
    :cond_8
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void
.end method

.method private static b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 257
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "Cache-Control"

    const-string/jumbo v2, "max-age=0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    return-object v0
.end method

.method static synthetic b(Lbru;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lbru;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    .line 2208
    iget-object v2, p0, Lbru;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 2209
    :try_start_0
    iget-object v0, p0, Lbru;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2211
    iget-object v0, p0, Lbru;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2227
    const-string/jumbo v0, "doc"

    const-string/jumbo v1, "CacheUpdater"

    const-string/jumbo v3, "handleUpdateComplete"

    invoke-static {v0, v1, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getRuntimeLifeCycles()Ljava/util/List;

    move-result-object v0

    .line 2230
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2235
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2236
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2238
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 2239
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2241
    const-string/jumbo v4, "webview_onResume"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2243
    const-string/jumbo v4, "webview_onPause"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2244
    const-string/jumbo v0, "doc"

    const-string/jumbo v1, "CacheUpdater"

    const-string/jumbo v3, "handleUpdateComplete pause rocket~!"

    invoke-static {v0, v1, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v0

    .line 3168
    const/4 v1, 0x1

    iput-boolean v1, v0, Lhpe;->d:Z

    .line 2252
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbru;->a:Z

    .line 2214
    :cond_1
    monitor-exit v2

    return-void

    .line 2238
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2214
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
