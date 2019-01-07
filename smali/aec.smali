.class public final Laec;
.super Ljava/lang/Object;
.source "OAuthConfigFactory.java"


# static fields
.field private static a:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/Integer;",
            "Laea;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    sput-object v0, Laec;->a:Lfk;

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Laea;
    .locals 6
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v4, Laec;

    monitor-enter v4

    .line 1017
    :try_start_0
    invoke-static {p0}, Lacn;->h(Ljava/lang/String;)Z

    move-result v3

    .line 1018
    if-eqz v3, :cond_0

    .line 1019
    const/4 v2, 0x1

    .line 28
    .local v2, "type":I
    :goto_0
    sget-object v3, Laec;->a:Lfk;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laea;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .local v0, "config":Laea;
    if-eqz v0, :cond_3

    move-object v1, v0

    .line 48
    .end local v0    # "config":Laea;
    .local v1, "config":Laea;
    :goto_1
    monitor-exit v4

    return-object v1

    .line 1022
    .end local v1    # "config":Laea;
    .end local v2    # "type":I
    :cond_0
    :try_start_1
    invoke-static {p0}, Lacn;->i(Ljava/lang/String;)Z

    move-result v3

    .line 1023
    if-eqz v3, :cond_1

    .line 1024
    const/4 v2, 0x2

    goto :goto_0

    .line 1027
    :cond_1
    invoke-static {p0}, Lacn;->j(Ljava/lang/String;)Z

    move-result v3

    .line 1028
    if-eqz v3, :cond_2

    .line 1029
    const/4 v2, 0x3

    goto :goto_0

    .line 1032
    :cond_2
    const/16 v2, 0xa

    goto :goto_0

    .line 33
    .restart local v0    # "config":Laea;
    .restart local v2    # "type":I
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 42
    new-instance v0, Laed;

    .end local v0    # "config":Laea;
    invoke-direct {v0}, Laed;-><init>()V

    .line 46
    .restart local v0    # "config":Laea;
    :goto_2
    sget-object v3, Laec;->a:Lfk;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 48
    .end local v0    # "config":Laea;
    .restart local v1    # "config":Laea;
    goto :goto_1

    .line 35
    .end local v1    # "config":Laea;
    .restart local v0    # "config":Laea;
    :pswitch_0
    new-instance v0, Ladz;

    .end local v0    # "config":Laea;
    invoke-direct {v0}, Ladz;-><init>()V

    .line 36
    .restart local v0    # "config":Laea;
    goto :goto_2

    .line 39
    :pswitch_1
    new-instance v0, Laeb;

    .end local v0    # "config":Laea;
    invoke-direct {v0}, Laeb;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .restart local v0    # "config":Laea;
    goto :goto_2

    .line 27
    .end local v0    # "config":Laea;
    .end local v2    # "type":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
