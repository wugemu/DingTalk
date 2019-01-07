.class public Leeo;
.super Ljava/lang/Object;
.source "PermissionDatasourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leeo$a;,
        Leeo$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static c:Leeo;


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leeo$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Leeo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leeo;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Leeo;->c()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "data":Ljava/lang/String;
    invoke-direct {p0, v0}, Leeo;->b(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static a()Leeo;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Leeo;->c:Leeo;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Leeo;

    invoke-direct {v0}, Leeo;-><init>()V

    sput-object v0, Leeo;->c:Leeo;

    .line 50
    :cond_0
    sget-object v0, Leeo;->c:Leeo;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Leeo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v0, Leeo;

    invoke-direct {v0}, Leeo;-><init>()V

    sput-object v0, Leeo;->c:Leeo;

    .line 127
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    sput-object v0, Leeo;->c:Leeo;

    .line 102
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 11
    .param p1, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 62
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v10, "pdp_role"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 64
    .local v8, "roleJsonObject":Lorg/json/JSONObject;
    if-eqz v8, :cond_2

    .line 65
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Leeo;->b:Ljava/util/List;

    .line 66
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 67
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 69
    .local v3, "key":Ljava/lang/String;
    new-instance v9, Leeo$b;

    invoke-direct {v9}, Leeo$b;-><init>()V

    .line 70
    .local v9, "roleObject":Leeo$b;
    iput-object v3, v9, Leeo$b;->a:Ljava/lang/String;

    .line 71
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 72
    .local v7, "roleContentJson":Lorg/json/JSONObject;
    if-eqz v7, :cond_1

    .line 73
    const-string/jumbo v10, "cs_order"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Leeo$b;->b:I

    .line 74
    const-string/jumbo v10, "resource"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 75
    .local v4, "permissionArray":Lorg/json/JSONArray;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 76
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v9, Leeo$b;->c:Ljava/util/List;

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v0, v10, :cond_1

    .line 78
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 79
    .local v5, "permissionJsonObject":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 80
    new-instance v6, Leeo$a;

    invoke-direct {v6}, Leeo$a;-><init>()V

    .line 81
    .local v6, "permissionObject":Leeo$a;
    const-string/jumbo v10, "domain"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Leeo$a;->a:Ljava/lang/String;

    .line 82
    const-string/jumbo v10, "domainId"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Leeo$a;->b:Ljava/lang/String;

    .line 83
    const-string/jumbo v10, "rid"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Leeo$a;->c:Ljava/lang/String;

    .line 84
    const-string/jumbo v10, "type"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Leeo$a;->d:Ljava/lang/String;

    .line 85
    iget-object v10, v9, Leeo$b;->c:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v6    # "permissionObject":Leeo$a;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    .end local v0    # "i":I
    .end local v4    # "permissionArray":Lorg/json/JSONArray;
    .end local v5    # "permissionJsonObject":Lorg/json/JSONObject;
    :cond_1
    iget-object v10, p0, Leeo;->b:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v7    # "roleContentJson":Lorg/json/JSONObject;
    .end local v8    # "roleJsonObject":Lorg/json/JSONObject;
    .end local v9    # "roleObject":Leeo$b;
    :catch_0
    move-exception v10

    .line 98
    :cond_2
    return-void
.end method

.method private static c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 135
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_permission_key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
