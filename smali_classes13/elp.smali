.class public final Lelp;
.super Ljava/lang/Object;
.source "OATodoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lelp$a;
    }
.end annotation


# static fields
.field private static volatile c:Lelp;

.field private static final d:Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lelp$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lejy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lelp;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lelp;->a:Ljava/util/List;

    .line 39
    return-void
.end method

.method public static a()Lelp;
    .locals 4

    .prologue
    .line 43
    sget-object v0, Lelp;->c:Lelp;

    .line 44
    .local v0, "res":Lelp;
    if-nez v0, :cond_1

    .line 45
    sget-object v3, Lelp;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 46
    :try_start_0
    sget-object v0, Lelp;->c:Lelp;

    .line 47
    if-nez v0, :cond_0

    .line 48
    new-instance v1, Lelp;

    invoke-direct {v1}, Lelp;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "res":Lelp;
    .local v1, "res":Lelp;
    :try_start_1
    sput-object v1, Lelp;->c:Lelp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 50
    .end local v1    # "res":Lelp;
    .restart local v0    # "res":Lelp;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 53
    :cond_1
    return-object v0

    .line 50
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "res":Lelp;
    .restart local v1    # "res":Lelp;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "res":Lelp;
    .restart local v0    # "res":Lelp;
    goto :goto_0
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lelq;->a()V

    .line 58
    return-void
.end method

.method private static e()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Long;)I
    .locals 2
    .param p1, "orgId"    # Ljava/lang/Long;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lelp;->b:Lejy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lelp;->b:Lejy;

    iget-object v0, v0, Lejy;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lelp;->b:Lejy;

    iget-object v0, v0, Lejy;->c:Ljava/util/Map;

    .line 113
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 117
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lelp;->b:Lejy;

    iget-object v0, v0, Lejy;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    goto :goto_0
.end method

.method public a(Lejy;)V
    .locals 5
    .param p1, "lastTask"    # Lejy;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    if-nez p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-static {}, Lelp;->e()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-static {v1, p1}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    const-string/jumbo v1, "oa"

    const-string/jumbo v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "saveLastOAUndoObject:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string/jumbo v1, "pref_key_oa_last_undo_object"

    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lelp$a;)V
    .locals 2
    .param p1, "listener"    # Lelp$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lelp;->a:Ljava/util/List;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lelp;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lelp;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lejy;)V
    .locals 5
    .param p1, "newTask"    # Lejy;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 157
    :cond_0
    iput-object p1, p0, Lelp;->b:Lejy;

    .line 158
    iget-object v2, p0, Lelp;->b:Lejy;

    invoke-virtual {p0, v2}, Lelp;->a(Lejy;)V

    .line 159
    iget-object v3, p0, Lelp;->a:Ljava/util/List;

    monitor-enter v3

    .line 160
    :try_start_0
    iget-object v2, p0, Lelp;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 161
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lelp$a;>;"
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lelp$a;

    .line 163
    .local v1, "listener":Lelp$a;
    if-eqz v1, :cond_1

    .line 164
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v4, Lelp$2;

    invoke-direct {v4, p0, v1, p1}, Lelp$2;-><init>(Lelp;Lelp$a;Lejy;)V

    invoke-virtual {v2, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 172
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lelp$a;>;"
    .end local v1    # "listener":Lelp$a;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lelp$a;>;"
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final b(Lelp$a;)V
    .locals 2
    .param p1, "listener"    # Lelp$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 149
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v1, p0, Lelp;->a:Ljava/util/List;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lelp;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lelp;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 149
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Lejy;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1057
    invoke-static {}, Lelq;->a()V

    .line 63
    const-string/jumbo v2, "pref_key_oa_last_undo_object"

    invoke-static {v2}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "val":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lelp;->e()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lejy;

    invoke-static {v2, v1, v3}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lejy;

    iput-object v2, p0, Lelp;->b:Lejy;

    .line 66
    const-string/jumbo v2, "oa"

    const-string/jumbo v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "reloadLastOAUndoObject:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    iget-object v2, p0, Lelp;->b:Lejy;

    if-nez v2, :cond_0

    const-string/jumbo v2, "pref_key_oa_sync_undo_object_once"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    invoke-virtual {p0}, Lelp;->d()V

    .line 75
    :cond_0
    iget-object v2, p0, Lelp;->b:Lejy;

    return-object v2

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "oa"

    const-string/jumbo v3, "reloadLastOAUndoObject"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    new-instance v0, Lelp$1;

    invoke-direct {v0, p0}, Lelp$1;-><init>(Lelp;)V

    .line 106
    .local v0, "callback":Lcmi;, "Lcmi<Leka;>;"
    const-class v2, Lcom/alibaba/android/rimet/biz/idl/service/IDLOneboxService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/rimet/biz/idl/service/IDLOneboxService;

    .line 107
    .local v1, "oneboxService":Lcom/alibaba/android/rimet/biz/idl/service/IDLOneboxService;
    invoke-interface {v1, v0}, Lcom/alibaba/android/rimet/biz/idl/service/IDLOneboxService;->getUserUndoCount(Liyv;)V

    .line 108
    return-void
.end method
