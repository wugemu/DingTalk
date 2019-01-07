.class public final Lekg;
.super Ljava/lang/Object;
.source "MessageNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lekg$a;
    }
.end annotation


# static fields
.field private static volatile k:Lekg;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/app/NotificationManager;

.field public c:Z

.field d:I

.field public e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:I

.field public h:I

.field private final i:[J

.field private final j:[J

.field private l:Z

.field private m:J

.field private n:Z

.field private o:Ljava/lang/reflect/Field;

.field private p:Ljava/lang/reflect/Method;

.field private q:Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;

.field private r:Lcjo$a;

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lekg$a;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private v:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

.field private w:Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lekg;->i:[J

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    iput-object v0, p0, Lekg;->j:[J

    .line 104
    iput-boolean v2, p0, Lekg;->c:Z

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lekg;->m:J

    .line 111
    iput-boolean v2, p0, Lekg;->n:Z

    .line 431
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lekg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 433
    new-instance v0, Lekg$1;

    invoke-direct {v0, p0}, Lekg$1;-><init>(Lekg;)V

    iput-object v0, p0, Lekg;->q:Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lekg;->f:Z

    .line 877
    new-instance v0, Lekg$2;

    invoke-direct {v0, p0}, Lekg$2;-><init>(Lekg;)V

    iput-object v0, p0, Lekg;->r:Lcjo$a;

    .line 992
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lekg;->s:Ljava/util/HashMap;

    .line 993
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lekg;->t:Landroid/util/SparseArray;

    .line 994
    const v0, 0xc350

    iput v0, p0, Lekg;->u:I

    .line 1426
    new-instance v0, Lekg$5;

    invoke-direct {v0, p0}, Lekg$5;-><init>(Lekg;)V

    iput-object v0, p0, Lekg;->w:Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface$a;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lekg;->a:Landroid/content/Context;

    .line 125
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lekg;->b:Landroid/app/NotificationManager;

    .line 127
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    iget-object v1, p0, Lekg;->q:Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;)V

    .line 128
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    iget-object v1, p0, Lekg;->w:Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->setOnLightAppNotificationListener(Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface$a;)V

    .line 129
    return-void

    .line 92
    .line 93
    :array_0
    .array-data 8
        0xc8
        0xc8
        0xc8
        0xc8
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lekg;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const-class v1, Lekg;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lekg;->k:Lekg;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lekg;

    invoke-direct {v0, p0}, Lekg;-><init>(Landroid/content/Context;)V

    sput-object v0, Lekg;->k:Lekg;

    .line 120
    :cond_0
    sget-object v0, Lekg;->k:Lekg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)V
    .locals 2
    .param p0, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p1, "dtChannel"    # Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .prologue
    .line 765
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    invoke-static {}, Lclp;->a()Lclp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lclp;->a(Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, "channelId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {p0, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method private b(ILjava/lang/String;ILandroid/app/Notification;I)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "notificationCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 362
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "wk_xpn"

    const-string/jumbo v3, "switch"

    invoke-virtual {v1, v2, v3}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "d":Ljava/lang/String;
    const-string/jumbo v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lekg;->l:Z

    .line 5369
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "notification"

    const-string/jumbo v3, "notification switch: mShouldNotify-%b, mXpnDisabled-%b, isOnline-%b"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-boolean v5, p0, Lekg;->c:Z

    .line 5371
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    iget-boolean v5, p0, Lekg;->l:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x2

    .line 5372
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a()Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->b()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 5370
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5369
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5373
    iget-boolean v1, p0, Lekg;->c:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lekg;->l:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a()Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->b()Z

    move-result v1

    if-nez v1, :cond_5

    .line 5374
    :cond_0
    const/4 v1, 0x0

    .line 5375
    iget-object v2, p4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_1

    .line 5377
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5378
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5379
    const-string/jumbo v3, "to_page"

    const-string/jumbo v4, "to_session"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5380
    const-string/jumbo v3, "/ding/home.html"

    invoke-static {v3, v1}, Lemd;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 5381
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5382
    iget-object v3, p0, Lekg;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5383
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5385
    iget-object v3, p0, Lekg;->a:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v3, v7, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 5389
    :cond_1
    :try_start_0
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "notification"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "real notification uri:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5392
    iget-boolean v1, p0, Lekg;->n:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_4

    .line 5394
    :try_start_1
    iget-object v1, p0, Lekg;->o:Ljava/lang/reflect/Field;

    if-nez v1, :cond_2

    .line 5395
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "extraNotification"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lekg;->o:Ljava/lang/reflect/Field;

    .line 5397
    :cond_2
    iget-object v1, p0, Lekg;->o:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5398
    iget-object v2, p0, Lekg;->p:Ljava/lang/reflect/Method;

    if-nez v2, :cond_3

    .line 5399
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "setMessageCount"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lekg;->p:Ljava/lang/reflect/Method;

    .line 5401
    :cond_3
    iget-object v2, p0, Lekg;->p:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5408
    :cond_4
    :goto_0
    :try_start_2
    iget-object v1, p0, Lekg;->b:Landroid/app/NotificationManager;

    invoke-virtual {v1, p3, p4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 5409
    iget-object v1, p0, Lekg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    .line 5410
    iget-object v1, p0, Lekg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5414
    :cond_5
    :goto_1
    return-void

    .line 5402
    :catch_0
    move-exception v1

    .line 5403
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5404
    const/4 v1, 0x1

    iput-boolean v1, p0, Lekg;->n:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 5412
    :catch_1
    move-exception v1

    .line 5413
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 11
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1002
    iget-object v2, p0, Lekg;->s:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1003
    iget-object v2, p0, Lekg;->s:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1004
    .local v0, "code":I
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "notification"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getMessageRequestCode containsKey cid:"

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    const-string/jumbo v5, " code:"

    aput-object v5, v4, v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string/jumbo v5, " thread:"

    aput-object v5, v4, v10

    const/4 v5, 0x5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 1010
    .end local v0    # "code":I
    .local v1, "code":I
    :goto_0
    return v1

    .line 1007
    .end local v1    # "code":I
    :cond_0
    iget v0, p0, Lekg;->u:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lekg;->u:I

    .line 1008
    .restart local v0    # "code":I
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "notification"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getMessageRequestCode not containsKey cid:"

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    const-string/jumbo v5, " code:"

    aput-object v5, v4, v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string/jumbo v5, " thread:"

    aput-object v5, v4, v10

    const/4 v5, 0x5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iget-object v2, p0, Lekg;->s:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v0

    .line 1010
    .end local v0    # "code":I
    .restart local v1    # "code":I
    goto :goto_0
.end method

.method public a(I)Lekg$a;
    .locals 2
    .param p1, "requestCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1015
    iget-object v1, p0, Lekg;->t:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekg$a;

    .line 1016
    .local v0, "result":Lekg$a;
    if-nez v0, :cond_0

    .line 1017
    new-instance v0, Lekg$a;

    .end local v0    # "result":Lekg$a;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lekg$a;-><init>(B)V

    .line 1018
    .restart local v0    # "result":Lekg$a;
    iget-object v1, p0, Lekg;->t:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1020
    :cond_0
    return-object v0
.end method

.method public final a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 16
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 265
    const/4 v3, 0x0

    .line 266
    .local v3, "groupRingId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2204
    .local v2, "dtChannel":Lcom/alibaba/android/dingtalkbase/notification/DtChannel;
    if-eqz p2, :cond_6

    .line 2207
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v9

    .line 2208
    if-eqz v9, :cond_6

    .line 2212
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v8

    const/16 v10, 0x384

    if-eq v8, v10, :cond_0

    .line 2213
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v8

    const/16 v10, 0x38c

    if-ne v8, v10, :cond_4

    .line 2214
    :cond_0
    move-object/from16 v0, p2

    instance-of v8, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v8, :cond_4

    move-object/from16 v8, p2

    check-cast v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v8, v8, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    if-eqz v8, :cond_4

    move-object/from16 v8, p2

    .line 2215
    check-cast v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v8, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    .line 2216
    if-eqz v8, :cond_4

    iget-object v10, v8, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->receivers:[Ljava/lang/Long;

    if-eqz v10, :cond_4

    .line 2217
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->b()Lchy;

    move-result-object v10

    invoke-virtual {v10}, Lchy;->getCurrentUid()J

    move-result-wide v10

    .line 2218
    iget-object v12, v8, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->receivers:[Ljava/lang/Long;

    array-length v13, v12

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v13, :cond_4

    aget-object v14, v12, v8

    .line 2219
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v14, v14, v10

    if-nez v14, :cond_3

    .line 2220
    const/4 v8, 0x1

    .line 268
    :goto_1
    if-eqz v8, :cond_7

    .line 269
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v8

    invoke-virtual {v8}, Lccq;->h()Lchj;

    move-result-object v5

    .line 270
    .local v5, "notificationsSettingModel":Lchj;
    const/4 v6, 0x5

    .line 281
    .local v6, "scene":I
    :goto_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v8

    .line 3029
    iget v9, v5, Lchj;->a:I

    .line 282
    invoke-virtual {v8, v6, v9}, Lccq;->b(II)Lcom/alibaba/android/dingtalkbase/notification/Sound;

    move-result-object v7

    .line 283
    .local v7, "sound":Lcom/alibaba/android/dingtalkbase/notification/Sound;
    if-eqz v7, :cond_1

    .line 284
    sget-object v8, Lekg$6;->a:[I

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 302
    sget-object v2, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Message:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .line 308
    :cond_1
    :goto_3
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->d()Z

    move-result v4

    .line 309
    .local v4, "isVideoConfRunning":Z
    const-string/jumbo v9, "im"

    const-string/jumbo v10, "notification"

    const-string/jumbo v11, "notification switch: sound-%b, vibrate-%b, silent-%b, isAnchorLive-%b, isLivePlaying-%b, isVideoConfRun-%b"

    const/4 v8, 0x6

    new-array v12, v8, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 4029
    iget v8, v5, Lchj;->a:I

    .line 311
    sget-object v14, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;->DEFAULT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;

    invoke-virtual {v14}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;->getValue()I

    move-result v14

    if-ne v8, v14, :cond_d

    const/4 v8, 0x1

    :goto_4
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v12, v13

    const/4 v8, 0x1

    invoke-virtual {v5}, Lchj;->b()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v8

    const/4 v8, 0x2

    .line 312
    invoke-static {}, Lcmp;->a()Lcmp;

    move-result-object v13

    invoke-virtual {v13}, Lcmp;->d()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v8

    const/4 v8, 0x3

    .line 313
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->g()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v8

    const/4 v8, 0x4

    .line 314
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->b()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v8

    const/4 v8, 0x5

    .line 315
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v8

    .line 310
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 309
    invoke-static {v9, v10, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcmp;->a()Lcmp;

    move-result-object v8

    invoke-virtual {v8}, Lcmp;->d()Z

    move-result v8

    if-nez v8, :cond_10

    invoke-virtual/range {p0 .. p0}, Lekg;->b()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 319
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->g()Z

    move-result v8

    if-nez v8, :cond_10

    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->b()Z

    move-result v8

    if-nez v8, :cond_10

    if-nez v4, :cond_10

    .line 322
    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 323
    invoke-virtual {v5}, Lchj;->b()Z

    move-result v8

    if-eqz v8, :cond_e

    move-object/from16 v0, p0

    iget-object v8, v0, Lekg;->i:[J

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 325
    if-eqz p2, :cond_2

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v8

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 326
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v8

    const-string/jumbo v9, "groupRingId"

    invoke-interface {v8, v9}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    :cond_2
    invoke-virtual {v5}, Lchj;->a()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 329
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v8

    .line 5029
    iget v9, v5, Lchj;->a:I

    .line 329
    invoke-virtual {v8, v6, v9}, Lccq;->a(II)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 341
    :goto_6
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)V

    .line 342
    return-object v3

    .line 2218
    .end local v4    # "isVideoConfRunning":Z
    .end local v5    # "notificationsSettingModel":Lchj;
    .end local v6    # "scene":I
    .end local v7    # "sound":Lcom/alibaba/android/dingtalkbase/notification/Sound;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 2226
    :cond_4
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v8

    const/16 v10, 0x386

    if-eq v8, v10, :cond_5

    .line 2227
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v8

    const/16 v10, 0x385

    if-eq v8, v10, :cond_5

    .line 2228
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v8

    const/16 v10, 0x389

    if-eq v8, v10, :cond_5

    .line 2229
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v8

    const/16 v9, 0x388

    if-ne v8, v9, :cond_6

    :cond_5
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 2233
    :cond_7
    if-eqz p2, :cond_9

    .line 2236
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v8

    sget-object v9, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-eq v8, v9, :cond_9

    .line 2237
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(J)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2238
    const/4 v8, 0x1

    .line 271
    :goto_7
    if-eqz v8, :cond_a

    .line 272
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v8

    invoke-virtual {v8}, Lccq;->f()Lchj;

    move-result-object v5

    .line 273
    .restart local v5    # "notificationsSettingModel":Lchj;
    const/4 v6, 0x3

    .restart local v6    # "scene":I
    goto/16 :goto_2

    .line 2240
    .end local v5    # "notificationsSettingModel":Lchj;
    .end local v6    # "scene":I
    :cond_8
    const/4 v8, 0x0

    goto :goto_7

    .line 2243
    :cond_9
    const/4 v8, 0x0

    goto :goto_7

    .line 2248
    :cond_a
    if-nez p2, :cond_b

    .line 2249
    const/4 v8, 0x0

    .line 274
    :goto_8
    if-eqz v8, :cond_c

    .line 275
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v8

    invoke-virtual {v8}, Lccq;->g()Lchj;

    move-result-object v5

    .line 276
    .restart local v5    # "notificationsSettingModel":Lchj;
    const/4 v6, 0x4

    .restart local v6    # "scene":I
    goto/16 :goto_2

    .line 2251
    .end local v5    # "notificationsSettingModel":Lchj;
    .end local v6    # "scene":I
    :cond_b
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->isAt()Z

    move-result v8

    goto :goto_8

    .line 278
    :cond_c
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v8

    invoke-virtual {v8}, Lccq;->d()Lchj;

    move-result-object v5

    .line 279
    .restart local v5    # "notificationsSettingModel":Lchj;
    const/4 v6, 0x1

    .restart local v6    # "scene":I
    goto/16 :goto_2

    .line 286
    .restart local v7    # "sound":Lcom/alibaba/android/dingtalkbase/notification/Sound;
    :pswitch_0
    sget-object v2, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Mute:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .line 287
    goto/16 :goto_3

    .line 289
    :pswitch_1
    sget-object v2, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Message_At_Me:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .line 290
    goto/16 :goto_3

    .line 292
    :pswitch_2
    sget-object v2, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Message_Vip:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .line 293
    goto/16 :goto_3

    .line 295
    :pswitch_3
    sget-object v2, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Ding:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .line 296
    goto/16 :goto_3

    .line 298
    :pswitch_4
    sget-object v2, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Message_Red_Packet:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .line 299
    goto/16 :goto_3

    .line 311
    .restart local v4    # "isVideoConfRunning":Z
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 323
    :cond_e
    move-object/from16 v0, p0

    iget-object v8, v0, Lekg;->j:[J

    goto/16 :goto_5

    .line 332
    :cond_f
    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 333
    sget-object v2, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Mute:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    goto/16 :goto_6

    .line 336
    :cond_10
    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 337
    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 338
    move-object/from16 v0, p0

    iget-object v8, v0, Lekg;->j:[J

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 339
    sget-object v2, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Mute:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    goto/16 :goto_6

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->k()V

    .line 134
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v0

    iget-object v1, p0, Lekg;->r:Lcjo$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a(Lcjo$a;)V

    .line 135
    return-void
.end method

.method public final a(ILandroid/app/Notification;I)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "notificationCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 349
    const/16 v1, 0xc80

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lekg;->b(ILjava/lang/String;ILandroid/app/Notification;I)V

    .line 350
    return-void
.end method

.method public final a(ILjava/lang/String;ILandroid/app/Notification;I)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "notificationCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 356
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lekg;->b(ILjava/lang/String;ILandroid/app/Notification;I)V

    .line 357
    return-void
.end method

.method public a(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 1404
    if-nez p1, :cond_1

    .line 1416
    :cond_0
    :goto_0
    return-void

    .line 1407
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1408
    invoke-virtual {p1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1409
    iget-object v0, p0, Lekg;->v:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    if-nez v0, :cond_2

    .line 1410
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    iput-object v0, p0, Lekg;->v:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 1412
    :cond_2
    iget-object v0, p0, Lekg;->v:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lekg;->v:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    invoke-interface {v0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1413
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method public a(Lcom/alibaba/wukong/im/Message;)V
    .locals 18
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 1043
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 1044
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/alibaba/dingtalk/oabase/OAInterface;->c(J)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v8

    .line 1045
    .local v8, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v8, :cond_2

    iget-wide v14, v8, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    const-wide/16 v16, 0x9e

    cmp-long v13, v14, v16

    if-nez v13, :cond_2

    .line 1048
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lekg;->a:Landroid/content/Context;

    sget-object v14, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Message:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-static {v13, v14}, Lekf;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)Lekf;

    move-result-object v2

    .line 1049
    .local v2, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v9

    check-cast v9, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 1050
    .local v9, "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 1051
    .local v4, "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->url()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1052
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->url()Ljava/lang/String;

    move-result-object v12

    .line 1053
    .local v12, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lekg;->a:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f091f36

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1054
    .local v11, "title":Ljava/lang/String;
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 1055
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v13

    const-string/jumbo v14, "h_tl"

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1056
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v13

    const-string/jumbo v14, "h_tl"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "title":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 1058
    .restart local v11    # "title":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lekg;->a:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f091f35

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1059
    .local v3, "content":Ljava/lang/String;
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 1060
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v13

    const-string/jumbo v14, "b_content"

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1061
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v13

    const-string/jumbo v14, "b_content"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "content":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1067
    .restart local v3    # "content":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    .line 1068
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->c()Landroid/app/Application;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020f42

    invoke-static {v14, v15}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    const v14, 0x7f020dff

    .line 1069
    invoke-virtual {v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    const v14, -0xffff01

    const/16 v15, 0x3e8

    const/16 v16, 0x3e8

    invoke-virtual/range {v13 .. v16}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1071
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1072
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v13, "intent_key_transfer_type"

    const-string/jumbo v14, "transfer_type_notification"

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1073
    const-string/jumbo v13, "to_page"

    const-string/jumbo v14, "to_oa_subapp"

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    const-string/jumbo v13, "url"

    invoke-virtual {v7, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1075
    const-string/jumbo v13, "title"

    invoke-virtual {v7, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1076
    const-string/jumbo v13, "corp_id"

    iget-object v14, v8, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->corpId:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1077
    const-string/jumbo v13, "/bokui_transfer.html"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lemd;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1078
    const-string/jumbo v13, "android.intent.action.VIEW"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1079
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->e()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    move-object/from16 v0, p0

    iget-object v13, v0, Lekg;->a:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1081
    move-object/from16 v0, p0

    iget-object v13, v0, Lekg;->a:Landroid/content/Context;

    const/4 v14, 0x0

    const/high16 v15, 0x8000000

    invoke-static {v13, v14, v7, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1083
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1084
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 1085
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1086
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v6

    .line 1087
    .local v6, "groupRingId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1088
    const/16 v13, 0x7b9

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lekg;->a(ILandroid/app/Notification;I)V

    .line 1118
    .end local v2    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v3    # "content":Ljava/lang/String;
    .end local v4    # "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .end local v6    # "groupRingId":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v9    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 1062
    .restart local v2    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v3    # "content":Ljava/lang/String;
    .restart local v4    # "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .restart local v8    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .restart local v9    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    .restart local v11    # "title":Ljava/lang/String;
    .restart local v12    # "url":Ljava/lang/String;
    :cond_3
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v13

    const-string/jumbo v14, "b_tl"

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1063
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v13

    const-string/jumbo v14, "b_tl"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "content":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "content":Ljava/lang/String;
    goto/16 :goto_0

    .line 1090
    .restart local v6    # "groupRingId":Ljava/lang/String;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v10    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lekg;->a:Landroid/content/Context;

    new-instance v15, Lekg$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lekg$3;-><init>(Lekg;Landroid/support/v4/app/NotificationCompat$Builder;)V

    invoke-virtual {v13, v14, v6, v15}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1113
    .end local v2    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v3    # "content":Ljava/lang/String;
    .end local v4    # "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .end local v6    # "groupRingId":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1114
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public b()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 256
    .local v2, "time":J
    iget-wide v4, p0, Lekg;->m:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    iget-wide v4, p0, Lekg;->m:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 257
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 258
    iput-wide v2, p0, Lekg;->m:J

    .line 260
    :cond_1
    return v0

    .line 256
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
