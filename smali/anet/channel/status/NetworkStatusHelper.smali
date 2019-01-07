.class public final Lanet/channel/status/NetworkStatusHelper;
.super Ljava/lang/Object;
.source "NetworkStatusHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/status/NetworkStatusHelper$a;,
        Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lanet/channel/status/NetworkStatusHelper$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lanet/channel/status/NetworkStatusHelper;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static a()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Ljw;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const-class v1, Lanet/channel/status/NetworkStatusHelper;

    monitor-enter v1

    :try_start_0
    sput-object p0, Ljw;->a:Landroid/content/Context;

    .line 59
    invoke-static {}, Ljw;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit v1

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 1
    .param p0, "status"    # Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .prologue
    .line 75
    new-instance v0, Lanet/channel/status/NetworkStatusHelper$1;

    invoke-direct {v0, p0}, Lanet/channel/status/NetworkStatusHelper$1;-><init>(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V

    invoke-static {v0}, Lkq;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 90
    return-void
.end method

.method public static a(Lanet/channel/status/NetworkStatusHelper$a;)V
    .locals 1
    .param p0, "listener"    # Lanet/channel/status/NetworkStatusHelper$a;

    .prologue
    .line 67
    sget-object v0, Lanet/channel/status/NetworkStatusHelper;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Ljw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Lanet/channel/status/NetworkStatusHelper$a;)V
    .locals 1
    .param p0, "listener"    # Lanet/channel/status/NetworkStatusHelper$a;

    .prologue
    .line 71
    sget-object v0, Lanet/channel/status/NetworkStatusHelper;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Ljw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Ljw;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Ljw;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 118
    sget-object v2, Ljw;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sget-object v3, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq v2, v3, :cond_1

    .line 123
    .local v0, "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v1

    .line 122
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_1
    invoke-static {}, Ljw;->b()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 123
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static g()Z
    .locals 3

    .prologue
    .line 127
    sget-object v1, Ljw;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 128
    .local v1, "status":Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    sget-object v0, Ljw;->d:Ljava/lang/String;

    .line 129
    .local v0, "apn":Ljava/lang/String;
    sget-object v2, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->i()Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "wap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lic;->l()Lkw;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 132
    :cond_1
    const/4 v2, 0x1

    .line 134
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    sget-object v0, Ljw;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 140
    .local v0, "status":Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->i()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    const-string/jumbo v1, "proxy"

    .line 147
    :goto_0
    return-object v1

    .line 142
    :cond_0
    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljw;->d:Ljava/lang/String;

    const-string/jumbo v2, "wap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    const-string/jumbo v1, "wap"

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lic;->l()Lkw;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 145
    const-string/jumbo v1, "auth"

    goto :goto_0

    .line 147
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static i()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    sget-object v0, Ljw;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq v0, v1, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljw;->g:Landroid/util/Pair;

    goto :goto_0
.end method

.method public static j()V
    .locals 7

    .prologue
    .line 1093
    :try_start_0
    sget-object v0, Ljw;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 165
    .local v0, "networkStatus":Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 166
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\n\nNetwork detail***********************\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string/jumbo v3, "status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    const-string/jumbo v3, " apn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1106
    sget-object v4, Ljw;->d:Ljava/lang/String;

    .line 169
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    :goto_0
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    const-string/jumbo v3, " proxy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->i()Landroid/util/Pair;

    move-result-object v1

    .line 177
    .local v1, "proxyInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 178
    const-string/jumbo v3, " proxyHost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    const-string/jumbo v3, " proxyPort: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .end local v1    # "proxyInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    const-string/jumbo v3, "******************************************"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string/jumbo v3, "awcn.NetworkStatusHelper"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 171
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const-string/jumbo v3, " BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1110
    sget-object v4, Ljw;->f:Ljava/lang/String;

    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    const-string/jumbo v3, " SSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1114
    sget-object v4, Ljw;->e:Ljava/lang/String;

    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method static synthetic k()Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lanet/channel/status/NetworkStatusHelper;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method
