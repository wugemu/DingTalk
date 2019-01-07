.class public final enum Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;
.super Ljava/lang/Enum;
.source "SimpleEventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;,
        Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;,
        Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;

.field public static final enum INSTANCE:Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;


# instance fields
.field private final mEventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->INSTANCE:Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->INSTANCE:Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->$VALUES:[Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->mEventMap:Ljava/util/Map;

    .line 26
    return-void
.end method

.method public static getDefault()Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->INSTANCE:Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;

    return-object v0
.end method

.method private declared-synchronized getListenersByKey(Ljava/lang/String;)[Ljava/util/List;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 218
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 257
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v7

    .line 221
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->mEventMap:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 224
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v6, "normalListeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v5, "mainThreadListeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->mEventMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;

    .line 227
    .local v4, "listeners":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;
    iget-object v7, v4, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;->b:Ljava/util/List;

    if-eqz v7, :cond_3

    .line 228
    iget-object v7, v4, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;

    .line 229
    .local v3, "listenerInfo":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;
    iget-boolean v8, v3, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;->b:Z

    if-eqz v8, :cond_2

    .line 230
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 218
    .end local v3    # "listenerInfo":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;
    .end local v4    # "listeners":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;
    .end local v5    # "mainThreadListeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    .end local v6    # "normalListeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 232
    .restart local v3    # "listenerInfo":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;
    .restart local v4    # "listeners":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;
    .restart local v5    # "mainThreadListeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    .restart local v6    # "normalListeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    :cond_2
    :try_start_2
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    .end local v3    # "listenerInfo":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;
    :cond_3
    iget-object v7, v4, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;->a:Ljava/util/WeakHashMap;

    if-eqz v7, :cond_6

    .line 237
    iget-object v7, v4, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v7}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 239
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/app/Activity;Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;>;"
    if-eqz v2, :cond_4

    .line 242
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 243
    .local v0, "activityKey":Landroid/app/Activity;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 245
    .local v1, "activityListenersInner":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 248
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;

    .line 249
    .restart local v3    # "listenerInfo":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;
    iget-boolean v9, v3, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;->b:Z

    if-eqz v9, :cond_5

    .line 250
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 252
    :cond_5
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 257
    .end local v0    # "activityKey":Landroid/app/Activity;
    .end local v1    # "activityListenersInner":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/app/Activity;Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;>;"
    .end local v3    # "listenerInfo":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;
    :cond_6
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/util/List;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->$VALUES:[Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;

    return-object v0
.end method


# virtual methods
.method public final postEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->getListenersByKey(Ljava/lang/String;)[Ljava/util/List;

    move-result-object v1

    .line 267
    .local v1, "listeners":[Ljava/util/List;, "[Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    if-nez v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    const/4 v4, 0x0

    aget-object v3, v1, v4

    .line 271
    .local v3, "normalListeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;

    .line 272
    .local v0, "listener":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;
    iget-object v5, v0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;->c:Landroid/app/Activity;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;->c:Landroid/app/Activity;

    invoke-static {v5}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 277
    .end local v0    # "listener":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;
    :cond_3
    const/4 v4, 0x1

    aget-object v2, v1, v4

    .line 278
    .local v2, "mainThreadListeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_5

    .line 279
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;

    .line 280
    .restart local v0    # "listener":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;
    iget-object v5, v0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;->c:Landroid/app/Activity;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;->c:Landroid/app/Activity;

    invoke-static {v5}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 286
    .end local v0    # "listener":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;
    :cond_5
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$1;

    invoke-direct {v5, p0, v2, p1, p2}, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$1;-><init>(Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final postMainEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->getListenersByKey(Ljava/lang/String;)[Ljava/util/List;

    move-result-object v7

    .line 307
    .local v7, "listeners":[Ljava/util/List;, "[Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    if-nez v7, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    const/4 v0, 0x0

    aget-object v2, v7, v0

    .line 311
    .local v2, "normalListeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    const/4 v0, 0x1

    aget-object v5, v7, v0

    .line 312
    .local v5, "mainThreadListeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 313
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;

    .line 314
    .local v6, "listener":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;
    iget-object v1, v6, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;->c:Landroid/app/Activity;

    if-eqz v1, :cond_2

    iget-object v1, v6, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 319
    .end local v6    # "listener":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;

    .line 320
    .restart local v6    # "listener":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;
    iget-object v1, v6, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;->c:Landroid/app/Activity;

    if-eqz v1, :cond_4

    iget-object v1, v6, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 326
    .end local v6    # "listener":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;
    :cond_5
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v8

    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$2;-><init>(Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    invoke-virtual {v8, v0}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final registerEventListener(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 131
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->registerEventListener(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;ZLandroid/app/Activity;)V

    .line 132
    return-void
.end method

.method public final registerEventListener(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;Landroid/app/Activity;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->registerEventListener(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;ZLandroid/app/Activity;)V

    .line 123
    return-void
.end method

.method public final registerEventListener(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;
    .param p3, "runInMainThread"    # Z

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->registerEventListener(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;ZLandroid/app/Activity;)V

    .line 112
    return-void
.end method

.method public final declared-synchronized registerEventListener(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;ZLandroid/app/Activity;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;
    .param p3, "runInMainThread"    # Z
    .param p4, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_1

    .line 101
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->unregisterEventListener(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;)V

    .line 70
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->mEventMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 71
    new-instance v3, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;-><init>(B)V

    .line 72
    .local v3, "listeners":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->mEventMap:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :goto_1
    if-nez p4, :cond_4

    .line 79
    iget-object v4, v3, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;->b:Ljava/util/List;

    if-nez v4, :cond_3

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v2, "globalListeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    iput-object v2, v3, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;->b:Ljava/util/List;

    .line 85
    :goto_2
    new-instance v4, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;

    invoke-direct {v4, p2, p3, p4}, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;-><init>(Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;ZLandroid/app/Activity;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    .end local v2    # "globalListeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    .end local v3    # "listeners":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 74
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->mEventMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;

    .restart local v3    # "listeners":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;
    goto :goto_1

    .line 83
    :cond_3
    iget-object v2, v3, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;->b:Ljava/util/List;

    .restart local v2    # "globalListeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    goto :goto_2

    .line 88
    .end local v2    # "globalListeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    :cond_4
    iget-object v4, v3, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;->a:Ljava/util/WeakHashMap;

    if-nez v4, :cond_6

    .line 89
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 90
    .local v0, "activityListeners":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/app/Activity;Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;>;"
    iput-object v0, v3, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;->a:Ljava/util/WeakHashMap;

    .line 94
    :goto_3
    invoke-virtual {v0, p4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 95
    .local v1, "activityListenersInner":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    if-nez v1, :cond_5

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "activityListenersInner":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .restart local v1    # "activityListenersInner":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    invoke-virtual {v0, p4, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_5
    new-instance v4, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;

    invoke-direct {v4, p2, p3, p4}, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;-><init>(Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;ZLandroid/app/Activity;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v0    # "activityListeners":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/app/Activity;Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;>;"
    .end local v1    # "activityListenersInner":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    :cond_6
    iget-object v0, v3, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;->a:Ljava/util/WeakHashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0    # "activityListeners":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/app/Activity;Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;>;"
    goto :goto_3
.end method

.method public final declared-synchronized removeEventListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->mEventMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized unregisterEventListener(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_0

    if-nez p2, :cond_1

    .line 207
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 143
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->mEventMap:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 146
    iget-object v9, p0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->mEventMap:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;

    .line 148
    .local v8, "listeners":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;
    iget-object v9, v8, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;->b:Ljava/util/List;

    if-eqz v9, :cond_4

    .line 149
    iget-object v9, v8, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 150
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 151
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;

    .line 153
    .local v7, "listenerInfo":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;
    iget-object v9, v7, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;->a:Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;

    if-ne v9, p2, :cond_2

    .line 154
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 156
    iget-object v9, v8, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 157
    const/4 v9, 0x0

    iput-object v9, v8, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;->b:Ljava/util/List;

    .line 159
    iget-object v9, v8, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;->a:Ljava/util/WeakHashMap;

    if-eqz v9, :cond_3

    iget-object v9, v8, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 160
    :cond_3
    iget-object v9, p0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->mEventMap:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    .end local v7    # "listenerInfo":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;
    .end local v8    # "listeners":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 168
    .restart local v8    # "listeners":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;
    :cond_4
    :try_start_2
    iget-object v9, v8, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;->a:Ljava/util/WeakHashMap;

    if-eqz v9, :cond_0

    .line 169
    iget-object v1, v8, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;->a:Ljava/util/WeakHashMap;

    .line 170
    .local v1, "activityListeners":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/app/Activity;Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;>;"
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 172
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/app/Activity;Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;>;>;"
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 173
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 175
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/app/Activity;Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;>;"
    if-eqz v3, :cond_5

    .line 178
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 179
    .local v0, "activityKey":Landroid/app/Activity;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 181
    .local v2, "activityListenersInner":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 184
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 186
    .local v6, "iteratorInner":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;>;"
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 187
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;

    .line 189
    .restart local v7    # "listenerInfo":Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;
    iget-object v9, v7, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;->a:Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;

    if-ne v9, p2, :cond_6

    .line 190
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 192
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 193
    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 196
    const/4 v9, 0x0

    iput-object v9, v8, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;->a:Ljava/util/WeakHashMap;

    .line 197
    iget-object v9, v8, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$b;->b:Ljava/util/List;

    if-nez v9, :cond_0

    .line 198
    iget-object v9, p0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;->mEventMap:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
