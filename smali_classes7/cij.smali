.class public Lcij;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Lcil;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "PrivateApi"
    }
.end annotation


# static fields
.field private static volatile b:Lcij;


# instance fields
.field a:Lcik;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static a()Lcij;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcij;->b:Lcij;

    if-nez v0, :cond_0

    .line 36
    const-class v1, Lcij;

    monitor-enter v1

    .line 37
    :try_start_0
    new-instance v0, Lcij;

    invoke-direct {v0}, Lcij;-><init>()V

    sput-object v0, Lcij;->b:Lcij;

    .line 38
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    sget-object v0, Lcij;->b:Lcij;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcij;)Z
    .locals 1
    .param p0, "x0"    # Lcij;

    .prologue
    .line 26
    invoke-static {}, Lcij;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcij;)V
    .locals 7
    .param p0, "x0"    # Lcij;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 26
    .line 3059
    iget-object v0, p0, Lcij;->a:Lcik;

    if-nez v0, :cond_0

    .line 3063
    :try_start_0
    new-instance v0, Lcik;

    invoke-direct {v0}, Lcik;-><init>()V

    iput-object v0, p0, Lcij;->a:Lcik;

    .line 3064
    const-string/jumbo v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3065
    const-string/jumbo v1, "currentActivityThread"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3066
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3067
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3068
    const-string/jumbo v2, "mH"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3069
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3070
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 3071
    const-class v1, Landroid/os/Handler;

    const-string/jumbo v2, "mCallback"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3072
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3073
    iget-object v2, p0, Lcij;->a:Lcik;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3077
    :cond_0
    :goto_0
    return-void

    .line 3074
    :catch_0
    move-exception v0

    .line 3075
    const-string/jumbo v1, "dingtalkbase"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "ActivityThread failed to hookHandler, error="

    aput-object v3, v2, v5

    .line 3076
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    .line 3075
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v6, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static f()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_0

    .line 106
    .local v1, "featureInterface":Lckd;
    :goto_0
    return v2

    .line 98
    .end local v1    # "featureInterface":Lckd;
    :cond_0
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    .line 1072
    iget-object v1, v4, Lcid;->b:Lckd;

    .line 99
    .restart local v1    # "featureInterface":Lckd;
    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {v1}, Lckd;->f()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "dingtalkbase"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "failed to get key isActivityThreadMonitorEnabled, error="

    aput-object v7, v6, v2

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    .line 103
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 106
    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 127
    if-eqz p1, :cond_0

    .line 129
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "args"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 130
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 131
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 132
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 133
    const-string/jumbo v3, "monitor"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "onServiceArgs intent="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 134
    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 133
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-static {}, Lcle;->a()Lcle;

    move-result-object v3

    const-string/jumbo v4, "onServiceArgs"

    invoke-virtual {v3, v4}, Lcle;->a(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcle;->a()Lcle;

    move-result-object v3

    invoke-virtual {v3}, Lcle;->b()V

    .line 143
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "monitor"

    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v5, "onServiceArgs get intent failed, error="

    aput-object v5, v4, v9

    .line 138
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 137
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v11, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 111
    invoke-static {}, Lcle;->a()Lcle;

    move-result-object v0

    const-string/jumbo v1, "onStopActivityShow"

    invoke-virtual {v0, v1}, Lcle;->a(Ljava/lang/String;)V

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 113
    invoke-static {}, Lcle;->a()Lcle;

    move-result-object v0

    invoke-virtual {v0}, Lcle;->b()V

    .line 115
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 154
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Bad notification posted from package"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    .line 2072
    iget-object v1, v3, Lcid;->b:Lckd;

    .line 156
    .local v1, "featureInterface":Lckd;
    if-eqz v1, :cond_1

    .line 157
    const-string/jumbo v3, "dingtalkbase"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "featureInterface "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Lckd;->j()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Lckd;->j()Z

    move-result v2

    .line 168
    .end local v1    # "featureInterface":Lckd;
    :cond_0
    :goto_0
    return v2

    .line 160
    .restart local v1    # "featureInterface":Lckd;
    :cond_1
    const-string/jumbo v3, "dingtalkbase"

    const/4 v4, 0x0

    const-string/jumbo v5, "featureInterface null, return false"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v1    # "featureInterface":Lckd;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "dingtalkbase"

    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v5, "failed to get key isNotificationCrashCatch, error="

    aput-object v5, v4, v2

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 164
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v8, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 119
    invoke-static {}, Lcle;->a()Lcle;

    move-result-object v0

    const-string/jumbo v1, "onStopActivityHide"

    invoke-virtual {v0, v1}, Lcle;->a(Ljava/lang/String;)V

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 121
    invoke-static {}, Lcle;->a()Lcle;

    move-result-object v0

    invoke-virtual {v0}, Lcle;->b()V

    .line 123
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 147
    invoke-static {}, Lcle;->a()Lcle;

    move-result-object v0

    const-string/jumbo v1, "onStopService"

    invoke-virtual {v0, v1}, Lcle;->a(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcle;->a()Lcle;

    move-result-object v0

    invoke-virtual {v0}, Lcle;->b()V

    .line 149
    return-void
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 173
    invoke-static {}, Lcle;->a()Lcle;

    move-result-object v0

    const-string/jumbo v1, "onSleeping"

    invoke-virtual {v0, v1}, Lcle;->a(Ljava/lang/String;)V

    .line 174
    return-void
.end method
