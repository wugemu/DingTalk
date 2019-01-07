.class public final Ldik;
.super Ljava/lang/Object;
.source "GroupTagFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldik$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ldij;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldik;->a:Ljava/util/HashMap;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ldik;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 45
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldik;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    .local p1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ldik;->b(Ljava/util/Map;)Ldij;

    move-result-object v0

    .line 57
    .local v0, "groupTag":Ldij;
    if-eqz v0, :cond_3

    .line 58
    invoke-static {}, Lcms;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, v0, Ldij;->a:Ljava/lang/String;

    .line 68
    :goto_0
    return-object v1

    .line 60
    :cond_0
    invoke-static {}, Lcms;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, v0, Ldij;->b:Ljava/lang/String;

    goto :goto_0

    .line 62
    :cond_1
    invoke-static {}, Lcms;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, v0, Ldij;->c:Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, v0, Ldij;->d:Ljava/lang/String;

    goto :goto_0

    .line 68
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/util/Map;)Ldij;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ldij;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 105
    if-nez p1, :cond_1

    move-object v1, v4

    .line 124
    :cond_0
    :goto_0
    return-object v1

    .line 106
    :cond_1
    const-string/jumbo v5, "groupTagConfig"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    .local v0, "configName":Ljava/lang/String;
    invoke-static {v0}, Lhda;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v1, v4

    goto :goto_0

    .line 109
    :cond_2
    iget-object v5, p0, Ldik;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldij;

    .line 110
    .local v1, "groupTag":Ldij;
    if-nez v1, :cond_0

    .line 114
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v5

    const-string/jumbo v6, "dt_function"

    const-string/jumbo v7, "im_group_tag_config"

    invoke-virtual {v5, v6, v7}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "settings":Ljava/lang/String;
    invoke-static {v3}, Lhda;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v1, v4

    goto :goto_0

    .line 116
    :cond_3
    invoke-static {v3}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 117
    .local v2, "json":Lcom/alibaba/fastjson/JSONObject;
    if-nez v2, :cond_4

    move-object v1, v4

    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 119
    if-nez v2, :cond_5

    move-object v1, v4

    goto :goto_0

    .line 120
    :cond_5
    invoke-static {v2}, Ldij;->a(Lcom/alibaba/fastjson/JSONObject;)Ldij;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_0

    .line 122
    iget-object v4, p0, Ldik;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
