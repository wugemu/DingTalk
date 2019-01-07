.class public final Lcke;
.super Ljava/lang/Object;
.source "InterfaceFactory.java"


# static fields
.field private static a:Lcke;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcke;->b:Ljava/util/HashMap;

    .line 31
    return-void
.end method

.method public static declared-synchronized a()Lcke;
    .locals 2

    .prologue
    .line 34
    const-class v1, Lcke;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcke;->a:Lcke;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcke;

    invoke-direct {v0}, Lcke;-><init>()V

    sput-object v0, Lcke;->a:Lcke;

    .line 37
    :cond_0
    sget-object v0, Lcke;->a:Lcke;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 42
    .local v8, "tag":Ljava/lang/String;
    iget-object v9, p0, Lcke;->b:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 43
    .local v1, "baseInterface":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 80
    .end local v1    # "baseInterface":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 46
    .restart local v1    # "baseInterface":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcid;->a(Ljava/lang/String;)Lckb;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 47
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcid;->a(Ljava/lang/String;)Lckb;

    move-result-object v4

    .line 48
    .local v4, "impl":Lckb;
    instance-of v9, v4, Lckb;

    if-eqz v9, :cond_1

    move-object v9, v4

    .line 49
    check-cast v9, Lckb;

    .line 50
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v9, v10}, Lckb;->init(Landroid/app/Application;)V

    .line 52
    :cond_1
    iget-object v9, p0, Lcke;->b:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v4

    .line 53
    goto :goto_0

    .line 55
    .end local v4    # "impl":Lckb;
    :cond_2
    const/4 v7, 0x0

    .line 59
    .local v7, "result":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "classSimpleName":Ljava/lang/String;
    invoke-static {v2}, Lckc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "implClassName":Ljava/lang/String;
    if-nez v6, :cond_3

    move-object v1, v4

    .line 62
    goto :goto_0

    .line 64
    :cond_3
    invoke-static {v2}, Lckc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 70
    .local v5, "implClass":Ljava/lang/Class;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 71
    instance-of v9, v7, Lckb;

    if-eqz v9, :cond_4

    .line 72
    move-object v0, v7

    check-cast v0, Lckb;

    move-object v9, v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v9, v10}, Lckb;->init(Landroid/app/Application;)V

    .line 74
    :cond_4
    iget-object v9, p0, Lcke;->b:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v7    # "result":Ljava/lang/Object;
    :goto_1
    move-object v1, v7

    .line 80
    goto :goto_0

    .line 65
    .end local v2    # "classSimpleName":Ljava/lang/String;
    .end local v5    # "implClass":Ljava/lang/Class;
    .end local v6    # "implClassName":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 66
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v1, v4

    .line 67
    goto :goto_0

    .line 75
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .end local v7    # "result":Ljava/lang/Object;
    .restart local v2    # "classSimpleName":Ljava/lang/String;
    .restart local v5    # "implClass":Ljava/lang/Class;
    .restart local v6    # "implClassName":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 76
    .local v3, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 77
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v3

    .line 78
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method
