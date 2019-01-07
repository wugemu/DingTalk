.class public final Ldwz;
.super Ljava/lang/Object;
.source "RecruitmentUserStatusObject.java"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Ldwz;
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v3, 0x0

    .line 75
    if-nez p0, :cond_1

    .line 76
    const/4 v1, 0x0

    .line 97
    :cond_0
    :goto_0
    return-object v1

    .line 78
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 80
    .local v0, "localExtraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 81
    new-instance v1, Ldwz;

    invoke-direct {v1}, Ldwz;-><init>()V

    .line 82
    .local v1, "object":Ldwz;
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v4

    iput-wide v4, v1, Ldwz;->a:J

    .line 83
    const-string/jumbo v2, "im_recru_act_level"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1150
    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v2

    .line 83
    iput v2, v1, Ldwz;->c:I

    .line 84
    const-string/jumbo v2, "im_recru_reply_rate"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2150
    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v2

    .line 84
    iput v2, v1, Ldwz;->d:I

    .line 85
    const-string/jumbo v2, "im_recru_summary_info"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Ldwz;->e:Ljava/lang/String;

    .line 86
    const-string/jumbo v2, "im_recru_info_ver"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Ldwz;->f:Ljava/lang/String;

    .line 3101
    iget-object v2, v1, Ldwz;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 87
    :goto_1
    if-nez v2, :cond_0

    .line 91
    .end local v1    # "object":Ldwz;
    :cond_2
    new-instance v1, Ldwz;

    invoke-direct {v1}, Ldwz;-><init>()V

    .line 92
    .restart local v1    # "object":Ldwz;
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v4

    iput-wide v4, v1, Ldwz;->a:J

    .line 93
    const-string/jumbo v2, "recruiment_active_level"

    invoke-interface {p0, v2}, Lcom/alibaba/wukong/im/Conversation;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3150
    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v2

    .line 93
    iput v2, v1, Ldwz;->c:I

    .line 94
    const-string/jumbo v2, "recruiment_reply_rate"

    invoke-interface {p0, v2}, Lcom/alibaba/wukong/im/Conversation;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4150
    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v2

    .line 94
    iput v2, v1, Ldwz;->d:I

    .line 95
    const-string/jumbo v2, "recruiment_summary_info"

    invoke-interface {p0, v2}, Lcom/alibaba/wukong/im/Conversation;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ldwz;->e:Ljava/lang/String;

    .line 96
    const-string/jumbo v2, "recruiment_version"

    invoke-interface {p0, v2}, Lcom/alibaba/wukong/im/Conversation;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ldwz;->f:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    move v2, v3

    .line 3101
    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Conversation;J)V
    .locals 4
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "requestTime"    # J

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "im_recru_act_level"

    iget v2, p0, Ldwz;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v1, "im_recru_reply_rate"

    iget v2, p0, Ldwz;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string/jumbo v1, "im_recru_summary_info"

    iget-object v2, p0, Ldwz;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v1, "im_recru_info_ver"

    iget-object v2, p0, Ldwz;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v1, "im_recru_lst_request_time"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtrasByKeys(Ljava/util/Map;)V

    goto :goto_0
.end method
