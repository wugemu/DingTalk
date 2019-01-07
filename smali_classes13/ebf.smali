.class public final Lebf;
.super Ljava/lang/Object;
.source "PublicConversationUtils.java"


# static fields
.field private static a:Ljava/util/List;
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
    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lebf;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    sget-object v7, Lebf;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 48
    sget-object v7, Lebf;->a:Ljava/util/List;

    .line 70
    .local v6, "value":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 50
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v7

    const-string/jumbo v8, "dt_user"

    const-string/jumbo v9, "dt_functional_conv_setting"

    invoke-virtual {v7, v8, v9}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 52
    .restart local v6    # "value":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 54
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .local v3, "object":Lorg/json/JSONObject;
    const-string/jumbo v7, "show_setting_blacklist"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 56
    .local v0, "array":Lorg/json/JSONArray;
    sget-object v7, Lebf;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 57
    if-eqz v0, :cond_2

    .line 58
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 59
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v4

    .line 60
    .local v4, "uid":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_1

    .line 61
    sget-object v7, Lebf;->a:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 65
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "uid":J
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v7, "im"

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "getFuncUidsSettingsBlacklist failed, error="

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 67
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 66
    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    sget-object v7, Lebf;->a:Ljava/util/List;

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v2, 0x0

    .line 40
    :goto_0
    return v2

    .line 39
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 40
    .local v0, "uid":J
    invoke-static {}, Lebf;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method
