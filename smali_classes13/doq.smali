.class public final Ldoq;
.super Ljava/lang/Object;
.source "ChatMenusGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldoq$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static a(Lcom/alibaba/wukong/im/Message;)Lcng;
    .locals 5
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v3, 0x0

    .line 426
    if-nez p0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-object v3

    .line 430
    :cond_1
    invoke-static {p0}, Lddo;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 434
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 435
    .local v0, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 436
    const-string/jumbo v3, "translate_status"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 437
    .local v1, "status":Ljava/lang/String;
    const-string/jumbo v3, "translate"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 438
    .local v2, "translation":Ljava/lang/String;
    const-string/jumbo v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 440
    sget-object v3, Ldoq$a;->o:Lcng;

    goto :goto_0

    .line 445
    .end local v1    # "status":Ljava/lang/String;
    .end local v2    # "translation":Ljava/lang/String;
    :cond_2
    sget-object v3, Ldoq$a;->n:Lcng;

    goto :goto_0
.end method

.method static a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 449
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
