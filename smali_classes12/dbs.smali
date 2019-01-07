.class public final Ldbs;
.super Ljava/lang/Object;
.source "AtMeListPresenter.java"

# interfaces
.implements Ldbr$a;


# instance fields
.field a:Ldbr$b;

.field b:Ldbp;

.field c:J

.field d:J

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field private h:J

.field private i:Z

.field private j:Lcom/alibaba/wukong/im/MessageListener;

.field private k:Lcom/alibaba/wukong/im/MessageChangeListener;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ldbr$b;)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Ldbr$b;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ldbp;

    invoke-direct {v0}, Ldbp;-><init>()V

    iput-object v0, p0, Ldbs;->b:Ldbp;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldbs;->i:Z

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldbs;->e:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldbs;->f:Ljava/util/Map;

    .line 49
    iput-object p1, p0, Ldbs;->g:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 50
    iput-object p2, p0, Ldbs;->a:Ldbr$b;

    .line 51
    iget-object v0, p0, Ldbs;->a:Ldbr$b;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "AtMeListContract.View is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-object v0, p0, Ldbs;->a:Ldbr$b;

    invoke-interface {v0, p0}, Ldbr$b;->setPresenter(Lcjd;)V

    .line 56
    invoke-static {}, Ldbu;->a()Ldbu;

    invoke-static {}, Ldbu;->b()J

    move-result-wide v0

    iput-wide v0, p0, Ldbs;->h:J

    .line 1062
    iget-object v0, p0, Ldbs;->j:Lcom/alibaba/wukong/im/MessageListener;

    if-nez v0, :cond_1

    .line 1063
    new-instance v0, Ldbs$1;

    invoke-direct {v0, p0}, Ldbs$1;-><init>(Ldbs;)V

    iput-object v0, p0, Ldbs;->j:Lcom/alibaba/wukong/im/MessageListener;

    .line 1125
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v1, p0, Ldbs;->j:Lcom/alibaba/wukong/im/MessageListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageService;->addMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V

    .line 1128
    :cond_1
    iget-object v0, p0, Ldbs;->k:Lcom/alibaba/wukong/im/MessageChangeListener;

    if-nez v0, :cond_2

    .line 1129
    new-instance v0, Ldbs$2;

    invoke-direct {v0, p0}, Ldbs$2;-><init>(Ldbs;)V

    iput-object v0, p0, Ldbs;->k:Lcom/alibaba/wukong/im/MessageChangeListener;

    .line 1147
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v1, p0, Ldbs;->k:Lcom/alibaba/wukong/im/MessageChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageService;->addMessageChangeListener(Lcom/alibaba/wukong/im/MessageChangeListener;)V

    .line 59
    :cond_2
    return-void
.end method

.method static synthetic a(Ldbs;Lcom/alibaba/wukong/im/Message;)V
    .locals 6
    .param p0, "x0"    # Ldbs;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 26
    .line 2152
    if-eqz p1, :cond_0

    iget-object v0, p0, Ldbs;->e:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2161
    :cond_0
    :goto_0
    return-void

    .line 2155
    :cond_1
    iget-object v0, p0, Ldbs;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 2156
    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2157
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 2158
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 2159
    iget-object v0, p0, Ldbs;->f:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2160
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0
.end method

