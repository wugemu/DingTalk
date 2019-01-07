.class public final Lfws;
.super Ljava/lang/Object;
.source "DeviceListObject.java"


# instance fields
.field public a:Z

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfwt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfws;->a:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Lfpw;)V
    .locals 4
    .param p1, "model"    # Lfpw;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v2, 0x1

    iput-boolean v2, p0, Lfws;->a:Z

    .line 27
    if-eqz p1, :cond_2

    .line 28
    iget-object v2, p1, Lfpw;->a:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 29
    iget-object v2, p1, Lfpw;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lfws;->a:Z

    .line 31
    :cond_0
    iget-object v2, p1, Lfpw;->b:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lfpw;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lfws;->b:Ljava/util/List;

    .line 33
    iget-object v2, p1, Lfpw;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfo;

    .line 34
    .local v0, "deviceModel":Lcfo;
    new-instance v1, Lfwt;

    invoke-direct {v1, v0}, Lfwt;-><init>(Lcfo;)V

    .line 35
    .local v1, "deviceObject":Lfwt;
    iget-object v3, v1, Lfwt;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 36
    iget-object v3, p0, Lfws;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    .end local v0    # "deviceModel":Lcfo;
    .end local v1    # "deviceObject":Lfwt;
    :cond_2
    return-void
.end method

.method public constructor <init>(ZLjava/util/List;)V
    .locals 1
    .param p1, "isOpen"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lfwt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "deviceList":Ljava/util/List;, "Ljava/util/List<Lfwt;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfws;->a:Z

    .line 44
    iput-boolean p1, p0, Lfws;->a:Z

    .line 45
    iput-object p2, p0, Lfws;->b:Ljava/util/List;

    .line 46
    return-void
.end method

.method public static a(Ljava/lang/String;)Lfws;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v1, Lfws;

    invoke-direct {v1}, Lfws;-><init>()V

    .line 54
    .local v1, "deviceListObject":Lfws;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 56
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "isOpen"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v1, Lfws;->a:Z

    .line 58
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lfws;->b:Ljava/util/List;

    .line 59
    const-string/jumbo v7, "deviceList"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 60
    .local v5, "jsonArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 61
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 62
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "deviceJson":Ljava/lang/String;
    invoke-static {v0}, Lfwt;->a(Ljava/lang/String;)Lfwt;

    move-result-object v2

    .line 64
    .local v2, "deviceObject":Lfwt;
    if-eqz v2, :cond_0

    .line 65
    iget-object v7, v1, Lfws;->b:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "deviceJson":Ljava/lang/String;
    .end local v2    # "deviceObject":Lfwt;
    .end local v4    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 70
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 73
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 77
    const/4 v6, 0x0

    .line 78
    .local v6, "ret":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 80
    .local v5, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v7, "isOpen"

    iget-boolean v8, p0, Lfws;->a:Z

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 81
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 82
    .local v4, "jsonArray":Lorg/json/JSONArray;
    iget-object v7, p0, Lfws;->b:Ljava/util/List;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lfws;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 83
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lfws;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 84
    iget-object v7, p0, Lfws;->b:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfwt;

    .line 85
    .local v1, "deviceObject":Lfwt;
    invoke-virtual {v1}, Lfwt;->b()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "deviceJson":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 87
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 83
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "deviceJson":Ljava/lang/String;
    .end local v1    # "deviceObject":Lfwt;
    :cond_1
    const-string/jumbo v7, "deviceList"

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 96
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :goto_1
    return-object v6

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
