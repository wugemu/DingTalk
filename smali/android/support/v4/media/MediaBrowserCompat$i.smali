.class final Landroid/support/v4/media/MediaBrowserCompat$i;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompat$e;
.implements Landroid/support/v4/media/MediaBrowserCompat$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$i$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/content/ComponentName;

.field final c:Landroid/support/v4/media/MediaBrowserCompat$b;

.field final d:Landroid/os/Bundle;

.field final e:Landroid/support/v4/media/MediaBrowserCompat$a;

.field f:I

.field g:Landroid/support/v4/media/MediaBrowserCompat$i$a;

.field h:Landroid/support/v4/media/MediaBrowserCompat$l;

.field i:Landroid/os/Messenger;

.field private final j:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserCompat$m;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private m:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$b;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;
    .param p3, "callback"    # Landroid/support/v4/media/MediaBrowserCompat$b;
    .param p4, "rootHints"    # Landroid/os/Bundle;

    .prologue
    .line 985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 973
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$a;-><init>(Landroid/support/v4/media/MediaBrowserCompat$j;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->e:Landroid/support/v4/media/MediaBrowserCompat$a;

    .line 974
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->j:Lfk;

    .line 976
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    .line 986
    if-nez p1, :cond_0

    .line 987
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 989
    :cond_0
    if-nez p2, :cond_1

    .line 990
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service component must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 992
    :cond_1
    if-nez p3, :cond_2

    .line 993
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "connection callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 995
    :cond_2
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->a:Landroid/content/Context;

    .line 996
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->b:Landroid/content/ComponentName;

    .line 997
    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->c:Landroid/support/v4/media/MediaBrowserCompat$b;

    .line 998
    if-nez p4, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->d:Landroid/os/Bundle;

    .line 999
    return-void

    .line 998
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 1415
    packed-switch p0, :pswitch_data_0

    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UNKNOWN/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1417
    :pswitch_0
    const-string/jumbo v0, "CONNECT_STATE_DISCONNECTING"

    goto :goto_0

    .line 1419
    :pswitch_1
    const-string/jumbo v0, "CONNECT_STATE_DISCONNECTED"

    goto :goto_0

    .line 1421
    :pswitch_2
    const-string/jumbo v0, "CONNECT_STATE_CONNECTING"

    goto :goto_0

    .line 1423
    :pswitch_3
    const-string/jumbo v0, "CONNECT_STATE_CONNECTED"

    goto :goto_0

    .line 1425
    :pswitch_4
    const-string/jumbo v0, "CONNECT_STATE_SUSPENDED"

    goto :goto_0

    .line 1415
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Landroid/os/Messenger;Ljava/lang/String;)Z
    .locals 2
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "funcName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1436
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->i:Landroid/os/Messenger;

    if-ne v1, p1, :cond_0

    iget v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    if-ne v1, v0, :cond_2

    .line 1438
    :cond_0
    iget v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    if-eq v1, v0, :cond_1

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->b:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " with mCallbacksMessenger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->i:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1442
    :cond_1
    const/4 v0, 0x0

    .line 1444
    :cond_2
    return v0
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1104
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->g:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->a:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->g:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1107
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    .line 1108
    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->g:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    .line 1109
    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->h:Landroid/support/v4/media/MediaBrowserCompat$l;

    .line 1110
    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->i:Landroid/os/Messenger;

    .line 1111
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->e:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$a;->a(Landroid/os/Messenger;)V

    .line 1112
    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->k:Ljava/lang/String;

    .line 1113
    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->l:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1114
    return-void
.end method

