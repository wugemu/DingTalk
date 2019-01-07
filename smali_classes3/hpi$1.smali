.class final Lhpi$1;
.super Lcmi;
.source "LWPResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhpi;->a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Lcom/alibaba/lightapp/runtime/net/HydroCache$b;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhkd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhkc;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/net/HydroCache$b;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

.field final synthetic f:J

.field final synthetic g:Lhpi;


# direct methods
.method constructor <init>(Lhpi;Lhkc;Lcom/alibaba/lightapp/runtime/net/HydroCache$b;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;J)V
    .locals 1
    .param p1, "this$0"    # Lhpi;

    .prologue
    .line 75
    iput-object p1, p0, Lhpi$1;->g:Lhpi;

    iput-object p2, p0, Lhpi$1;->a:Lhkc;

    iput-object p3, p0, Lhpi$1;->b:Lcom/alibaba/lightapp/runtime/net/HydroCache$b;

    iput-object p4, p0, Lhpi$1;->c:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    iput-object p5, p0, Lhpi$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lhpi$1;->e:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    iput-wide p7, p0, Lhpi$1;->f:J

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 150
    iget-object v0, p0, Lhpi$1;->g:Lhpi;

    iget-object v1, p0, Lhpi$1;->c:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    invoke-static {v0, v1, p2}, Lhpi;->a(Lhpi;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v0, "lwp"

    iget-object v1, p0, Lhpi$1;->g:Lhpi;

    .line 1059
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 151
    const-string/jumbo v2, "lwpResourceExcute_onLoadFail"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "code= "

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "msg= "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lhpi$1;->d:Ljava/lang/String;

    iget-object v1, p0, Lhpi$1;->g:Lhpi;

    .line 2059
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 153
    invoke-static {v0, v1, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitHttpOverLwpStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 155
    iget-object v0, p0, Lhpi$1;->g:Lhpi;

    .line 3055
    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 155
    iget-object v1, p0, Lhpi$1;->g:Lhpi;

    .line 3059
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 155
    invoke-static {v1}, Lhpo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhph;->c(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 75
    check-cast p1, Lhkd;

    .line 3079
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3081
    iget-object v0, p0, Lhpi$1;->a:Lhkc;

    if-eqz v0, :cond_c

    .line 3082
    if-eqz p1, :cond_b

    .line 3083
    iget-object v0, p1, Lhkd;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lhkd;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_3

    .line 3084
    iget-object v0, p0, Lhpi$1;->g:Lhpi;

    iget-object v1, p0, Lhpi$1;->b:Lcom/alibaba/lightapp/runtime/net/HydroCache$b;

    invoke-static {v0, v1}, Lhpi;->a(Lhpi;Lcom/alibaba/lightapp/runtime/net/HydroCache$b;)Z

    move-result v0

    .line 3085
    if-eqz v0, :cond_2

    .line 3086
    iget-object v0, p0, Lhpi$1;->c:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    if-eqz v0, :cond_0

    .line 3087
    iget-object v0, p0, Lhpi$1;->c:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lhpi$1;->b:Lcom/alibaba/lightapp/runtime/net/HydroCache$b;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->e:Lhpl;

    iget-object v2, v2, Lhpl;->a:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;->a(Ljava/io/InputStream;)V

    .line 3089
    :cond_0
    iget-object v0, p0, Lhpi$1;->g:Lhpi;

    .line 4055
    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 3089
    invoke-interface {v0}, Lhph;->d()Lcom/alibaba/lightapp/runtime/net/HydroCache;

    move-result-object v1

    .line 3090
    if-eqz v1, :cond_1

    .line 3091
    iget-object v0, p0, Lhpi$1;->g:Lhpi;

    iget-object v2, p0, Lhpi$1;->g:Lhpi;

    .line 4059
    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 3091
    invoke-static {v0, v2}, Lhpi;->a(Lhpi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4190
    if-eqz p1, :cond_1

    .line 4194
    iget-object v0, p1, Lhkd;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 4195
    iget-object v0, v1, Lcom/alibaba/lightapp/runtime/net/HydroCache;->a:Lcom/alibaba/doraemon/cache/Cache;

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/cache/Cache;->read(Ljava/lang/String;)Lcom/alibaba/doraemon/cache/CacheEntity;

    move-result-object v0

    .line 4196
    if-eqz v0, :cond_1

    .line 4197
    new-instance v3, Lhpl;

    .line 4198
    invoke-interface {v0}, Lcom/alibaba/doraemon/cache/CacheEntity;->getCacheData()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lhpo;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v5}, Lhpl;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 4199
    new-instance v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;-><init>()V

    .line 4200
    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->e:Lhpl;

    .line 4201
    iget-object v4, p1, Lhkd;->a:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->d:Ljava/lang/String;

    .line 4202
    iget-object v4, p1, Lhkd;->b:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->a:I

    .line 4203
    iget-object v4, p1, Lhkd;->e:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->c:J

    .line 4204
    iget-object v4, p1, Lhkd;->d:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->b:J

    .line 4205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->f:J

    .line 4207
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 4209
    :try_start_0
    const-string/jumbo v5, "eTag"

    iget-object v6, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4210
    const-string/jumbo v5, "checkAge"

    iget-wide v6, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->c:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 4211
    const-string/jumbo v5, "maxAge"

    iget-wide v6, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->b:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 4212
    const-string/jumbo v5, "statusCode"

    iget v6, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->a:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4213
    const-string/jumbo v5, "addTime"

    iget-wide v6, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->f:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4219
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 4220
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/net/HydroCache;->a:Lcom/alibaba/doraemon/cache/Cache;

    iget-object v3, v3, Lhpl;->a:[B

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/cache/Cache;->write(Ljava/lang/String;[B[B)Z

    .line 3094
    :cond_1
    iget-object v0, p0, Lhpi$1;->g:Lhpi;

    iget-object v1, p1, Lhkd;->a:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lhpi;->a(Lhpi;Ljava/lang/String;J)V

    .line 3145
    :goto_1
    iget-object v0, p0, Lhpi$1;->g:Lhpi;

    .line 17055
    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 3145
    iget-object v1, p0, Lhpi$1;->g:Lhpi;

    .line 17059
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 3145
    invoke-static {v1}, Lhpo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhph;->c(Ljava/lang/String;)V

    .line 75
    return-void

    .line 4214
    :catch_0
    move-exception v0

    .line 4215
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 4216
    const-string/jumbo v5, "lwp"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "updateLWPCacheResourceTime"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "code= "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 4217
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    .line 4216
    invoke-static {v5, v6, v7, v8}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3096
    :cond_2
    iget-object v0, p0, Lhpi$1;->g:Lhpi;

    iget-object v1, p0, Lhpi$1;->c:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    const-string/jumbo v2, "cacheResource.entity.data null"

    invoke-static {v0, v1, v2}, Lhpi;->a(Lhpi;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Ljava/lang/String;)V

    .line 3098
    const-string/jumbo v0, "lwp"

    iget-object v1, p0, Lhpi$1;->g:Lhpi;

    .line 5059
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 3098
    const-string/jumbo v2, "lwpResourceExcute_onLoadSuccess_cacheResource-entity_dataNull"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3099
    iget-object v0, p0, Lhpi$1;->d:Ljava/lang/String;

    iget-object v1, p0, Lhpi$1;->g:Lhpi;

    .line 6059
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 3099
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitHttpOverLwpStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 3102
    :cond_3
    iget-object v0, p1, Lhkd;->c:[B

    if-eqz v0, :cond_a

    .line 3103
    iget-object v0, p0, Lhpi$1;->g:Lhpi;

    invoke-static {v0, p1}, Lhpi;->a(Lhpi;Lhkd;)Z

    move-result v1

    .line 3104
    iget-object v0, p0, Lhpi$1;->c:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    if-eqz v0, :cond_4

    .line 3105
    iget-object v0, p0, Lhpi$1;->c:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p1, Lhkd;->c:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v4}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;->a(Ljava/io/InputStream;)V

    .line 3108
    :cond_4
    iget-object v0, p0, Lhpi$1;->g:Lhpi;

    .line 7055
    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 3108
    invoke-interface {v0}, Lhph;->d()Lcom/alibaba/lightapp/runtime/net/HydroCache;

    move-result-object v4

    .line 3109
    if-eqz v4, :cond_5

    .line 3110
    iget-object v0, p0, Lhpi$1;->g:Lhpi;

    iget-object v5, p0, Lhpi$1;->g:Lhpi;

    .line 7059
    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 3110
    invoke-static {v0, v5}, Lhpi;->a(Lhpi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7158
    if-eqz p1, :cond_5

    iget-object v0, p1, Lhkd;->c:[B

    if-eqz v0, :cond_5

    iget-object v0, p1, Lhkd;->c:[B

    array-length v0, v0

    if-gtz v0, :cond_8

    .line 3113
    :cond_5
    :goto_2
    const-string/jumbo v0, "lwp"

    iget-object v4, p0, Lhpi$1;->g:Lhpi;

    .line 8059
    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 3113
    const-string/jumbo v5, "lwpResourceExcute_onLoadSuccess"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3114
    iget-object v0, p0, Lhpi$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lhpi$1;->g:Lhpi;

    .line 9059
    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 3114
    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitHttpOverLwpStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3116
    if-eqz v1, :cond_6

    iget-object v0, p0, Lhpi$1;->e:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    if-eqz v0, :cond_6

    .line 3117
    const-string/jumbo v0, "lwp"

    iget-object v4, p0, Lhpi$1;->g:Lhpi;

    .line 10059
    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 3117
    const-string/jumbo v5, "lwpResourceExcute_forceReload"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3118
    iget-object v0, p0, Lhpi$1;->e:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    const-string/jumbo v4, "forceReload"

    invoke-interface {v0, v4}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;->a(Ljava/lang/String;)V

    .line 3120
    :cond_6
    if-nez v1, :cond_7

    iget-object v0, p0, Lhpi$1;->c:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    if-eqz v0, :cond_9

    .line 3122
    :cond_7
    iget-object v0, p0, Lhpi$1;->g:Lhpi;

    iget-object v1, p1, Lhkd;->a:Ljava/lang/String;

    iget-wide v4, p0, Lhpi$1;->f:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lhpi;->a(Lhpi;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 7162
    :cond_8
    new-instance v0, Lhpl;

    iget-object v6, p1, Lhkd;->c:[B

    invoke-direct {v0, v6}, Lhpl;-><init>([B)V

    .line 7164
    iget-object v6, p1, Lhkd;->d:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_5

    .line 7165
    new-instance v6, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;

    invoke-direct {v6}, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;-><init>()V

    .line 7166
    iput-object v0, v6, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->e:Lhpl;

    .line 7167
    iget-object v0, p1, Lhkd;->a:Ljava/lang/String;

    iput-object v0, v6, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->d:Ljava/lang/String;

    .line 7168
    iget-object v0, p1, Lhkd;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->a:I

    .line 7169
    iget-object v0, p1, Lhkd;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v8, v0

    iput-wide v8, v6, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->c:J

    .line 7170
    iget-object v0, p1, Lhkd;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v8, v0

    iput-wide v8, v6, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->b:J

    .line 7171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->f:J

    .line 7173
    iget-object v0, v6, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->e:Lhpl;

    iget-object v7, v0, Lhpl;->a:[B

    .line 7174
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 7176
    :try_start_1
    const-string/jumbo v0, "eTag"

    iget-object v9, v6, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->d:Ljava/lang/String;

    invoke-virtual {v8, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7177
    const-string/jumbo v0, "checkAge"

    iget-wide v10, v6, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->c:J

    invoke-virtual {v8, v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 7178
    const-string/jumbo v0, "maxAge"

    iget-wide v10, v6, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->b:J

    invoke-virtual {v8, v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 7179
    const-string/jumbo v0, "statusCode"

    iget v9, v6, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->a:I

    invoke-virtual {v8, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7180
    const-string/jumbo v0, "addTime"

    iget-wide v10, v6, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->f:J

    invoke-virtual {v8, v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 7184
    :goto_3
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 7185
    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/net/HydroCache;->a:Lcom/alibaba/doraemon/cache/Cache;

    invoke-interface {v4, v5, v7, v0}, Lcom/alibaba/doraemon/cache/Cache;->write(Ljava/lang/String;[B[B)Z

    goto/16 :goto_2

    .line 7181
    :catch_1
    move-exception v0

    .line 7182
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 3125
    :cond_9
    iget-object v0, p0, Lhpi$1;->g:Lhpi;

    iget-object v1, p1, Lhkd;->a:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lhpi;->a(Lhpi;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 3128
    :cond_a
    iget-object v0, p0, Lhpi$1;->g:Lhpi;

    iget-object v1, p0, Lhpi$1;->c:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    const-string/jumbo v2, "rocketRespModel.data null"

    invoke-static {v0, v1, v2}, Lhpi;->a(Lhpi;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Ljava/lang/String;)V

    .line 3129
    const-string/jumbo v0, "lwp"

    iget-object v1, p0, Lhpi$1;->g:Lhpi;

    .line 11059
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 3129
    const-string/jumbo v2, "lwpResourceExcute_onLoadSuccess_rocketRespModel_dataNull"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3130
    iget-object v0, p0, Lhpi$1;->d:Ljava/lang/String;

    iget-object v1, p0, Lhpi$1;->g:Lhpi;

    .line 12059
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 3130
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitHttpOverLwpStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 3134
    :cond_b
    iget-object v0, p0, Lhpi$1;->g:Lhpi;

    iget-object v1, p0, Lhpi$1;->c:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    const-string/jumbo v2, "error in response"

    invoke-static {v0, v1, v2}, Lhpi;->a(Lhpi;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Ljava/lang/String;)V

    .line 3135
    const-string/jumbo v0, "lwp"

    iget-object v1, p0, Lhpi$1;->g:Lhpi;

    .line 13059
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 3135
    const-string/jumbo v2, "lwpResourceExcute_onLoadSuccess_resultNull"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3136
    iget-object v0, p0, Lhpi$1;->d:Ljava/lang/String;

    iget-object v1, p0, Lhpi$1;->g:Lhpi;

    .line 14059
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 3136
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitHttpOverLwpStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 3140
    :cond_c
    iget-object v0, p0, Lhpi$1;->g:Lhpi;

    iget-object v1, p0, Lhpi$1;->c:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    const-string/jumbo v2, "rocketRespModel is null"

    invoke-static {v0, v1, v2}, Lhpi;->a(Lhpi;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Ljava/lang/String;)V

    .line 3141
    const-string/jumbo v0, "lwp"

    iget-object v1, p0, Lhpi$1;->g:Lhpi;

    .line 15059
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 3141
    const-string/jumbo v2, "lwpResourceExcute_onLoadSuccess_rocketRespModel_null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3142
    iget-object v0, p0, Lhpi$1;->d:Ljava/lang/String;

    iget-object v1, p0, Lhpi$1;->g:Lhpi;

    .line 16059
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 3142
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitHttpOverLwpStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method
