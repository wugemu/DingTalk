.class public final Ldwt;
.super Ljava/lang/Object;
.source "RecruitmentExtraInfoFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldwt$a;
    }
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ldwx;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ldwx;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ldwq;

.field public f:Z

.field private final g:Ljava/lang/String;

.field private h:I

.field private final i:J

.field private final j:J

.field private final k:J

.field private l:I

.field private m:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "role"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string/jumbo v0, "[RecruitmentExtraInfoFetcher]"

    iput-object v0, p0, Ldwt;->g:Ljava/lang/String;

    .line 45
    const/16 v0, 0x28

    iput v0, p0, Ldwt;->h:I

    .line 46
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Ldwt;->i:J

    .line 48
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Ldwt;->j:J

    .line 49
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Ldwt;->k:J

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldwt;->b:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldwt;->c:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldwt;->d:Ljava/util/Set;

    .line 217
    new-instance v0, Ldwt$1;

    invoke-direct {v0, p0}, Ldwt$1;-><init>(Ldwt;)V

    iput-object v0, p0, Ldwt;->m:Landroid/os/Handler$Callback;

    .line 63
    iput p1, p0, Ldwt;->l:I

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Ldwt;->m:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ldwt;->a:Landroid/os/Handler;

    .line 65
    return-void
.end method


# virtual methods
.method a()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 120
    iget-object v4, p0, Ldwt;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 121
    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v5, "handleRequestImpl but executingMap not null,logic error"

    aput-object v5, v4, v9

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1251
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1254
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v5, v6, :cond_0

    .line 1255
    new-instance v5, Ljava/lang/RuntimeException;

    new-array v6, v7, [Ljava/lang/String;

    const-string/jumbo v7, "[RecruitmentExtraInfoFetcher]"

    aput-object v7, v6, v9

    aput-object v4, v6, v10

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1257
    :cond_0
    const-string/jumbo v5, "im"

    const/4 v6, 0x0

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "[RecruitmentExtraInfoFetcher]"

    aput-object v8, v7, v9

    aput-object v4, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 125
    :cond_2
    iget-object v4, p0, Ldwt;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 127
    iget-object v4, p0, Ldwt;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    iget v5, p0, Ldwt;->h:I

    if-gt v4, v5, :cond_4

    .line 128
    iget-object v4, p0, Ldwt;->c:Ljava/util/Map;

    iget-object v5, p0, Ldwt;->b:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 129
    iget-object v4, p0, Ldwt;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 143
    :cond_3
    iget-object v4, p0, Ldwt;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 144
    iget-object v4, p0, Ldwt;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 145
    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ldwx;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 146
    new-instance v2, Ldwy;

    invoke-direct {v2}, Ldwy;-><init>()V

    .line 147
    .local v2, "objectList":Ldwy;
    iget v4, p0, Ldwt;->l:I

    iput v4, v2, Ldwy;->b:I

    .line 148
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v2, Ldwy;->a:Ljava/util/List;

    .line 149
    invoke-static {}, Ldws;->a()Ldwr;

    move-result-object v4

    new-instance v5, Ldwt$a;

    invoke-direct {v5, p0, v9}, Ldwt$a;-><init>(Ldwt;B)V

    invoke-interface {v4, v2, v5}, Ldwr;->a(Ldwy;Lcma;)V

    goto :goto_0

    .line 131
    .end local v2    # "objectList":Ldwy;
    .end local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Ldwx;>;"
    :cond_4
    iget-object v4, p0, Ldwt;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 132
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ldwx;>;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 133
    iget-object v4, p0, Ldwt;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    iget v5, p0, Ldwt;->h:I

    if-gt v4, v5, :cond_3

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 137
    .local v1, "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ldwx;>;"
    if-eqz v1, :cond_5

    .line 138
    iget-object v4, p0, Ldwt;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 13
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x1

    .line 72
    iget-boolean v5, p0, Ldwt;->f:Z

    if-eqz v5, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    if-eqz p1, :cond_0

    .line 78
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v6

    .line 80
    .local v6, "userId":J
    iget-object v5, p0, Ldwt;->b:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Ldwt;->c:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Ldwt;->d:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 83
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v2

    .line 84
    .local v2, "localMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    .line 85
    .local v0, "lastRequestTime":J
    const/4 v3, 0x0

    .line 86
    .local v3, "localVersion":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 87
    const-string/jumbo v5, "im_recru_lst_request_time"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1109
    const-wide/16 v8, 0x0

    invoke-static {v5, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 88
    const-string/jumbo v5, "im_recru_info_ver"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "localVersion":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 91
    .restart local v3    # "localVersion":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcms;->u()J

    move-result-wide v8

    sub-long/2addr v8, v0

    const-wide/32 v10, 0x36ee80

    cmp-long v5, v8, v10

    if-ltz v5, :cond_0

    .line 94
    new-instance v4, Ldwx;

    invoke-direct {v4}, Ldwx;-><init>()V

    .line 95
    .local v4, "object":Ldwx;
    iput-wide v6, v4, Ldwx;->b:J

    .line 96
    const-string/jumbo v5, "im_campus_resume_hr_corp_id"

    invoke-interface {p1, v5}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ldwx;->a:Ljava/lang/String;

    .line 97
    iput-object v3, v4, Ldwx;->c:Ljava/lang/String;

    .line 98
    iget-object v5, p0, Ldwt;->b:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v5, p0, Ldwt;->c:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    iget-object v5, p0, Ldwt;->b:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    iget v8, p0, Ldwt;->h:I

    if-lt v5, v8, :cond_3

    .line 1116
    iget-object v5, p0, Ldwt;->a:Landroid/os/Handler;

    invoke-virtual {v5, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    invoke-virtual {p0}, Ldwt;->a()V

    goto/16 :goto_0

    .line 106
    :cond_3
    iget-object v5, p0, Ldwt;->a:Landroid/os/Handler;

    invoke-virtual {v5, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 109
    iget-object v5, p0, Ldwt;->a:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v12, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
