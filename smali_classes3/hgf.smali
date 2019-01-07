.class public final Lhgf;
.super Ljava/lang/Object;
.source "DeviceListUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhgf$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Long;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhiu;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lhgf$a;

.field public d:Z

.field public e:Lcom/alibaba/doraemon/lifecycle/APPStateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lhgf;->b:Ljava/util/List;

    .line 57
    new-instance v0, Lhgf$1;

    invoke-direct {v0, p0}, Lhgf$1;-><init>(Lhgf;)V

    iput-object v0, p0, Lhgf;->e:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    .line 55
    return-void
.end method

.method private static a(Ljava/lang/String;)Lhiu;
    .locals 8
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 160
    :try_start_0
    new-instance v2, Lhiu;

    invoke-direct {v2}, Lhiu;-><init>()V

    .line 161
    .local v2, "model":Lhiu;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "corpId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lhiu;->a:Ljava/lang/String;

    .line 163
    const-string/jumbo v3, "deviceUid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lhiu;->b:J

    .line 164
    const-string/jumbo v3, "devId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lhiu;->c:J

    .line 165
    const-string/jumbo v3, "devServiceId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v2, Lhiu;->d:J

    .line 166
    const-string/jumbo v3, "deviceName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lhiu;->e:Ljava/lang/String;

    .line 167
    const-string/jumbo v3, "isAtmAdmin"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lhiu;->f:Z

    .line 168
    const-string/jumbo v3, "distance"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lhiu;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "model":Lhiu;
    :goto_0
    return-object v2

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    const-string/jumbo v3, "Beacon"

    const-string/jumbo v4, "DeviceList"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "[Device Beacon] json2DingAtmInfoModel error,"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 173
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 172
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;[B)Ljava/lang/Object;
    .locals 9
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[B)TT;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "clzz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 299
    .local v3, "ret":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 301
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Liyo;

    new-instance v4, Lizk;

    array-length v5, p1

    invoke-direct {v4, v0, v5}, Lizk;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v4}, Liyo;-><init>(Lizj;)V

    .line 302
    .local v2, "reader":Liyo;
    invoke-virtual {v2}, Liyo;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v4}, Liym;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 308
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 311
    .end local v2    # "reader":Liyo;
    .end local v3    # "ret":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v3

    .line 303
    .restart local v3    # "ret":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    const-string/jumbo v4, "Beacon"

    const-string/jumbo v5, "DeviceList"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "[Device Beacon] convertBytes2Object error,"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 306
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 305
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v4
.end method

.method private static a(Lhiu;)Ljava/lang/String;
    .locals 7
    .param p0, "model"    # Lhiu;

    .prologue
    .line 140
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 142
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "corpId"

    iget-object v3, p0, Lhiu;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string/jumbo v2, "deviceUid"

    iget-wide v4, p0, Lhiu;->b:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 144
    const-string/jumbo v2, "devId"

    iget-wide v4, p0, Lhiu;->c:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 145
    const-string/jumbo v2, "devServiceId"

    iget-wide v4, p0, Lhiu;->d:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 146
    const-string/jumbo v2, "deviceName"

    iget-object v3, p0, Lhiu;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string/jumbo v2, "isAtmAdmin"

    iget-boolean v3, p0, Lhiu;->f:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 148
    const-string/jumbo v2, "distance"

    iget v3, p0, Lhiu;->g:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    const-string/jumbo v2, "Beacon"

    const-string/jumbo v3, "DeviceList"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[Device Beacon] dingAtmInfoModel2Json error,"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 152
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 151
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhiu;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lhiu;>;"
    if-nez p0, :cond_0

    .line 244
    const-string/jumbo v2, ""

    .line 253
    :goto_0
    return-object v2

    .line 246
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v1, "ids":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhiu;

    .line 248
    .local v0, "atmInfoModel":Lhiu;
    if-eqz v0, :cond_1

    .line 251
    iget-wide v4, v0, Lhiu;->c:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 253
    .end local v0    # "atmInfoModel":Lhiu;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public final a(JJ)Lhiu;
    .locals 5
    .param p1, "devServiceId"    # J
    .param p3, "devId"    # J

    .prologue
    .line 275
    iget-object v1, p0, Lhgf;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhiu;

    .line 276
    .local v0, "model":Lhiu;
    iget-wide v2, v0, Lhiu;->d:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    iget-wide v2, v0, Lhiu;->c:J

    cmp-long v2, v2, p3

    if-nez v2, :cond_0

    .line 280
    .end local v0    # "model":Lhiu;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 102
    iget-object v7, p0, Lhgf;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 103
    const-string/jumbo v7, "device_list_kaoqin"

    invoke-static {v7}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "json":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 106
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lhiu;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 109
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "item":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 113
    invoke-static {v3}, Lhgf;->a(Ljava/lang/String;)Lhiu;

    move-result-object v6

    .line 114
    .local v6, "model":Lhiu;
    if-eqz v6, :cond_0

    .line 115
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v6    # "model":Lhiu;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v3    # "item":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lhgf;->b:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lhiu;>;"
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lhgf;->d()V

    .line 125
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 129
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 130
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v3, p0, Lhgf;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhiu;

    .line 131
    .local v2, "model":Lhiu;
    invoke-static {v2}, Lhgf;->a(Lhiu;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 136
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "model":Lhiu;
    :cond_1
    const-string/jumbo v3, "device_list_kaoqin"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public c()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 180
    const-string/jumbo v4, "Beacon"

    const-string/jumbo v5, "DeviceList"

    const-string/jumbo v6, "[Device Beacon] start requestDeviceList"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v2

    .line 182
    .local v2, "uid":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 183
    const-string/jumbo v4, "Beacon"

    const-string/jumbo v5, "DeviceList"

    const-string/jumbo v6, "[Device Beacon] requestDeviceList ignore, not login"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v4, p0, Lhgf;->a:Ljava/lang/Long;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lhgf;->a:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    .line 187
    const-string/jumbo v4, "Beacon"

    const-string/jumbo v5, "DeviceList"

    const-string/jumbo v6, "[Device Beacon] requestDeviceList ignore, requesting"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lhgf;->a:Ljava/lang/Long;

    .line 192
    new-instance v1, Lhgf$2;

    invoke-direct {v1, p0}, Lhgf$2;-><init>(Lhgf;)V

    .line 231
    .local v1, "listener":Lcma;, "Lcma<Lhiv;>;"
    new-instance v0, Lhgf$3;

    invoke-direct {v0, p0, v1}, Lhgf$3;-><init>(Lhgf;Lcma;)V

    .line 239
    .local v0, "handler":Lcmg;, "Lcmg<Lhiv;Lhiv;>;"
    const-class v4, Lcom/alibaba/lightapp/runtime/idl/ATManageIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/lightapp/runtime/idl/ATManageIService;

    invoke-interface {v4, v0}, Lcom/alibaba/lightapp/runtime/idl/ATManageIService;->getDingAtmList(Liyv;)V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 319
    iget-object v0, p0, Lhgf;->c:Lhgf$a;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lhgf;->c:Lhgf$a;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lhgf;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lhgf$a;->a(Ljava/util/List;)V

    .line 322
    :cond_0
    return-void
.end method
