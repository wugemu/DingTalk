.class public final Lisg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lisg;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static declared-synchronized a()Lisg;
    .locals 8

    .prologue
    .line 74
    const-class v1, Lisg;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lisg;->c:Lisg;

    if-nez v0, :cond_2

    .line 75
    new-instance v0, Lisg;

    invoke-direct {v0}, Lisg;-><init>()V

    sput-object v0, Lisg;->c:Lisg;

    .line 76
    invoke-static {}, Lisf;->a()Lisf;

    move-result-object v0

    .line 1042
    iget-object v0, v0, Lisf;->a:Landroid/content/Context;

    .line 77
    new-instance v2, Lcom/alipay/sdk/tid/a;

    invoke-direct {v2, v0}, Lcom/alipay/sdk/tid/a;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-static {v0}, Lisi;->a(Landroid/content/Context;)Lisi;

    move-result-object v3

    invoke-virtual {v3}, Lisi;->a()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-static {v0}, Lisi;->a(Landroid/content/Context;)Lisi;

    move-result-object v0

    invoke-virtual {v0}, Lisi;->b()Ljava/lang/String;

    move-result-object v4

    .line 81
    sget-object v0, Lisg;->c:Lisg;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/sdk/tid/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lisg;->a:Ljava/lang/String;

    .line 82
    sget-object v0, Lisg;->c:Lisg;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/sdk/tid/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lisg;->b:Ljava/lang/String;

    .line 83
    sget-object v0, Lisg;->c:Lisg;

    iget-object v0, v0, Lisg;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    sget-object v5, Lisg;->c:Lisg;

    .line 1103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 1104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_0

    .line 1105
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0xa

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_0
    iput-object v0, v5, Lisg;->b:Ljava/lang/String;

    .line 86
    :cond_1
    sget-object v0, Lisg;->c:Lisg;

    iget-object v0, v0, Lisg;->a:Ljava/lang/String;

    sget-object v5, Lisg;->c:Lisg;

    iget-object v5, v5, Lisg;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/alipay/sdk/tid/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_2
    sget-object v0, Lisg;->c:Lisg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
