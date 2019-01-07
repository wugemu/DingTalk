.class public final Lakg;
.super Laka;
.source "UTOrangeConfMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lakg$a;
    }
.end annotation


# static fields
.field public static final b:Lalo;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ut_sample"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "ut_stream"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "ut_bussiness"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "utap_system"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "ap_alarm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "ap_counter"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "ap_stat"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "ut_realtime"

    aput-object v2, v0, v1

    sput-object v0, Lakg;->c:[Ljava/lang/String;

    .line 18
    new-instance v0, Lalo;

    invoke-direct {v0}, Lalo;-><init>()V

    sput-object v0, Lakg;->b:Lalo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Laka;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic a(Lakg;)V
    .locals 0
    .param p0, "x0"    # Lakg;

    .prologue
    .line 15
    invoke-super {p0}, Laka;->a()V

    return-void
.end method

.method static synthetic a(Lakg;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lakg;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-super {p0, p1}, Laka;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lakg;)V
    .locals 0
    .param p0, "x0"    # Lakg;

    .prologue
    .line 15
    invoke-super {p0}, Laka;->b()V

    return-void
.end method

.method static synthetic d()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lakg;->c:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 23
    :try_start_0
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v1

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v2

    .line 1305
    iget-object v2, v2, Lajw;->c:Landroid/content/Context;

    .line 23
    invoke-virtual {v1, v2}, Lcom/taobao/orange/OrangeConfig;->init(Landroid/content/Context;)V

    .line 24
    invoke-static {}, Lanh;->a()Lanh;

    new-instance v1, Lakg$a;

    invoke-direct {v1, p0}, Lakg$a;-><init>(Lakg;)V

    invoke-static {v1}, Lanh;->a(Ljava/lang/Runnable;)V

    .line 26
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v1

    sget-object v2, Lakg;->c:[Ljava/lang/String;

    new-instance v3, Lakg$1;

    invoke-direct {v3, p0}, Lakg$1;-><init>(Lakg;)V

    invoke-virtual {v1, v2, v3}, Lcom/taobao/orange/OrangeConfig;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
