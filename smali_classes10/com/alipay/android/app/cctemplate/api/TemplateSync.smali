.class public Lcom/alipay/android/app/cctemplate/api/TemplateSync;
.super Ljava/lang/Object;
.source "TemplateSync.java"


# static fields
.field private static mTemplateSyncCallback:Lcom/alipay/android/app/template/service/TemplateSyncEventHelper$TemplateSyncEventCallback;

.field private static sync:Lcom/alipay/android/app/cctemplate/api/TemplateSync;


# instance fields
.field private mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->mTemplateSyncCallback:Lcom/alipay/android/app/template/service/TemplateSyncEventHelper$TemplateSyncEventCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/cctemplate/api/TemplateSync;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/cctemplate/api/TemplateSync;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    return-object v0
.end method

.method private buildTpls(Lorg/json/JSONArray;)Ljava/util/Map;
    .locals 4
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    if-nez p1, :cond_1

    .line 113
    const/4 v2, 0x0

    .line 121
    :cond_0
    return-object v2

    .line 116
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v2, "tpls":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 118
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 119
    .local v1, "item":Lorg/json/JSONObject;
    invoke-direct {p0, v2, v1}, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->putTpl(Ljava/util/Map;Lorg/json/JSONObject;)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static instance()Lcom/alipay/android/app/cctemplate/api/TemplateSync;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->sync:Lcom/alipay/android/app/cctemplate/api/TemplateSync;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/alipay/android/app/cctemplate/api/TemplateSync;

    invoke-direct {v0}, Lcom/alipay/android/app/cctemplate/api/TemplateSync;-><init>()V

    sput-object v0, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->sync:Lcom/alipay/android/app/cctemplate/api/TemplateSync;

    .line 38
    :cond_0
    sget-object v0, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->sync:Lcom/alipay/android/app/cctemplate/api/TemplateSync;

    return-object v0
.end method

.method private putTpl(Ljava/util/Map;Lorg/json/JSONObject;)V
    .locals 12
    .param p2, "item"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    .local p1, "tpls":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "pl"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "plStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, "pl":Lorg/json/JSONObject;
    const-string/jumbo v7, "tplVersion"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "tplVersion":Ljava/lang/String;
    const-string/jumbo v7, "tplId"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "tplId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 139
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "QUICKPAY"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 140
    :cond_2
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v7

    const-string/jumbo v8, "template"

    const-string/jumbo v9, "TplSyncNotForCashier"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "tplId:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_3
    new-instance v4, Lcom/alipay/android/app/cctemplate/model/Template;

    invoke-direct {v4}, Lcom/alipay/android/app/cctemplate/model/Template;-><init>()V

    .line 146
    .local v4, "template":Lcom/alipay/android/app/cctemplate/model/Template;
    const-string/jumbo v7, "tplId"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    .line 147
    const-string/jumbo v7, "tag"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/alipay/android/app/cctemplate/model/Template;->tag:Ljava/lang/String;

    .line 148
    const-string/jumbo v7, "time"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    .line 149
    const-string/jumbo v7, "data"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    .line 150
    const-string/jumbo v7, "html"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/alipay/android/app/cctemplate/model/Template;->html:Ljava/lang/String;

    .line 151
    const-string/jumbo v7, "tplVersion"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    .line 152
    const-string/jumbo v7, "publishVersion"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    .line 153
    const-string/jumbo v7, "format"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/alipay/android/app/cctemplate/model/Template;->format:Ljava/lang/String;

    .line 155
    const-string/jumbo v7, "gziped"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "gziped":Ljava/lang/String;
    const-string/jumbo v7, "md5"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "md5":Ljava/lang/String;
    invoke-direct {p0, v0, v1, v4}, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->unGzipTemplate(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/cctemplate/model/Template;)Z

    .line 159
    iget-object v7, v4, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-static {v4}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private registSyncMessageImpl()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "TemplateSync::registSyncMessageImpl"

    const-string/jumbo v3, "start"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v1, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->mTemplateSyncCallback:Lcom/alipay/android/app/template/service/TemplateSyncEventHelper$TemplateSyncEventCallback;

    if-nez v1, :cond_0

    .line 58
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "TemplateSync::registSyncMessageImpl"

    const-string/jumbo v3, "mTemplateSyncCallback == null"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v1, Lcom/alipay/android/app/cctemplate/api/TemplateSync$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/cctemplate/api/TemplateSync$1;-><init>(Lcom/alipay/android/app/cctemplate/api/TemplateSync;)V

    sput-object v1, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->mTemplateSyncCallback:Lcom/alipay/android/app/template/service/TemplateSyncEventHelper$TemplateSyncEventCallback;

    .line 69
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/template/service/TemplateSyncEventHelper;->getInstance()Lcom/alipay/android/app/template/service/TemplateSyncEventHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/template/service/TemplateSyncEventHelper;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    .line 70
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alipay/android/app/template/service/TemplateSyncEventHelper$TemplateSyncEventCallback;>;"
    if-eqz v0, :cond_1

    sget-object v1, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->mTemplateSyncCallback:Lcom/alipay/android/app/template/service/TemplateSyncEventHelper$TemplateSyncEventCallback;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 71
    :cond_1
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "TemplateSync::registSyncMessageImpl"

    const-string/jumbo v3, "add callback"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/alipay/android/app/template/service/TemplateSyncEventHelper;->getInstance()Lcom/alipay/android/app/template/service/TemplateSyncEventHelper;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->mTemplateSyncCallback:Lcom/alipay/android/app/template/service/TemplateSyncEventHelper$TemplateSyncEventCallback;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/template/service/TemplateSyncEventHelper;->AddCallback(Lcom/alipay/android/app/template/service/TemplateSyncEventHelper$TemplateSyncEventCallback;)V

    .line 74
    :cond_2
    return-void
