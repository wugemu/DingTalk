.class public Lekd;
.super Ljava/lang/Object;
.source "CsConfigAPIImpl.java"

# interfaces
.implements Lekc;


# static fields
.field private static final a:Ljava/lang/Long;

.field private static final b:Ljava/lang/Long;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-wide v0, 0x22ecb25c00L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lekd;->a:Ljava/lang/Long;

    .line 45
    const-wide v0, 0x2540be4000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lekd;->b:Ljava/lang/Long;

    .line 46
    const-class v0, Lekd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lekd;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lekd;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lekd;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p1}, Lekd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 144
    .local v0, "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return-object p0

    .line 108
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "oa_org"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 110
    .local v6, "orgListObj":Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v1, "filterKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 113
    .local v2, "it":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "key":Ljava/lang/String;
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 117
    .local v5, "orgId":Ljava/lang/Long;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 122
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v7, Lekd;->a:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-ltz v7, :cond_2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v7, Lekd;->b:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gtz v7, :cond_2

    .line 123
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 140
    .end local v1    # "filterKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "orgId":Ljava/lang/Long;
    .end local v6    # "orgListObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 141
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 142
    sget-object v7, Lekd;->c:Ljava/lang/String;

    sget-object v8, Lekd;->c:Ljava/lang/String;

    const-string/jumbo v9, "filter ccp org exception"

    invoke-static {v7, v8, v9}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "filterKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "it":Ljava/util/Iterator;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "orgId":Ljava/lang/Long;
    .restart local v6    # "orgListObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 120
    sget-object v7, Lekd;->c:Ljava/lang/String;

    sget-object v8, Lekd;->c:Ljava/lang/String;

    const-string/jumbo v9, "Long parse orgId error"

    invoke-static {v7, v8, v9}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 127
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "orgId":Ljava/lang/Long;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 128
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 129
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_3

    .line 131
    .end local v4    # "key":Ljava/lang/String;
    :cond_4
    const-string/jumbo v7, "oa_org"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    const-string/jumbo v7, "oa_org"

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object p0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lejx;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/rimet/biz/object/CsConfigObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    .local p1, "topics":Ljava/util/List;, "Ljava/util/List<Lejx;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/rimet/biz/object/CsConfigObject;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    new-instance v1, Lekd$1;

    invoke-direct {v1, p0, p2}, Lekd$1;-><init>(Lekd;Lcma;)V

    .line 88
    .local v1, "handler":Lcmg;, "Lcmg<Ljava/util/List<Lejw;>;Ljava/util/List<Lcom/alibaba/android/rimet/biz/object/CsConfigObject;>;>;"
    const-class v2, Lcom/alibaba/android/rimet/biz/idl/service/CsConfigIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/idl/service/CsConfigIService;

    .line 89
    .local v0, "configIService":Lcom/alibaba/android/rimet/biz/idl/service/CsConfigIService;
    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/rimet/biz/idl/service/CsConfigIService;->getConf(Ljava/util/List;Liyv;)V

    goto :goto_0
.end method
