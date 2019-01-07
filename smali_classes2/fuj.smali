.class public final Lfuj;
.super Ljava/lang/Object;
.source "NameCardCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfuj$a;,
        Lfuj$b;
    }
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfuj$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field d:J

.field e:Z

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lfuj;->a:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lfuj;->b:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lfuj;->c:Ljava/util/List;

    .line 65
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    .line 1229
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    new-instance v3, Lfuj$3;

    invoke-direct {v3, p0}, Lfuj$3;-><init>(Lfuj;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfuj;->f:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfuj;->g:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 2
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 291
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfuj$4;

    invoke-direct {v1, p0, p1}, Lfuj$4;-><init>(Lfuj;Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 301
    return-void
.end method

.method static synthetic a(Lfuj;Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 4
    .param p0, "x0"    # Lfuj;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .prologue
    .line 40
    .line 5218
    iget-object v0, p0, Lfuj;->a:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;

    .line 5219
    if-nez v0, :cond_0

    .line 5220
    new-instance v0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;

    invoke-direct {v0, p1}, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .line 5221
    iget-object v1, p0, Lfuj;->a:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5225
    :goto_0
    invoke-direct {p0, p1}, Lfuj;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .line 40
    return-void

    .line 5223
    :cond_0
    iput-object p1, v0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->mCardUserObject:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    goto :goto_0
.end method

.method static a(Ljava/util/List;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "longs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 429
    const/4 v1, 0x0

    .line 436
    :cond_0
    return-object v1

    .line 431
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 432
    .local v2, "size":I
    new-array v1, v2, [J

    .line 433
    .local v1, "result":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 434
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 5044
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 434
    aput-wide v4, v1, v0

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Lfuj$a;)V
    .locals 1
    .param p1, "listener"    # Lfuj$a;

    .prologue
    .line 317
    iget-object v0, p0, Lfuj;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lfuj;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 348
    if-nez p2, :cond_0

    .line 375
    :goto_0
    return-void

    .line 351
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v0, p2, Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;->friendType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 353
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    :goto_1
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v0

    iget-wide v2, p0, Lfuj;->d:J

    const/16 v4, 0x64

    new-instance v5, Lfuj$6;

    invoke-direct {v5, p0, p1, p2}, Lfuj$6;-><init>(Lfuj;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;)V

    invoke-interface/range {v0 .. v5}, Lezv;->a(Ljava/util/List;JILcma;)V

    goto :goto_0

    .line 356
    :cond_1
    iget v0, p2, Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;->friendType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final a(Lfuj$a;)V
    .locals 1
    .param p1, "listener"    # Lfuj$a;

    .prologue
    .line 323
    iget-object v0, p0, Lfuj;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 324
    return-void
.end method

.method public final a(Z)V
    .locals 4
    .param p1, "withRPC"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 72
    iget-object v1, p0, Lfuj;->a:Ljava/util/Map;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;

    .line 73
    .local v0, "object":Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, v0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->mCardUserObject:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-direct {p0, v1}, Lfuj;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .line 81
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lfuj;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    goto :goto_0
.end method

.method public final a(ZLcom/alibaba/android/dingtalk/userbase/model/CardUserObject;Lfuj$a;)V
    .locals 5
    .param p1, "withRPC"    # Z
    .param p2, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
    .param p3, "listener"    # Lfuj$a;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 99
    invoke-direct {p0, p3}, Lfuj;->b(Lfuj$a;)V

    .line 100
    if-nez p1, :cond_1

    .line 101
    iget-object v1, p0, Lfuj;->a:Ljava/util/Map;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;

    .line 102
    .local v0, "cacheObject":Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;
    if-eqz v0, :cond_0

    .line 103
    iput-object p2, v0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->mCardUserObject:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 107
    :goto_0
    iget-object v1, v0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->mCardUserObject:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-direct {p0, v1}, Lfuj;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .line 4101
    .end local v0    # "cacheObject":Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;
    :goto_1
    return-void

    .line 105
    .restart local v0    # "cacheObject":Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;

    .end local v0    # "cacheObject":Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;
    invoke-direct {v0, p2}, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .restart local v0    # "cacheObject":Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;
    goto :goto_0

    .line 3191
    .end local v0    # "cacheObject":Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;
    :cond_1
    new-instance v1, Lfuj$2;

    invoke-direct {v1, p0, p2, p3}, Lfuj$2;-><init>(Lfuj;Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;Lfuj$a;)V

    .line 3214
    invoke-static {}, Lfug;->a()Lfug;

    move-result-object v2

    .line 4092
    new-instance v3, Lfug$7;

    invoke-direct {v3, v2, v1}, Lfug$7;-><init>(Lfug;Lcma;)V

    .line 4099
    if-nez p2, :cond_2

    .line 4100
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "cardObject is null"

    .line 5033
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 4103
    :cond_2
    iget-object v1, v2, Lfug;->a:Lcom/alibaba/android/user/namecard/service/CardIService;

    invoke-virtual {p2}, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->toIdl()Lche;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/user/namecard/service/CardIService;->editCard(Lche;Liyv;)V

    goto :goto_1
.end method

.method public final a(ZLfuj$a;)V
    .locals 3
    .param p1, "withRPC"    # Z
    .param p2, "listener"    # Lfuj$a;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 84
    invoke-direct {p0, p2}, Lfuj;->b(Lfuj$a;)V

    .line 2142
    new-instance v0, Lfuj$1;

    invoke-direct {v0, p0}, Lfuj$1;-><init>(Lfuj;)V

    .line 2163
    invoke-static {}, Lfug;->a()Lfug;

    move-result-object v1

    .line 3048
    new-instance v2, Lfug$1;

    invoke-direct {v2, v1, v0}, Lfug$1;-><init>(Lfug;Lcma;)V

    .line 3055
    iget-object v0, v1, Lfug;->a:Lcom/alibaba/android/user/namecard/service/CardIService;

    invoke-interface {v0, v2}, Lcom/alibaba/android/user/namecard/service/CardIService;->getMyselfCard(Liyv;)V

    .line 95
    return-void
.end method
