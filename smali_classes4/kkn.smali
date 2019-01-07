.class public final Lkkn;
.super Ljava/lang/Object;
.source "XState.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lmtopsdk/common/util/AsyncServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmtopsdk/common/util/AsyncServiceBinder",
            "<",
            "Lkko;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lkkn;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 157
    sget-object v1, Lkkn;->b:Lmtopsdk/common/util/AsyncServiceBinder;

    if-eqz v1, :cond_1

    sget-object v1, Lkkn;->b:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v1}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 159
    :try_start_0
    sget-object v1, Lkkn;->b:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v1}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lkko;

    invoke-interface {v1, p0}, Lkko;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 174
    :goto_0
    return-object v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[getValue] getValue by key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " error ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[getValue]Attention :User XState Local Mode : key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    sget-object v2, Lkkn;->a:Ljava/util/Map;

    monitor-enter v2

    .line 166
    :try_start_1
    sget-object v1, Lkkn;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v2

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[getValue]Attention :User XState Local Mode : key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_2
    sget-object v2, Lkkn;->a:Ljava/util/Map;

    monitor-enter v2

    .line 174
    :try_start_2
    sget-object v1, Lkkn;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v2

    goto/16 :goto_0

    .line 175
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 76
    sget-object v1, Lkkn;->b:Lmtopsdk/common/util/AsyncServiceBinder;

    if-eqz v1, :cond_0

    sget-object v1, Lkkn;->b:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v1}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    :try_start_0
    sget-object v1, Lkkn;->b:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v1}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lkko;

    invoke-interface {v1}, Lkko;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    sget-object v2, Lkkn;->a:Ljava/util/Map;

    monitor-enter v2

    .line 84
    :try_start_1
    sget-object v1, Lkkn;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 85
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 79
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 80
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "mtopsdk.XState"

    const-string/jumbo v2, "[unInit] unInit error"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const-string/jumbo v0, "mtopsdk.XState"

    const-string/jumbo v1, "[init]init() error,context is null"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 1061
    :cond_0
    :try_start_0
    sget-object v1, Lkkn;->a:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    :try_start_1
    sget-object v0, Lkkn;->a:Ljava/util/Map;

    const-string/jumbo v2, "ua"

    invoke-static {p0}, Lmtopsdk/xstate/util/PhoneInfo;->getPhoneBaseInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object v0, Lkkn;->a:Ljava/util/Map;

    const-string/jumbo v2, "pv"

    const-string/jumbo v3, "5.0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    sget-object v0, Lkkn;->a:Ljava/util/Map;

    const-string/jumbo v2, "t_offset"

    const-string/jumbo v3, "0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    sget-object v0, Lkkn;->a:Ljava/util/Map;

    const-string/jumbo v2, "utdid"

    invoke-static {p0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :goto_1
    sget-object v0, Lkkn;->b:Lmtopsdk/common/util/AsyncServiceBinder;

    if-nez v0, :cond_1

    .line 39
    new-instance v0, Lkkn$1;

    const-class v1, Lkko;

    const-class v2, Lmtopsdk/xstate/XStateService;

    invoke-direct {v0, v1, v2}, Lkkn$1;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 53
    sput-object v0, Lkkn;->b:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v0, p0}, Lmtopsdk/common/util/AsyncServiceBinder;->asyncBind(Landroid/content/Context;)V

    goto :goto_0

    .line 1066
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    const-string/jumbo v1, "mtopsdk.XState"

    const-string/jumbo v2, "[initPhoneInfo]initPhoneInfo error"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 55
    :cond_1
    invoke-static {}, Lkkn;->e()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 205
    sget-object v1, Lkkn;->b:Lmtopsdk/common/util/AsyncServiceBinder;

    if-eqz v1, :cond_1

    sget-object v1, Lkkn;->b:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v1}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 207
    :try_start_0
    sget-object v1, Lkkn;->b:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v1}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lkko;

    invoke-interface {v1, p0, p1}, Lkko;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[setValue] setValue failed ,key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[setValue]Attention :User XState Local Mode: key:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    sget-object v2, Lkkn;->a:Ljava/util/Map;

    monitor-enter v2

    .line 214
    :try_start_1
    sget-object v1, Lkkn;->a:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[setValue]Attention :User XState Local Mode: key:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_2
    sget-object v2, Lkkn;->a:Ljava/util/Map;

    monitor-enter v2

    .line 222
    :try_start_2
    sget-object v1, Lkkn;->a:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string/jumbo v0, "uid"

    invoke-static {v0}, Lkkn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 181
    sget-object v1, Lkkn;->b:Lmtopsdk/common/util/AsyncServiceBinder;

    if-eqz v1, :cond_1

    sget-object v1, Lkkn;->b:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v1}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 183
    :try_start_0
    sget-object v1, Lkkn;->b:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v1}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lkko;

    invoke-interface {v1, p0}, Lkko;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 201
    :goto_0
    return-object v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[removeKey] removeKey by key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " error ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[removeKey]Attention :User XState Local Mode : key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    sget-object v2, Lkkn;->a:Ljava/util/Map;

    monitor-enter v2

    .line 190
    :try_start_1
    sget-object v1, Lkkn;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    monitor-exit v2

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 191
    .restart local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[removeKey]Attention :User XState Local Mode : key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_2
    sget-object v2, Lkkn;->a:Ljava/util/Map;

    monitor-enter v2

    .line 198
    :try_start_2
    sget-object v1, Lkkn;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string/jumbo v0, "t_offset"

    invoke-static {v0}, Lkkn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Z
    .locals 4

    .prologue
    .line 139
    const-string/jumbo v2, "AppBackground"

    invoke-static {v2}, Lkkn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 141
    .local v1, "returnValue":Z
    if-eqz v0, :cond_0

    .line 143
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 148
    :cond_0
    :goto_0
    return v1

    .line 145
    :catch_0
    move-exception v2

    const-string/jumbo v2, "mtopsdk.XState"

    const-string/jumbo v3, "[isAppBackground] parse KEY_APP_BACKGROUND error"

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static e()V
    .locals 5

    .prologue
    .line 233
    sget-object v3, Lkkn;->b:Lmtopsdk/common/util/AsyncServiceBinder;

    if-eqz v3, :cond_0

    sget-object v3, Lkkn;->b:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v3}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 235
    :try_start_0
    sget-object v3, Lkkn;->b:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v3}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lkko;

    invoke-interface {v3}, Lkko;->a()V

    .line 236
    sget-object v4, Lkkn;->a:Ljava/util/Map;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :try_start_1
    sget-object v3, Lkkn;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 238
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Lkkn;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lkkn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    .end local v2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "mtopsdk.XState"

    .end local v1    # "i$":Ljava/util/Iterator;
    const-string/jumbo v4, "[syncToRemote]service.init() error"

    invoke-static {v3, v4, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-void

    .line 240
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    sget-object v3, Lkkn;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 241
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