.end method

.method private unGzipTemplate(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/cctemplate/model/Template;)Z
    .locals 17
    .param p1, "gziped"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;
    .param p3, "template"    # Lcom/alipay/android/app/cctemplate/model/Template;

    .prologue
    .line 163
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 164
    const/4 v12, 0x0

    .line 210
    :goto_0
    return v12

    .line 167
    :cond_0
    const-string/jumbo v12, "true"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 169
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v2

    .line 170
    .local v2, "decodeIn":[B
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 171
    .local v6, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 173
    .local v4, "ir":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v6    # "is":Ljava/io/InputStream;
    .local v7, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/InputStreamReader;

    const-string/jumbo v12, "utf-8"

    invoke-direct {v5, v7, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .local v5, "ir":Ljava/io/InputStreamReader;
    const/16 v12, 0x64

    :try_start_2
    new-array v1, v12, [C

    .line 177
    .local v1, "charData":[C
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v11, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v5, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v10

    .local v10, "readSize":I
    if-lez v10, :cond_2

    .line 179
    const/4 v12, 0x0

    invoke-virtual {v11, v1, v12, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 190
    .end local v1    # "charData":[C
    .end local v10    # "readSize":I
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    move-object v4, v5

    .end local v5    # "ir":Ljava/io/InputStreamReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    move-object v6, v7

    .line 191
    .end local v7    # "is":Ljava/io/InputStream;
    .local v3, "e":Ljava/lang/Throwable;
    .restart local v6    # "is":Ljava/io/InputStream;
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v12

    const-string/jumbo v13, "template"

    const-string/jumbo v14, "TplSyncUnzipEx"

    invoke-virtual {v12, v13, v14, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    if-eqz v4, :cond_1

    .line 196
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 203
    :cond_1
    :goto_3
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 192
    :goto_4
    const/4 v12, 0x0

    goto :goto_0

    .line 181
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v1    # "charData":[C
    .restart local v5    # "ir":Ljava/io/InputStreamReader;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v10    # "readSize":I
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 182
    .local v8, "jsonString":Ljava/lang/String;
    invoke-static {v8}, Lcom/alipay/android/app/cctemplate/utils/MD5;->encryptMd5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 183
    .local v9, "localMd5":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 184
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v12

    const-string/jumbo v13, "template"

    const-string/jumbo v14, "TplSyncMd5Unmatch"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "localMd5:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "md5:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 196
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 203
    :goto_5
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 186
    :goto_6
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 197
    :catch_1
    move-exception v3

    .line 198
    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 204
    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v3

    .line 205
    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 188
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_3
    :try_start_9
    move-object/from16 v0, p3

    iput-object v8, v0, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    .line 189
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v12

    const-string/jumbo v13, "TemplateSync::unGzipTemplate"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "template.data="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 196
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 203
    :goto_7
    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 210
    .end local v1    # "charData":[C
    .end local v2    # "decodeIn":[B
    .end local v5    # "ir":Ljava/io/InputStreamReader;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "jsonString":Ljava/lang/String;
    .end local v9    # "localMd5":Ljava/lang/String;
    .end local v10    # "readSize":I
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :goto_8
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 197
    .restart local v1    # "charData":[C
    .restart local v2    # "decodeIn":[B
    .restart local v5    # "ir":Ljava/io/InputStreamReader;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "jsonString":Ljava/lang/String;
    .restart local v9    # "localMd5":Ljava/lang/String;
    .restart local v10    # "readSize":I
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v3

    .line 198
    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 204
    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v3

    .line 205
    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 197
    .end local v1    # "charData":[C
    .end local v5    # "ir":Ljava/io/InputStreamReader;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "jsonString":Ljava/lang/String;
    .end local v9    # "localMd5":Ljava/lang/String;
    .end local v10    # "readSize":I
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v3

    .line 198
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 204
    :catch_6
    move-exception v3

    .line 205
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 194
    .end local v3    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v12

    :goto_9
    if-eqz v4, :cond_5

    .line 196
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    .line 203
    :cond_5
    :goto_a
    :try_start_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8

    .line 206
    :goto_b
    throw v12

    .line 197
    :catch_7
    move-exception v3

    .line 198
    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 204
    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v3

    .line 205
    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 194
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_9

    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "ir":Ljava/io/InputStreamReader;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v12

    move-object v4, v5

    .end local v5    # "ir":Ljava/io/InputStreamReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_9

    .line 190
    :catch_9
    move-exception v3

    goto/16 :goto_2

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_a
    move-exception v3

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto/16 :goto_2
.end method


# virtual methods
.method public onSyncReceived(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "template"

    const-string/jumbo v2, "TplSyncReceivedCount"

    invoke-static {}, Lcom/alipay/android/app/cctemplate/utils/DateUtil;->format()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/cctemplate/api/TemplateSync$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/cctemplate/api/TemplateSync$2;-><init>(Lcom/alipay/android/app/cctemplate/api/TemplateSync;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 96
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 97
    return-void
.end method

.method public registSyncMessage(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 4
    .param p1, "provider"    # Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    invoke-interface {p1}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->initialize(Landroid/content/Context;)V

    .line 47
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    .line 49
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->registSyncMessageImpl()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "template"

    const-string/jumbo v3, "TplSyncRegisterEx"

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public saveTemplate(Ljava/lang/String;)Z
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 100
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "array":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->buildTpls(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v2

    .line 102
    .local v2, "tpls":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v4

    .line 106
    :cond_1
    new-instance v1, Lcom/alipay/android/app/cctemplate/api/TemplateService;

    iget-object v3, p0, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-direct {v1, v3}, Lcom/alipay/android/app/cctemplate/api/TemplateService;-><init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    .line 107
    .local v1, "service":Lcom/alipay/android/app/cctemplate/api/TemplateService;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->loadTemplates(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_0
.end method