.method public final a(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "callback"    # Landroid/os/Messenger;

    .prologue
    .line 1351
    const-string/jumbo v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onConnectFailed for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->b:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    const-string/jumbo v0, "onConnectFailed"

    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$i;->a(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1369
    :goto_0
    return-void

    .line 1358
    :cond_0
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1359
    const-string/jumbo v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onConnect from service while mState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$i;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "... ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1365
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$i;->a()V

    .line 1368
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->c:Landroid/support/v4/media/MediaBrowserCompat$b;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$b;->c()V

    goto :goto_0
.end method

.method public final a(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 14
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "session"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .param p4, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 1308
    const-string/jumbo v7, "onConnect"

    invoke-direct {p0, p1, v7}, Landroid/support/v4/media/MediaBrowserCompat$i;->a(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1347
    :cond_0
    :goto_0
    return-void

    .line 1312
    :cond_1
    iget v7, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    .line 1313
    const-string/jumbo v7, "MediaBrowserCompat"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onConnect from service while mState="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    invoke-static {v9}, Landroid/support/v4/media/MediaBrowserCompat$i;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "... ignoring"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1317
    :cond_2
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->k:Ljava/lang/String;

    .line 1318
    move-object/from16 v0, p3

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->l:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1319
    move-object/from16 v0, p4

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->m:Landroid/os/Bundle;

    .line 1320
    const/4 v7, 0x3

    iput v7, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    .line 1322
    sget-boolean v7, Landroid/support/v4/media/MediaBrowserCompat;->a:Z

    if-eqz v7, :cond_3

    .line 1324
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$i;->b()V

    .line 1326
    :cond_3
    iget-object v7, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->c:Landroid/support/v4/media/MediaBrowserCompat$b;

    invoke-virtual {v7}, Landroid/support/v4/media/MediaBrowserCompat$b;->a()V

    .line 1332
    :try_start_0
    iget-object v7, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->j:Lfk;

    invoke-virtual {v7}, Lfk;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1333
    .local v6, "subscriptionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$m;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1334
    .local v3, "id":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/MediaBrowserCompat$m;

    .line 3000
    .local v5, "sub":Landroid/support/v4/media/MediaBrowserCompat$m;
    iget-object v1, v5, Landroid/support/v4/media/MediaBrowserCompat$m;->a:Ljava/util/List;

    .line 3996
    .local v1, "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$n;>;"
    iget-object v4, v5, Landroid/support/v4/media/MediaBrowserCompat$m;->b:Ljava/util/List;

    .line 1337
    .local v4, "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 1338
    iget-object v9, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->h:Landroid/support/v4/media/MediaBrowserCompat$l;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/media/MediaBrowserCompat$n;

    .line 4673
    iget-object v10, v7, Landroid/support/v4/media/MediaBrowserCompat$n;->a:Landroid/os/IBinder;

    .line 1339
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    iget-object v11, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->i:Landroid/os/Messenger;

    .line 5111
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 5112
    const-string/jumbo v13, "data_media_item_id"

    invoke-virtual {v12, v13, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5113
    const-string/jumbo v13, "data_callback_token"

    invoke-static {v12, v13, v10}, Lci;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 5114
    const-string/jumbo v10, "data_options"

    invoke-virtual {v12, v10, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5115
    const/4 v7, 0x3

    invoke-virtual {v9, v7, v12, v11}, Landroid/support/v4/media/MediaBrowserCompat$l;->a(ILandroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1337
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1347
    .end local v1    # "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$n;>;"
    .end local v2    # "i":I
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v5    # "sub":Landroid/support/v4/media/MediaBrowserCompat$m;
    .end local v6    # "subscriptionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$m;>;"
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method public final a(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "list"    # Ljava/util/List;
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1375
    const-string/jumbo v1, "onLoadChildren"

    invoke-direct {p0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$i;->a(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1409
    :cond_0
    :goto_0
    return-void

    .line 1379
    :cond_1
    sget-boolean v1, Landroid/support/v4/media/MediaBrowserCompat;->a:Z

    if-eqz v1, :cond_2

    .line 1380
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLoadChildren for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->b:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    :cond_2
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->j:Lfk;

    invoke-virtual {v1, p2}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$m;

    .line 1385
    .local v0, "subscription":Landroid/support/v4/media/MediaBrowserCompat$m;
    if-nez v0, :cond_3

    .line 1386
    sget-boolean v1, Landroid/support/v4/media/MediaBrowserCompat;->a:Z

    if-eqz v1, :cond_0

    .line 1387
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLoadChildren for id that isn\'t subscribed id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1393
    :cond_3
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p4}, Landroid/support/v4/media/MediaBrowserCompat$m;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat$n;

    goto :goto_0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  mServiceComponent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->b:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  mCallback="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->c:Landroid/support/v4/media/MediaBrowserCompat$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1454
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  mRootHints="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1455
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  mState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$i;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  mServiceConnection="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->g:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  mServiceBinderWrapper="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->h:Landroid/support/v4/media/MediaBrowserCompat$l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1458
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  mCallbacksMessenger="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->i:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  mRootId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  mMediaSessionToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->l:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1461
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 1003
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1004
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "connect() called while neigther disconnecting nor disconnected (state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    .line 1005
    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$i;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1008
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    .line 1009
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->e:Landroid/support/v4/media/MediaBrowserCompat$a;

    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$i$1;

    invoke-direct {v1, p0}, Landroid/support/v4/media/MediaBrowserCompat$i$1;-><init>(Landroid/support/v4/media/MediaBrowserCompat$i;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$a;->post(Ljava/lang/Runnable;)Z

    .line 1057
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 1064
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    .line 1065
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->e:Landroid/support/v4/media/MediaBrowserCompat$a;

    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$i$2;

    invoke-direct {v1, p0}, Landroid/support/v4/media/MediaBrowserCompat$i$2;-><init>(Landroid/support/v4/media/MediaBrowserCompat$i;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$a;->post(Ljava/lang/Runnable;)Z

    .line 1091
    return-void
.end method

.method public final e()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1150
    .line 2118
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1150
    :goto_0
    if-nez v0, :cond_1

    .line 1151
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getSessionToken() called while not connected(state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1154
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->l:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method