.method static synthetic a(Ldbs;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Ldbs;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 26
    .line 3234
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3235
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 3236
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3237
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 3238
    if-eqz v0, :cond_0

    .line 3239
    iget-object v2, p0, Ldbs;->f:Ljava/util/Map;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3240
    iget-object v2, p0, Ldbs;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3241
    iget-object v2, p0, Ldbs;->f:Ljava/util/Map;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3243
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 26
    :cond_2
    return-void
.end method

.method static synthetic a(Ldbs;Ljava/util/List;Z)V
    .locals 2
    .param p0, "x0"    # Ldbs;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 26
    .line 3269
    iput-boolean p2, p0, Ldbs;->i:Z

    .line 3270
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3271
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldbs;->i:Z

    .line 3272
    iget-object v0, p0, Ldbs;->a:Ldbr$b;

    iget-boolean v1, p0, Ldbs;->i:Z

    invoke-interface {v0, v1}, Ldbr$b;->a(Z)V

    .line 3273
    :cond_1
    :goto_0
    return-void

    .line 3275
    :cond_2
    iput-boolean p2, p0, Ldbs;->i:Z

    .line 3276
    iget-object v0, p0, Ldbs;->a:Ldbr$b;

    iget-boolean v1, p0, Ldbs;->i:Z

    invoke-interface {v0, v1}, Ldbr$b;->a(Z)V

    .line 3277
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 3278
    if-eqz v0, :cond_1

    .line 3279
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v0

    iput-wide v0, p0, Ldbs;->d:J

    goto :goto_0
.end method

.method static synthetic a(Ldbs;Z)V
    .locals 6
    .param p0, "x0"    # Ldbs;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    .line 2251
    iget-object v0, p0, Ldbs;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 2252
    if-eqz v0, :cond_0

    .line 2255
    iget-wide v2, p0, Ldbs;->h:J

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 2256
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    iput-wide v0, p0, Ldbs;->c:J

    .line 2260
    :cond_1
    if-eqz p1, :cond_2

    .line 2261
    iget-object v0, p0, Ldbs;->a:Ldbr$b;

    invoke-interface {v0}, Ldbr$b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2262
    iget-object v0, p0, Ldbs;->a:Ldbr$b;

    iget-wide v2, p0, Ldbs;->c:J

    invoke-interface {v0, v2, v3}, Ldbr$b;->b(J)V

    .line 2263
    iget-object v0, p0, Ldbs;->a:Ldbr$b;

    invoke-interface {v0}, Ldbr$b;->a()V

    .line 26
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 194
    new-instance v0, Ldbs$3;

    invoke-direct {v0, p0}, Ldbs$3;-><init>(Ldbs;)V

    .line 227
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    iget-object v1, p0, Ldbs;->g:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_0

    .line 228
    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Ldbs;->g:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 230
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    :cond_0
    const-class v1, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageService;

    const-wide/16 v2, 0x0

    const/16 v4, 0x14

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alibaba/wukong/im/MessageService;->listAtMeMessages(JILcom/alibaba/wukong/Callback;)V

    .line 231
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Ldbs;->e:Ljava/util/List;

    return-object v0
.end method

.method public final c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 285
    iget-boolean v1, p0, Ldbs;->i:Z

    if-nez v1, :cond_0

    .line 320
    :goto_0
    return-void

    .line 288
    :cond_0
    new-instance v0, Ldbs$4;

    invoke-direct {v0, p0}, Ldbs$4;-><init>(Ldbs;)V

    .line 316
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    iget-object v1, p0, Ldbs;->g:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_1

    .line 317
    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Ldbs;->g:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 319
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    :cond_1
    const-class v1, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageService;

    iget-wide v2, p0, Ldbs;->d:J

    const/16 v4, 0x14

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alibaba/wukong/im/MessageService;->listAtMeMessages(JILcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method public final i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 334
    .line 1167
    iget-object v0, p0, Ldbs;->j:Lcom/alibaba/wukong/im/MessageListener;

    if-eqz v0, :cond_0

    .line 1168
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v1, p0, Ldbs;->j:Lcom/alibaba/wukong/im/MessageListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageService;->removeMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V

    .line 1169
    iput-object v2, p0, Ldbs;->j:Lcom/alibaba/wukong/im/MessageListener;

    .line 1174
    :cond_0
    iget-object v0, p0, Ldbs;->k:Lcom/alibaba/wukong/im/MessageChangeListener;

    if-eqz v0, :cond_1

    .line 1175
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v1, p0, Ldbs;->k:Lcom/alibaba/wukong/im/MessageChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageService;->removeMessageChangeListener(Lcom/alibaba/wukong/im/MessageChangeListener;)V

    .line 1176
    iput-object v2, p0, Ldbs;->k:Lcom/alibaba/wukong/im/MessageChangeListener;

    .line 336
    :cond_1
    return-void
.end method
