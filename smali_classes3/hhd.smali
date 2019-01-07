.class public final Lhhd;
.super Lhhc;
.source "FCPlanExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhhd$c;,
        Lhhd$b;,
        Lhhd$d;,
        Lhhd$a;
    }
.end annotation


# static fields
.field private static final i:[Ljava/lang/String;


# instance fields
.field public f:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;

.field g:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;

.field public volatile h:Z

.field private j:Lhhd$b;

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lhhe;

.field private m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private n:Lcom/amap/api/location/AMapLocationClient;

.field private o:Lhhd$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Lhhd;->i:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lhhe;Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;)V
    .locals 18
    .param p1, "module"    # Lhhe;
    .param p2, "planObject"    # Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;

    .prologue
    .line 137
    invoke-direct/range {p0 .. p0}, Lhhc;-><init>()V

    .line 68
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lhhd;->h:Z

    .line 74
    new-instance v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lhhd;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v12, Lhhd$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lhhd$1;-><init>(Lhhd;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lhhd;->o:Lhhd$c;

    .line 138
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lhhd;->l:Lhhe;

    .line 140
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lhhd;->g:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;

    .line 141
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mCheckinPushObject:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-object/from16 v0, p0

    iput-object v12, v0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    .line 142
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mTopNotifyPushObject:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;

    move-object/from16 v0, p0

    iput-object v12, v0, Lhhd;->f:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;

    .line 144
    move-object/from16 v0, p0

    iget-object v12, v0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v12, v12, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPositionList:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 146
    :try_start_0
    new-instance v7, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v12, v0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v12, v12, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPositionList:Ljava/lang/String;

    invoke-direct {v7, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 147
    .local v7, "positionArray":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 148
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v5, v12, :cond_1

    .line 149
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 150
    .local v8, "positionJSONObject":Lorg/json/JSONObject;
    if-eqz v8, :cond_0

    .line 151
    new-instance v9, Lhhc$a;

    invoke-direct {v9}, Lhhc$a;-><init>()V

    .line 152
    .local v9, "positionModel":Lhhc$a;
    const-string/jumbo v12, "latitude"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    iput-wide v12, v9, Lhhc$a;->b:D

    .line 153
    const-string/jumbo v12, "longitude"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    iput-wide v12, v9, Lhhc$a;->c:D

    .line 154
    const-string/jumbo v12, "offset"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lhhc$a;->a:I

    .line 155
    move-object/from16 v0, p0

    iget-object v12, v0, Lhhd;->c:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v9    # "positionModel":Lhhc$a;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 159
    .end local v5    # "i":I
    .end local v7    # "positionArray":Lorg/json/JSONArray;
    .end local v8    # "positionJSONObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v12, "FCPlanExecutor"

    const-string/jumbo v13, "init position err"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "planId"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "msg"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v12, v12, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mAccuracyMap:Ljava/util/Map;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v12, v12, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mAccuracyMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v12, v12, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mAccuracyMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 166
    .local v3, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 167
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    if-eqz v4, :cond_2

    .line 168
    move-object/from16 v0, p0

    iget-object v14, v0, Lhhd;->d:Landroid/util/SparseArray;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 172
    .end local v3    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget v12, v12, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mMaxOffset:I

    move-object/from16 v0, p0

    iput v12, v0, Lhhd;->e:I

    .line 174
    move-object/from16 v0, p0

    iget-object v12, v0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v12, v12, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mWifiList:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 176
    :try_start_1
    new-instance v11, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v12, v0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v12, v12, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mWifiList:Ljava/lang/String;

    invoke-direct {v11, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 177
    .local v11, "wifiArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 178
    .local v6, "len":I
    if-lez v6, :cond_5

    .line 179
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v6, :cond_5

    .line 180
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 181
    .local v10, "wifi":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 183
    move-object/from16 v0, p0

    iget-object v12, v0, Lhhd;->b:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 187
    .end local v5    # "i":I
    .end local v6    # "len":I
    .end local v10    # "wifi":Ljava/lang/String;
    .end local v11    # "wifiArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v2

    .line 188
    .restart local v2    # "e":Lorg/json/JSONException;
    const-string/jumbo v12, "FCPlanExecutor"

    const-string/jumbo v13, "init wifi err"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "planId"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "msg"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_5
    return-void
.end method

.method static synthetic a(Lhhd;)Lhhd$b;
    .locals 1
    .param p0, "x0"    # Lhhd;

    .prologue
    .line 56
    iget-object v0, p0, Lhhd;->j:Lhhd$b;

    return-object v0
.end method

.method public static a(Lhhe;Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;)Lhhd;
    .locals 1
    .param p0, "module"    # Lhhe;
    .param p1, "planObject"    # Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;

    .prologue
    .line 194
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mCheckinPushObject:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mTopNotifyPushObject:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;

    if-nez v0, :cond_1

    .line 196
    :cond_0
    const/4 v0, 0x0

    .line 198
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lhhd;

    invoke-direct {v0, p0, p1}, Lhhd;-><init>(Lhhe;Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;)V

    goto :goto_0
.end method

.method private a(J)V
    .locals 9
    .param p1, "startTime"    # J

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 292
    iget-object v1, p0, Lhhd;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    const-string/jumbo v1, "FCPlanExecutor"

    const-string/jumbo v2, "checkinByLocation no position rule:"

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "planId"

    aput-object v4, v3, v7

    iget-object v4, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    iget-object v1, p0, Lhhd;->j:Lhhd$b;

    invoke-direct {p0, v1}, Lhhd;->a(Lhhd$b;)V

    .line 341
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v1, p0, Lhhd;->k:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 298
    .local v0, "activity":Landroid/app/Activity;
    :goto_1
    if-eqz v0, :cond_3

    .line 299
    const-string/jumbo v1, "FCPlanExecutor"

    const-string/jumbo v2, "checkinByLocation start"

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "planId"

    aput-object v4, v3, v7

    iget-object v4, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    sget-object v1, Lhhd;->i:[Ljava/lang/String;

    invoke-static {v0, v1}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lhhd;->j:Lhhd$b;

    if-eqz v1, :cond_1

    .line 303
    const-string/jumbo v1, "FCPlanExecutor"

    const-string/jumbo v2, "checkinByLocation no permissions"

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "planId"

    aput-object v4, v3, v7

    iget-object v4, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    iget-object v1, p0, Lhhd;->j:Lhhd$b;

    invoke-virtual {v1}, Lhhd$b;->e()V

    .line 306
    :cond_1
    sget-object v1, Lhhd;->i:[Ljava/lang/String;

    new-instance v2, Lhhd$4;

    invoke-direct {v2, p0, p1, p2}, Lhhd$4;-><init>(Lhhd;J)V

    invoke-static {v0, v6, v1, v2}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    goto :goto_0

    .line 297
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    iget-object v1, p0, Lhhd;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    move-object v0, v1

    goto :goto_1

    .line 336
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_3
    const-string/jumbo v1, "FCPlanExecutor"

    const-string/jumbo v2, "checkinByLocation error for activity = null!"

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "planId"

    aput-object v4, v3, v7

    iget-object v4, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    iget-object v1, p0, Lhhd;->j:Lhhd$b;

    invoke-direct {p0, v1}, Lhhd;->b(Lhhd$b;)V

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    iget-object v1, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lhhd;->b(JJ)V

    goto/16 :goto_0
.end method

.method private a(Lhhd$b;)V
    .locals 0
    .param p1, "callbackWatcher"    # Lhhd$b;

    .prologue
    .line 509
    invoke-virtual {p0}, Lhhd;->b()V

    .line 510
    if-eqz p1, :cond_0

    .line 511
    invoke-virtual {p1}, Lhhd$b;->b()V

    .line 513
    :cond_0
    return-void
.end method

.method static synthetic a(Lhhd;J)V
    .locals 1
    .param p0, "x0"    # Lhhd;
    .param p1, "x1"    # J

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lhhd;->a(J)V

    return-void
.end method

.method static synthetic a(Lhhd;Lhhd$b;)V
    .locals 0
    .param p0, "x0"    # Lhhd;
    .param p1, "x1"    # Lhhd$b;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lhhd;->a(Lhhd$b;)V

    return-void
.end method

.method static synthetic a(Lhhd;Lhjq;JILhhd$b;)V
    .locals 0
    .param p0, "x0"    # Lhhd;
    .param p1, "x1"    # Lhjq;
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # Lhhd$b;

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Lhhd;->a(Lhjq;JILhhd$b;)V

    return-void
.end method

.method private a(Lhjq;JILhhd$b;)V
    .locals 8
    .param p1, "model"    # Lhjq;
    .param p2, "startTime"    # J
    .param p4, "locationType"    # I
    .param p5, "callback"    # Lhhd$b;

    .prologue
    .line 364
    const-string/jumbo v0, "FCPlanExecutor"

    const-string/jumbo v1, "checkIn start"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "planId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lhjq;->e:Ljava/lang/Long;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "locationType"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2128
    const-string/jumbo v0, "FC-Executor"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v7

    .line 366
    new-instance v0, Lhhd$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lhhd$5;-><init>(Lhhd;Lhjq;Lhhd$b;JI)V

    invoke-interface {v7, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 406
    return-void
.end method

.method static synthetic a(Lhhd;Ljava/util/List;J)Z
    .locals 2
    .param p0, "x0"    # Lhhd;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # J

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lhhd;->a(Ljava/util/List;J)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/List;J)Z
    .locals 10
    .param p2, "startTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhkj;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .local p1, "wifiInfoModelList":Ljava/util/List;, "Ljava/util/List<Lhkj;>;"
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 344
    invoke-virtual {p0, p1}, Lhhd;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    new-instance v1, Lhjq;

    invoke-direct {v1}, Lhjq;-><init>()V

    .line 346
    .local v1, "model":Lhjq;
    iget-object v2, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v2, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lhjq;->e:Ljava/lang/Long;

    .line 347
    iget-object v2, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    iput-object v2, v1, Lhjq;->f:Ljava/lang/String;

    .line 349
    iput-object p1, v1, Lhjq;->d:Ljava/util/List;

    .line 350
    invoke-static {}, Lhha;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhjq;->g:Ljava/lang/String;

    .line 351
    const-string/jumbo v2, "FCPlanExecutor"

    const-string/jumbo v3, "doWifiCheckin"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "planId"

    aput-object v5, v4, v0

    iget-object v0, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v8, v0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    const/4 v4, -0x1

    iget-object v5, p0, Lhhd;->j:Lhhd$b;

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lhhd;->a(Lhjq;JILhhd$b;)V

    move v0, v6

    .line 356
    .end local v1    # "model":Lhjq;
    :cond_0
    return v0
.end method

.method private b(Lhhd$b;)V
    .locals 0
    .param p1, "callbackWatcher"    # Lhhd$b;

    .prologue
    .line 516
    invoke-virtual {p0}, Lhhd;->b()V

    .line 517
    if-eqz p1, :cond_0

    .line 518
    invoke-virtual {p1}, Lhhd$b;->c()V

    .line 520
    :cond_0
    return-void
.end method

.method static synthetic b(Lhhd;J)V
    .locals 9
    .param p0, "x0"    # Lhhd;
    .param p1, "x1"    # J

    .prologue
    const/4 v2, 0x4

    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    .line 3428
    iget-boolean v0, p0, Lhhd;->h:Z

    if-eqz v0, :cond_0

    .line 3429
    const-string/jumbo v0, "FCPlanExecutor"

    const-string/jumbo v1, "startLocation start"

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "corpId"

    aput-object v3, v2, v6

    iget-object v3, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    aput-object v3, v2, v7

    const-string/jumbo v3, "planId"

    aput-object v3, v2, v4

    iget-object v3, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v3, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3432
    iget-object v0, p0, Lhhd;->o:Lhhd$c;

    iput-wide p1, v0, Lhhd$c;->b:J

    .line 3434
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    iget-object v1, p0, Lhhd;->o:Lhhd$c;

    invoke-virtual {v0, v1, v6, v7}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lcir;ZZ)Lcom/amap/api/location/AMapLocationClient;

    move-result-object v0

    iput-object v0, p0, Lhhd;->n:Lcom/amap/api/location/AMapLocationClient;

    :goto_0
    return-void

    .line 3436
    :cond_0
    const-string/jumbo v0, "FCPlanExecutor"

    const-string/jumbo v1, "startLocation failure for not running"

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "corpId"

    aput-object v3, v2, v6

    iget-object v3, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    aput-object v3, v2, v7

    const-string/jumbo v3, "planId"

    aput-object v3, v2, v4

    iget-object v3, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v3, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lhhd;Lhhd$b;)V
    .locals 0
    .param p0, "x0"    # Lhhd;
    .param p1, "x1"    # Lhhd$b;

    .prologue
    .line 56
    .line 3502
    invoke-virtual {p0}, Lhhd;->b()V

    .line 3503
    if-eqz p1, :cond_0

    .line 3504
    invoke-virtual {p1}, Lhhd$b;->a()V

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic b(Lhhd;)Z
    .locals 1
    .param p0, "x0"    # Lhhd;

    .prologue
    .line 56
    invoke-direct {p0}, Lhhd;->f()Z

    move-result v0

    return v0
.end method

.method private f()Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/32 v10, 0x1d4c0

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 249
    .local v2, "startTime":J
    iget-object v6, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget v6, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckTimes:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 250
    iget-object v6, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iput v4, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckTimes:I

    .line 256
    :goto_0
    iget-object v6, p0, Lhhd;->b:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 2095
    invoke-static {}, Lhkv;->a()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2096
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v1, "wifiInfoModelList":Ljava/util/List;, "Ljava/util/List<Lhkj;>;"
    :goto_1
    iget-object v6, p0, Lhhd;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 261
    invoke-static {}, Lhha;->c()Lhkj;

    move-result-object v0

    .line 262
    .local v0, "connectWifi":Lhkj;
    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_0
    invoke-direct {p0, v1, v2, v3}, Lhhd;->a(Ljava/util/List;J)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 288
    .end local v0    # "connectWifi":Lhkj;
    .end local v1    # "wifiInfoModelList":Ljava/util/List;, "Ljava/util/List<Lhkj;>;"
    :goto_2
    return v4

    .line 252
    :cond_1
    iget-object v6, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget v7, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckTimes:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckTimes:I

    goto :goto_0

    .line 2098
    :cond_2
    invoke-static {}, Lcit;->a()Lcit;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Lcit;->a(J)Ljava/util/List;

    move-result-object v6

    .line 2099
    invoke-static {v6}, Lhha;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 268
    .restart local v0    # "connectWifi":Lhkj;
    .restart local v1    # "wifiInfoModelList":Ljava/util/List;, "Ljava/util/List<Lhkj;>;"
    :cond_3
    iget-object v6, p0, Lhhd;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2120
    invoke-static {}, Lhkv;->a()Z

    move-result v6

    .line 268
    if-eqz v6, :cond_4

    .line 269
    invoke-static {}, Lcit;->a()Lcit;

    move-result-object v5

    new-instance v6, Lhhd$3;

    invoke-direct {v6, p0, v2, v3}, Lhhd$3;-><init>(Lhhd;J)V

    invoke-virtual {v5, v6, v10, v11}, Lcit;->a(Lcit$a;J)V

    goto :goto_2

    .line 283
    :cond_4
    const-string/jumbo v6, "FCPlanExecutor"

    const-string/jumbo v7, "tryCheckin wifi not match"

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "planId"

    aput-object v9, v8, v5

    iget-object v9, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v10, v9, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v6, v7, v8}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    .end local v0    # "connectWifi":Lhkj;
    .end local v1    # "wifiInfoModelList":Ljava/util/List;, "Ljava/util/List<Lhkj;>;"
    :goto_3
    invoke-direct {p0, v2, v3}, Lhhd;->a(J)V

    move v4, v5

    .line 288
    goto :goto_2

    .line 285
    :cond_5
    const-string/jumbo v6, "FCPlanExecutor"

    const-string/jumbo v7, "tryCheckin wifi rule empty"

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "planId"

    aput-object v9, v8, v5

    iget-object v9, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v10, v9, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v6, v7, v8}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method


# virtual methods
.method public final a()Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lhhd$a;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lhhd$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 202
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lhhd;->k:Ljava/lang/ref/WeakReference;

    .line 203
    new-instance v0, Lhhd$b;

    invoke-direct {v0, p2, p0}, Lhhd$b;-><init>(Lhhd$a;Lhhd;)V

    iput-object v0, p0, Lhhd;->j:Lhhd$b;

    .line 204
    iget-object v0, p0, Lhhd;->j:Lhhd$b;

    invoke-virtual {v0}, Lhhd$b;->d()V

    .line 206
    const-string/jumbo v0, "FCPlanExecutor"

    const-string/jumbo v1, "start"

    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "planId"

    aput-object v3, v2, v7

    iget-object v3, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v3, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    invoke-virtual {p0}, Lhhd;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lhhd;->j:Lhhd$b;

    invoke-direct {p0, v0}, Lhhd;->b(Lhhd$b;)V

    .line 225
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-boolean v0, p0, Lhhd;->h:Z

    if-eqz v0, :cond_1

    .line 212
    const-string/jumbo v0, "FCPlanExecutor"

    const-string/jumbo v1, "start is running"

    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "planId"

    aput-object v3, v2, v7

    iget-object v3, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v3, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lhhd;->j:Lhhd$b;

    invoke-direct {p0, v0}, Lhhd;->b(Lhhd$b;)V

    goto :goto_0

    .line 216
    :cond_1
    iput-boolean v6, p0, Lhhd;->h:Z

    .line 1128
    const-string/jumbo v0, "FC-Executor"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 218
    new-instance v1, Lhhd$2;

    invoke-direct {v1, p0}, Lhhd$2;-><init>(Lhhd;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 413
    const-string/jumbo v0, "FCPlanExecutor"

    const-string/jumbo v1, "stop"

    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "planId"

    aput-object v3, v2, v6

    iget-object v3, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v3, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    iget-boolean v0, p0, Lhhd;->h:Z

    if-eqz v0, :cond_2

    .line 2441
    const-string/jumbo v0, "FCPlanExecutor"

    const-string/jumbo v1, "stopLocation"

    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "planId"

    aput-object v3, v2, v6

    iget-object v3, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v3, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2443
    :try_start_0
    iget-object v0, p0, Lhhd;->n:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    .line 2444
    iget-object v0, p0, Lhhd;->n:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 2445
    iget-object v0, p0, Lhhd;->n:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    .line 2446
    const/4 v0, 0x0

    iput-object v0, p0, Lhhd;->n:Lcom/amap/api/location/AMapLocationClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :cond_0
    :goto_0
    iget-object v0, p0, Lhhd;->j:Lhhd$b;

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lhhd;->j:Lhhd$b;

    invoke-virtual {v0}, Lhhd$b;->e()V

    .line 422
    iput-object v9, p0, Lhhd;->j:Lhhd$b;

    .line 424
    :cond_1
    iput-boolean v6, p0, Lhhd;->h:Z

    .line 425
    return-void

    .line 2448
    :catch_0
    move-exception v0

    .line 2449
    const-string/jumbo v1, "FCPlanExecutor"

    const-string/jumbo v2, "stopLocation"

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "msg"

    aput-object v4, v3, v6

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 417
    :cond_2
    const-string/jumbo v0, "FCPlanExecutor"

    const-string/jumbo v1, "stop invalid"

    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "planId"

    aput-object v3, v2, v6

    iget-object v3, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v3, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b(Landroid/app/Activity;Lhhd$a;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lhhd$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 240
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lhhd;->k:Ljava/lang/ref/WeakReference;

    .line 241
    new-instance v0, Lhhd$b;

    invoke-direct {v0, p2, p0}, Lhhd$b;-><init>(Lhhd$a;Lhhd;)V

    iput-object v0, p0, Lhhd;->j:Lhhd$b;

    .line 242
    iget-object v0, p0, Lhhd;->j:Lhhd$b;

    invoke-virtual {v0}, Lhhd$b;->d()V

    .line 244
    invoke-direct {p0}, Lhhd;->f()Z

    .line 245
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lhhd;->g:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    .line 456
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 460
    iget-object v6, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    if-nez v6, :cond_0

    .line 461
    const-string/jumbo v6, "FCPlanExecutor"

    const-string/jumbo v7, "isInCheckInTime"

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v8, "mCheckinPushObject is null"

    aput-object v8, v5, v4

    invoke-static {v6, v7, v5}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    :goto_0
    return v4

    .line 464
    :cond_0
    iget-object v6, p0, Lhhd;->f:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;

    if-nez v6, :cond_1

    .line 465
    const-string/jumbo v6, "FCPlanExecutor"

    const-string/jumbo v7, "isInCheckInTime"

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v8, "mTopNotifyPushObject is null"

    aput-object v8, v5, v4

    invoke-static {v6, v7, v5}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 468
    :cond_1
    const-string/jumbo v6, "FCPlanExecutor"

    const-string/jumbo v7, "isInCheckInTime"

    const/16 v8, 0xc

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "isRemindPlan"

    aput-object v9, v8, v4

    invoke-virtual {p0}, Lhhd;->e()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v5

    const-string/jumbo v9, "corpId"

    aput-object v9, v8, v12

    iget-object v9, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v9, v9, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    aput-object v9, v8, v13

    const-string/jumbo v9, "planId"

    aput-object v9, v8, v14

    const/4 v9, 0x5

    iget-object v10, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v10, v10, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v10, "startDate"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    iget-object v10, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v10, v10, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mStartDate:J

    .line 469
    invoke-static {v10, v11}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string/jumbo v10, "checkDate"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    iget-object v10, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v10, v10, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckDate:J

    .line 470
    invoke-static {v10, v11}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string/jumbo v10, "endDate"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    iget-object v10, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v10, v10, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mEndDate:J

    .line 471
    invoke-static {v10, v11}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 468
    invoke-static {v6, v7, v8}, Lhgz;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 474
    .local v2, "startTime":J
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    .line 475
    .local v0, "currentTime":J
    iget-object v6, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mEndDate:J

    cmp-long v6, v6, v0

    if-gez v6, :cond_2

    .line 476
    const-string/jumbo v6, "FCPlanExecutor"

    const-string/jumbo v7, "isInCheckInTime expired"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "corpId"

    aput-object v9, v8, v4

    iget-object v9, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v9, v9, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    aput-object v9, v8, v5

    const-string/jumbo v5, "planId"

    aput-object v5, v8, v12

    iget-object v5, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v10, v5, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v8, v13

    const-string/jumbo v5, "endDate"

    aput-object v5, v8, v14

    const/4 v5, 0x5

    iget-object v9, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v10, v9, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mEndDate:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v6, v7, v8}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    sget-object v5, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    iget-object v6, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    iget-object v7, p0, Lhhd;->g:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mWorkDate:Ljava/lang/String;

    iget-object v8, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v8, v8, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->remove(Ljava/lang/String;Ljava/lang/String;J)V

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    iget-object v5, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v8, v5, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-virtual {p0, v6, v7, v8, v9}, Lhhd;->c(JJ)V

    goto/16 :goto_0

    .line 483
    :cond_2
    iget-object v6, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mStartDate:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mStartDate:J

    cmp-long v6, v6, v0

    if-lez v6, :cond_3

    .line 484
    const-string/jumbo v6, "FCPlanExecutor"

    const-string/jumbo v7, "isInCheckInTime not in time"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "corpId"

    aput-object v9, v8, v4

    iget-object v9, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v9, v9, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    aput-object v9, v8, v5

    const-string/jumbo v5, "planId"

    aput-object v5, v8, v12

    iget-object v5, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v10, v5, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v8, v13

    const-string/jumbo v5, "startDate"

    aput-object v5, v8, v14

    const/4 v5, 0x5

    iget-object v9, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v10, v9, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mStartDate:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v6, v7, v8}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 489
    :cond_3
    iget-object v6, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mDelayTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mDelayTime:J

    cmp-long v6, v6, v0

    if-lez v6, :cond_4

    .line 490
    const-string/jumbo v6, "FCPlanExecutor"

    const-string/jumbo v7, "isInCheckInTime not in delay time"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "corpId"

    aput-object v9, v8, v4

    iget-object v9, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v9, v9, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    aput-object v9, v8, v5

    const-string/jumbo v5, "planId"

    aput-object v5, v8, v12

    iget-object v5, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v10, v5, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v8, v13

    const-string/jumbo v5, "delayTime"

    aput-object v5, v8, v14

    const/4 v5, 0x5

    iget-object v9, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v10, v9, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mDelayTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v6, v7, v8}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 494
    :cond_4
    iget-object v6, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    invoke-virtual {v6}, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 495
    const-string/jumbo v6, "FCPlanExecutor"

    const-string/jumbo v7, "isInCheckInTime is finished"

    new-array v8, v14, [Ljava/lang/Object;

    const-string/jumbo v9, "corpId"

    aput-object v9, v8, v4

    iget-object v9, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v9, v9, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    aput-object v9, v8, v5

    const-string/jumbo v5, "planId"

    aput-object v5, v8, v12

    iget-object v5, p0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v10, v5, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v8, v13

    invoke-static {v6, v7, v8}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    move v4, v5

    .line 498
    goto/16 :goto_0
.end method

.method public final e()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 523
    iget-object v1, p0, Lhhd;->g:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mPlanType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
