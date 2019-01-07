.class public final Ldq;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldq$a;,
        Ldq$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;

.field private static g:Ldq;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList",
            "<",
            "Ldq$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ldq$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldq$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldq;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldq;->b:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldq;->c:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldq;->d:Ljava/util/ArrayList;

    .line 111
    iput-object p1, p0, Ldq;->a:Landroid/content/Context;

    .line 112
    new-instance v0, Ldq$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ldq$1;-><init>(Ldq;Landroid/os/Looper;)V

    iput-object v0, p0, Ldq;->e:Landroid/os/Handler;

    .line 125
    return-void
.end method

.method public static a(Landroid/content/Context;)Ldq;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    sget-object v1, Ldq;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    sget-object v0, Ldq;->g:Ldq;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ldq;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Ldq;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldq;->g:Ldq;

    .line 106
    :cond_0
    sget-object v0, Ldq;->g:Ldq;

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 293
    :cond_0
    iget-object v8, p0, Ldq;->b:Ljava/util/HashMap;

    monitor-enter v8

    .line 294
    :try_start_0
    iget-object v7, p0, Ldq;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 295
    .local v0, "N":I
    if-gtz v0, :cond_1

    .line 296
    monitor-exit v8

    return-void

    .line 298
    :cond_1
    new-array v2, v0, [Ldq$a;

    .line 299
    .local v2, "brs":[Ldq$a;
    iget-object v7, p0, Ldq;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 300
    iget-object v7, p0, Ldq;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 301
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_0

    .line 303
    aget-object v1, v2, v3

    .line 304
    .local v1, "br":Ldq$a;
    iget-object v7, v1, Ldq$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 305
    .local v5, "nbr":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v5, :cond_3

    .line 306
    iget-object v7, v1, Ldq$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldq$b;

    .line 307
    .local v6, "rec":Ldq$b;
    iget-boolean v7, v6, Ldq$b;->d:Z

    if-nez v7, :cond_2

    .line 308
    iget-object v7, v6, Ldq$b;->b:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Ldq;->a:Landroid/content/Context;

    iget-object v9, v1, Ldq$a;->a:Landroid/content/Intent;

    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 305
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 301
    .end local v0    # "N":I
    .end local v1    # "br":Ldq$a;
    .end local v2    # "brs":[Ldq$a;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "nbr":I
    .end local v6    # "rec":Ldq$b;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 302
    .restart local v0    # "N":I
    .restart local v1    # "br":Ldq$a;
    .restart local v2    # "brs":[Ldq$a;
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "nbr":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static synthetic a(Ldq;)V
    .locals 0
    .param p0, "x0"    # Ldq;

    .prologue
    .line 46
    invoke-direct {p0}, Ldq;->a()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/BroadcastReceiver;)V
    .locals 10
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    iget-object v9, p0, Ldq;->b:Ljava/util/HashMap;

    monitor-enter v9

    .line 167
    :try_start_0
    iget-object v8, p0, Ldq;->b:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 168
    .local v2, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    if-nez v2, :cond_0

    .line 169
    monitor-exit v9

    .line 191
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_5

    .line 172
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldq$b;

    .line 173
    .local v1, "filter":Ldq$b;
    const/4 v8, 0x1

    iput-boolean v8, v1, Ldq$b;->d:Z

    .line 174
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget-object v8, v1, Ldq$b;->a:Landroid/content/IntentFilter;

    invoke-virtual {v8}, Landroid/content/IntentFilter;->countActions()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 175
    iget-object v8, v1, Ldq$b;->a:Landroid/content/IntentFilter;

    invoke-virtual {v8, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "action":Ljava/lang/String;
    iget-object v8, p0, Ldq;->c:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 177
    .local v7, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    if-eqz v7, :cond_3

    .line 178
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "k":I
    :goto_3
    if-ltz v5, :cond_2

    .line 179
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldq$b;

    .line 180
    .local v6, "rec":Ldq$b;
    iget-object v8, v6, Ldq$b;->b:Landroid/content/BroadcastReceiver;

    if-ne v8, p1, :cond_1

    .line 181
    const/4 v8, 0x1

    iput-boolean v8, v6, Ldq$b;->d:Z

    .line 182
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 178
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 185
    .end local v6    # "rec":Ldq$b;
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_3

    .line 186
    iget-object v8, p0, Ldq;->c:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .end local v5    # "k":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 171
    .end local v0    # "action":Ljava/lang/String;
    .end local v7    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 191
    .end local v1    # "filter":Ldq$b;
    .end local v4    # "j":I
    :cond_5
    monitor-exit v9

    goto :goto_0

    .end local v2    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    .end local v3    # "i":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public final a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 7
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    iget-object v6, p0, Ldq;->b:Ljava/util/HashMap;

    monitor-enter v6

    .line 137
    :try_start_0
    new-instance v2, Ldq$b;

    invoke-direct {v2, p2, p1}, Ldq$b;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 138
    .local v2, "entry":Ldq$b;
    iget-object v5, p0, Ldq;->b:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 139
    .local v3, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    if-nez v3, :cond_0

    .line 140
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .restart local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    iget-object v5, p0, Ldq;->b:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 145
    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Ldq;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 147
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    if-nez v1, :cond_1

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    const/4 v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    .restart local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    iget-object v5, p0, Ldq;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    :cond_2
    monitor-exit v6

    return-void

    .end local v2    # "entry":Ldq$b;
    .end local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    .end local v4    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public final a(Landroid/content/Intent;)Z
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 209
    move-object/from16 v0, p0

    iget-object v15, v0, Ldq;->b:Ljava/util/HashMap;

    monitor-enter v15

    .line 210
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Ldq;->a:Landroid/content/Context;

    .line 212
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 211
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 214
    .local v5, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "scheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    .line 218
    .local v6, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    const/4 v8, 0x1

    .line 219
    .local v8, "debug":Z
    :goto_0
    if-eqz v8, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Resolving type "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, " scheme "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, " of intent "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Ldq;->c:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 224
    .local v9, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    if-eqz v9, :cond_c

    .line 225
    if-eqz v8, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Action list: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    :cond_1
    const/4 v14, 0x0

    .line 228
    .local v14, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_9

    .line 229
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ldq$b;

    .line 230
    .local v13, "receiver":Ldq$b;
    if-eqz v8, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Matching against filter "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v13, Ldq$b;->a:Landroid/content/IntentFilter;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    :cond_2
    iget-boolean v1, v13, Ldq$b;->c:Z

    if-eqz v1, :cond_5

    .line 233
    if-eqz v8, :cond_3

    .line 228
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 218
    .end local v8    # "debug":Z
    .end local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    .end local v10    # "i":I
    .end local v13    # "receiver":Ldq$b;
    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 239
    .restart local v8    # "debug":Z
    .restart local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    .restart local v10    # "i":I
    .restart local v13    # "receiver":Ldq$b;
    .restart local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    :cond_5
    iget-object v1, v13, Ldq$b;->a:Landroid/content/IntentFilter;

    const-string/jumbo v7, "LocalBroadcastManager"

    invoke-virtual/range {v1 .. v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v11

    .line 241
    .local v11, "match":I
    if-ltz v11, :cond_8

    .line 242
    if-eqz v8, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "  Filter matched!  match=0x"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_6
    if-nez v14, :cond_7

    .line 245
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .restart local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    :cond_7
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    const/4 v1, 0x1

    iput-boolean v1, v13, Ldq$b;->c:Z

    goto :goto_2

    .line 275
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "data":Landroid/net/Uri;
    .end local v6    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "debug":Z
    .end local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    .end local v10    # "i":I
    .end local v11    # "match":I
    .end local v13    # "receiver":Ldq$b;
    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 250
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    .restart local v4    # "scheme":Ljava/lang/String;
    .restart local v5    # "data":Landroid/net/Uri;
    .restart local v6    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "debug":Z
    .restart local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    .restart local v10    # "i":I
    .restart local v11    # "match":I
    .restart local v13    # "receiver":Ldq$b;
    .restart local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    :cond_8
    if-eqz v8, :cond_3

    .line 252
    packed-switch v11, :pswitch_data_0

    .line 257
    :try_start_1
    const-string/jumbo v12, "unknown reason"

    .line 259
    .local v12, "reason":Ljava/lang/String;
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "  Filter did not match: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 253
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v12, "action"

    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 254
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v12, "category"

    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 255
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v12, "data"

    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 256
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v12, "type"

    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 264
    .end local v11    # "match":I
    .end local v12    # "reason":Ljava/lang/String;
    .end local v13    # "receiver":Ldq$b;
    :cond_9
    if-eqz v14, :cond_c

    .line 265
    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_a

    .line 266
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldq$b;

    const/4 v7, 0x0

    iput-boolean v7, v1, Ldq$b;->c:Z

    .line 265
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 268
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Ldq;->d:Ljava/util/ArrayList;

    new-instance v7, Ldq$a;

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v14}, Ldq$a;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Ldq;->e:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Ldq;->e:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 272
    :cond_b
    const/4 v1, 0x1

    monitor-exit v15

    .line 276
    .end local v10    # "i":I
    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldq$b;>;"
    :goto_5
    return v1

    .line 275
    :cond_c
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    const/4 v1, 0x0

    goto :goto_5

    .line 252
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Ldq;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-direct {p0}, Ldq;->a()V

    .line 288
    :cond_0
    return-void
.end method
