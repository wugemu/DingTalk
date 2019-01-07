.class public final Ldec;
.super Ljava/lang/Object;
.source "DraftManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldec$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ldec;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Lded;
    .locals 7
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v5, 0x0

    .line 45
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->draftMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move-object v0, v5

    .line 73
    :goto_0
    return-object v0

    .line 49
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v2

    .line 50
    .local v2, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_2

    move-object v0, v5

    .line 51
    goto :goto_0

    .line 54
    :cond_2
    const-string/jumbo v6, "draft_type"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 55
    .local v3, "temp":Ljava/lang/String;
    const/4 v4, 0x0

    .line 57
    .local v4, "type":I
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    const/4 v4, 0x0

    .line 62
    :goto_1
    invoke-static {v4}, Ldeb;->a(I)Lded;

    move-result-object v0

    .line 63
    .local v0, "draftModel":Lded;
    if-nez v0, :cond_4

    move-object v0, v5

    .line 64
    goto :goto_0

    .line 57
    .end local v0    # "draftModel":Lded;
    :cond_3
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_1

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 66
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "draftModel":Lded;
    :cond_4
    iput v4, v0, Lded;->d:I

    .line 67
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->draftMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lded;->a:Ljava/lang/String;

    .line 69
    const-string/jumbo v5, "at_uids"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "temp":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 70
    .restart local v3    # "temp":Ljava/lang/String;
    invoke-static {v3}, Lcpt;->e(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, v0, Lded;->c:Ljava/util/HashMap;

    .line 72
    invoke-virtual {v0, v2}, Lded;->c(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 77
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 81
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "at_uids"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v1, "translate_text"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v1, "draft_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v1, "draft_msg_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-interface {p0, v0}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 86
    const-string/jumbo v1, ""

    invoke-interface {p0, v1}, Lcom/alibaba/wukong/im/Conversation;->updateDraftMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
