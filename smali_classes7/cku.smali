.class public Lcku;
.super Ljava/lang/Object;
.source "LunarFestivalInfoManager.java"


# static fields
.field private static volatile c:Lcku;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lckt;

.field private d:Lckv;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a()Lcku;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcku;->c:Lcku;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcku;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcku;->c:Lcku;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcku;

    invoke-direct {v0}, Lcku;-><init>()V

    sput-object v0, Lcku;->c:Lcku;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcku;->c:Lcku;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lckq;)V
    .locals 5
    .param p1, "calendarBean"    # Lckq;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 69
    if-nez p1, :cond_1

    .line 2044
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcku;->b:Lckt;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcku;->a:Ljava/lang/String;

    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 73
    :cond_2
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcku;->a:Ljava/lang/String;

    .line 74
    new-instance v0, Lckt;

    invoke-direct {v0}, Lckt;-><init>()V

    iput-object v0, p0, Lcku;->b:Lckt;

    .line 76
    :cond_3
    iget-object v0, p0, Lcku;->d:Lckv;

    if-nez v0, :cond_4

    .line 77
    new-instance v0, Lckv;

    iget-object v1, p0, Lcku;->b:Lckt;

    invoke-direct {v0, v1}, Lckv;-><init>(Lckt;)V

    iput-object v0, p0, Lcku;->d:Lckv;

    .line 79
    :cond_4
    iget-object v0, p0, Lcku;->d:Lckv;

    .line 1050
    iget v1, p1, Lckq;->a:I

    .line 1054
    iget v2, p1, Lckq;->b:I

    .line 2040
    iget v3, v0, Lckv;->a:I

    if-ne v1, v3, :cond_5

    iget v3, v0, Lckv;->b:I

    if-eq v2, v3, :cond_0

    .line 2043
    :cond_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_6

    .line 2044
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lckv$1;

    invoke-direct {v4, v0, v1, v2}, Lckv$1;-><init>(Lckv;II)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2054
    :cond_6
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    iget-object v4, v0, Lckv;->c:Lckv$a;

    invoke-virtual {v3, v4}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2055
    iput v1, v0, Lckv;->a:I

    .line 2056
    iput v2, v0, Lckv;->b:I

    .line 2057
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v0, v0, Lckv;->c:Lckv$a;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
