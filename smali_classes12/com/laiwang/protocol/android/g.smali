.class public Lcom/laiwang/protocol/android/g;
.super Ljava/lang/Object;
.source "SmartBuildConnectionInterval.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/g$a;
    }
.end annotation


# instance fields
.field private a:Lcom/laiwang/protocol/android/g$a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/laiwang/protocol/android/g$a;

    invoke-direct {v0, p0}, Lcom/laiwang/protocol/android/g$a;-><init>(Lcom/laiwang/protocol/android/g;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/g;->a:Lcom/laiwang/protocol/android/g$a;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/g;->b:Landroid/content/Context;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/laiwang/protocol/android/Foreground;->init(Landroid/app/Application;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    const-string/jumbo v0, "[build_connect] SmartBuildConnectionInterval reset"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/laiwang/protocol/android/g;->a:Lcom/laiwang/protocol/android/g$a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/laiwang/protocol/android/g$a;->b:I

    .line 37
    return-void
.end method

.method public b()I
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 44
    iget-object v6, p0, Lcom/laiwang/protocol/android/g;->b:Landroid/content/Context;

    const-string/jumbo v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 45
    .local v1, "curNetworkInfo":Landroid/net/NetworkInfo;
    const/4 v3, -0x1

    .line 46
    .local v3, "curType":I
    const/4 v2, 0x0

    .line 47
    .local v2, "curSubType":I
    const/4 v5, -0x1

    .line 48
    .local v5, "preType":I
    const/4 v4, 0x0

    .line 50
    .local v4, "preSubType":I
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 52
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 55
    :cond_0
    iget-object v6, p0, Lcom/laiwang/protocol/android/g;->a:Lcom/laiwang/protocol/android/g$a;

    iget-object v6, v6, Lcom/laiwang/protocol/android/g$a;->a:Landroid/net/NetworkInfo;

    if-eqz v6, :cond_1

    .line 56
    iget-object v6, p0, Lcom/laiwang/protocol/android/g;->a:Lcom/laiwang/protocol/android/g$a;

    iget-object v6, v6, Lcom/laiwang/protocol/android/g$a;->a:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .line 57
    iget-object v6, p0, Lcom/laiwang/protocol/android/g;->a:Lcom/laiwang/protocol/android/g$a;

    iget-object v6, v6, Lcom/laiwang/protocol/android/g$a;->a:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    .line 61
    :cond_1
    iget-object v6, p0, Lcom/laiwang/protocol/android/g;->a:Lcom/laiwang/protocol/android/g$a;

    iget-object v6, v6, Lcom/laiwang/protocol/android/g$a;->a:Landroid/net/NetworkInfo;

    if-nez v6, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-ne v3, v5, :cond_5

    if-ne v2, v4, :cond_5

    .line 63
    :cond_3
    iget-object v6, p0, Lcom/laiwang/protocol/android/g;->a:Lcom/laiwang/protocol/android/g$a;

    iget v7, v6, Lcom/laiwang/protocol/android/g$a;->b:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/laiwang/protocol/android/g$a;->b:I

    .line 70
    :goto_0
    const/4 v0, 0x6

    .line 71
    .local v0, "MAX_RETRY_TIME":I
    iget-object v6, p0, Lcom/laiwang/protocol/android/g;->a:Lcom/laiwang/protocol/android/g$a;

    iget-object v6, v6, Lcom/laiwang/protocol/android/g$a;->a:Landroid/net/NetworkInfo;

    if-nez v6, :cond_4

    .line 72
    const/4 v0, 0x3

    .line 74
    :cond_4
    const-string/jumbo v6, "[build_connect] failAndGetInterval fail times is %d if foreground %s network type is %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/laiwang/protocol/android/g;->a:Lcom/laiwang/protocol/android/g$a;

    iget v8, v8, Lcom/laiwang/protocol/android/g$a;->b:I

    .line 75
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-static {}, Lcom/laiwang/protocol/android/Foreground;->get()Lcom/laiwang/protocol/android/Foreground;

    move-result-object v9

    invoke-virtual {v9}, Lcom/laiwang/protocol/android/Foreground;->isForeground()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 74
    invoke-static {v6, v7}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-static {}, Lcom/laiwang/protocol/android/Foreground;->get()Lcom/laiwang/protocol/android/Foreground;

    move-result-object v6

    invoke-virtual {v6}, Lcom/laiwang/protocol/android/Foreground;->isForeground()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 77
    const/16 v6, 0x2710

    .line 81
    :goto_1
    return v6

    .line 66
    .end local v0    # "MAX_RETRY_TIME":I
    :cond_5
    iget-object v6, p0, Lcom/laiwang/protocol/android/g;->a:Lcom/laiwang/protocol/android/g$a;

    iput-object v1, v6, Lcom/laiwang/protocol/android/g$a;->a:Landroid/net/NetworkInfo;

    .line 67
    iget-object v6, p0, Lcom/laiwang/protocol/android/g;->a:Lcom/laiwang/protocol/android/g$a;

    iput v9, v6, Lcom/laiwang/protocol/android/g$a;->b:I

    goto :goto_0

    .line 78
    .restart local v0    # "MAX_RETRY_TIME":I
    :cond_6
    iget-object v6, p0, Lcom/laiwang/protocol/android/g;->a:Lcom/laiwang/protocol/android/g$a;

    iget v6, v6, Lcom/laiwang/protocol/android/g$a;->b:I

    if-ge v6, v0, :cond_7

    .line 79
    const/16 v6, 0x7530

    goto :goto_1

    .line 81
    :cond_7
    const v6, 0x493e0

    goto :goto_1
.end method
