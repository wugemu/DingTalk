.class public final Ljiy;
.super Ljiu;
.source "SpdyConnection.java"

# interfaces
.implements Lorg/android/spdy/SessionCb;
.implements Lorg/android/spdy/Spdycb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljiy$a;
    }
.end annotation


# instance fields
.field private A:Ljjd;

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:Ljiw;

.field private F:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:I

.field protected h:Ljava/lang/String;

.field protected i:I

.field private j:I

.field private k:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljiy$a;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lorg/android/spdy/SpdyAgent;

.field private r:Lorg/android/spdy/SpdySession;

.field private s:Ljava/lang/Object;

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Lcom/taobao/accs/ut/monitor/SessionMonitor;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 136
    invoke-direct {p0, p1, p2}, Ljiu;-><init>(Landroid/content/Context;I)V

    .line 80
    const/4 v0, 0x3

    iput v0, p0, Ljiy;->j:I

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljiy;->k:Ljava/util/LinkedList;

    .line 86
    iput-boolean v2, p0, Ljiy;->m:Z

    .line 92
    iput-object v1, p0, Ljiy;->p:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Ljiy;->q:Lorg/android/spdy/SpdyAgent;

    .line 96
    iput-object v1, p0, Ljiy;->r:Lorg/android/spdy/SpdySession;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljiy;->s:Ljava/lang/Object;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Ljiy;->x:I

    .line 110
    iput-object v1, p0, Ljiy;->y:Ljava/lang/String;

    .line 116
    iput-boolean v4, p0, Ljiy;->B:Z

    .line 118
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljiy;->C:Ljava/lang/String;

    .line 120
    iput-boolean v4, p0, Ljiy;->D:Z

    .line 137
    sget-object v0, Lcom/taobao/accs/client/AccsConfig;->d:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    sget-object v1, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;->SECURITY_TAOBAO:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    if-ne v0, v1, :cond_0

    .line 138
    new-instance v0, Ljiw;

    invoke-direct {p0}, Ljiy;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljiw;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljiy;->E:Ljiw;

    .line 1735
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lorg/android/spdy/SpdyAgent;->enableDebug:Z

    .line 1736
    iget-object v0, p0, Ljiy;->b:Landroid/content/Context;

    sget-object v1, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v2, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v0, v1, v2}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v0

    iput-object v0, p0, Ljiy;->q:Lorg/android/spdy/SpdyAgent;

    .line 1738
    invoke-static {}, Lorg/android/spdy/SpdyAgent;->checkLoadSucc()Z

    move-result v0

    .line 1739
    if-eqz v0, :cond_3

    .line 1740
    invoke-static {}, Ljjk;->a()V

    .line 1741
    iget-object v0, p0, Ljiy;->q:Lorg/android/spdy/SpdyAgent;

    new-instance v1, Ljiy$3;

    invoke-direct {v1, p0}, Ljiy$3;-><init>(Ljiy;)V

    invoke-virtual {v0, v1}, Lorg/android/spdy/SpdyAgent;->setAccsSslCallback(Lorg/android/spdy/AccsSSLCallback;)V

    .line 1747
    const/4 v0, 0x0

    invoke-static {v0}, Ljjn;->a(Z)Z

    move-result v0

    .line 1748
    if-nez v0, :cond_1

    .line 1749
    iget v0, p0, Ljiy;->a:I

    if-nez v0, :cond_2

    const-string/jumbo v0, "service"

    .line 1750
    :goto_0
    const-string/jumbo v1, "SpdyConnection"

    const-string/jumbo v2, "into--[setTnetLogPath]"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1751
    iget-object v1, p0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/taobao/accs/utl/UtilityImpl;->getTnetLogFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1752
    const-string/jumbo v1, "SpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "config tnet log path:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1753
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1754
    iget-object v1, p0, Ljiy;->q:Lorg/android/spdy/SpdyAgent;

    const/high16 v2, 0x500000

    const/4 v3, 0x5

    invoke-virtual {v1, v0, v2, v3}, Lorg/android/spdy/SpdyAgent;->configLogFile(Ljava/lang/String;II)I

    .line 1766
    :cond_1
    :goto_1
    return-void

    .line 1749
    :cond_2
    const-string/jumbo v0, "inapp"

    goto :goto_0

    .line 1759
    :cond_3
    const-string/jumbo v0, "SpdyConnection"

    const-string/jumbo v1, "loadSoFail"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1760
    invoke-static {}, Ljjk;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1764
    :catch_0
    move-exception v0

    .line 1765
    const-string/jumbo v1, "SpdyConnection"

    const-string/jumbo v2, "loadSoFail"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic a(Ljiy;J)J
    .locals 1
    .param p0, "x0"    # Ljiy;
    .param p1, "x1"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Ljiy;->t:J

    return-wide p1
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 621
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 622
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 623
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 624
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_0

    .line 625
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 622
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static synthetic a(Ljiy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljiy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Ljiy;->C:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ljiy;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Ljiy;

    .prologue
    .line 60
    iget-object v0, p0, Ljiy;->k:Ljava/util/LinkedList;

    return-object v0
.end method

.method private final a(Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 593
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 595
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 599
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 600
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 601
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 602
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 605
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Ljiy;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 606
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 609
    const-string/jumbo v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 610
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 612
    :cond_1
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string/jumbo v5, "SpdyConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\theader:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 618
    :cond_2
    return-object v3
.end method

.method static synthetic a(Ljiy;Lcom/taobao/accs/data/Message;)V
    .locals 5
    .param p0, "x0"    # Ljiy;
    .param p1, "x1"    # Lcom/taobao/accs/data/Message;

    .prologue
    .line 60
    .line 7310
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljiy;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 7311
    :cond_0
    :goto_0
    return-void

    .line 7314
    :cond_1
    iget-object v0, p0, Ljiy;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_7

    .line 7315
    iget-object v0, p0, Ljiy;->k:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/data/Message;

    .line 7316
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7318
    iget-object v2, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 7342
    :cond_2
    :goto_2
    const-string/jumbo v2, "SpdyConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "clearRepeatControlCommand message:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7314
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 7321
    :pswitch_0
    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 7323
    :cond_4
    iget-object v2, p0, Ljiy;->k:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 7328
    :pswitch_1
    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 7330
    :cond_5
    iget-object v2, p0, Ljiy;->k:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 7335
    :pswitch_2
    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 7337
    :cond_6
    iget-object v2, p0, Ljiy;->k:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 7346
    :cond_7
    iget-object v0, p0, Ljiy;->c:Ljip;

    if-eqz v0, :cond_0

    .line 7347
    iget-object v0, p0, Ljiy;->c:Ljip;

    invoke-virtual {v0, p1}, Ljip;->b(Lcom/taobao/accs/data/Message;)V

    goto/16 :goto_0

    .line 7318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Ljiy;Z)Z
    .locals 0
    .param p0, "x0"    # Ljiy;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Ljiy;->B:Z

    return p1
.end method

.method static synthetic b(Ljiy;)I
    .locals 1
    .param p0, "x0"    # Ljiy;

    .prologue
    .line 60
    iget v0, p0, Ljiy;->j:I

    return v0
.end method

.method static synthetic b(Ljiy;J)J
    .locals 1
    .param p0, "x0"    # Ljiy;
    .param p1, "x1"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Ljiy;->u:J

    return-wide p1
.end method

.method static synthetic b(Ljiy;Ljava/lang/String;)V
    .locals 12
    .param p0, "x0"    # Ljiy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v10, 0x1

    const-wide/16 v6, 0x0

    const/16 v1, 0x1bb

    const/4 v9, 0x0

    .line 60
    .line 7353
    iget v0, p0, Ljiy;->j:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Ljiy;->j:I

    if-ne v0, v10, :cond_1

    .line 7354
    :cond_0
    :goto_0
    return-void

    .line 7356
    :cond_1
    iget-object v0, p0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->isReleaseMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->isPreviewMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7360
    :cond_2
    iget-object v0, p0, Ljiy;->E:Ljiw;

    if-nez v0, :cond_3

    .line 7361
    new-instance v0, Ljiw;

    invoke-direct {p0}, Ljiy;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljiw;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljiy;->E:Ljiw;

    .line 7363
    :cond_3
    iget-object v0, p0, Ljiy;->E:Ljiw;

    invoke-direct {p0}, Ljiy;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljiw;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 7369
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f

    .line 7371
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljy;

    .line 7372
    if-eqz v0, :cond_4

    .line 7373
    const-string/jumbo v3, "SpdyConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Ljiy;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " connect strategys ip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljy;->getIp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " port:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljy;->getPort()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 7377
    :cond_5
    iget-boolean v0, p0, Ljiy;->D:Z

    if-eqz v0, :cond_7

    .line 7378
    iget-object v0, p0, Ljiy;->E:Ljiw;

    .line 8088
    iget v2, v0, Ljiw;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Ljiw;->a:I

    .line 8089
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 8090
    const-string/jumbo v2, "HttpDnsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateStrategyPos StrategyPos:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Ljiw;->a:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7379
    :cond_6
    iput-boolean v9, p0, Ljiy;->D:Z

    .line 7381
    :cond_7
    iget-object v0, p0, Ljiy;->E:Ljiw;

    .line 9064
    iget-object v2, v0, Ljiw;->b:Ljava/util/List;

    .line 9069
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 9070
    :cond_8
    const-string/jumbo v0, "HttpDnsProvider"

    const-string/jumbo v2, "strategys null or 0"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9071
    const/4 v0, 0x0

    move-object v2, v0

    .line 7382
    :goto_2
    if-nez v2, :cond_d

    invoke-direct {p0}, Ljiy;->k()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Ljiy;->f:Ljava/lang/String;

    .line 7383
    if-nez v2, :cond_e

    move v0, v1

    :goto_4
    iput v0, p0, Ljiy;->g:I

    .line 7384
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "dns"

    const-string/jumbo v2, "httpdns"

    invoke-static {v0, v1, v2, v6, v7}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 7385
    const-string/jumbo v0, "SpdyConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ljiy;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " get ip from amdc succ:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljiy;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljiy;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " originPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljiy;->E:Ljiw;

    .line 9095
    iget v2, v2, Ljiw;->a:I

    .line 7385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7397
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljiy;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljiy;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/accs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljiy;->n:Ljava/lang/String;

    .line 7406
    :goto_6
    const-string/jumbo v0, "SpdyConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ljiy;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " connect URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljiy;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljiy;->F:Ljava/lang/String;

    .line 7409
    iget-object v0, p0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    if-eqz v0, :cond_9

    .line 7411
    invoke-static {}, Lih;->a()Lij;

    move-result-object v0

    iget-object v1, p0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-interface {v0, v1}, Lij;->a(Lanet/channel/statist/StatObject;)V

    .line 7413
    :cond_9
    new-instance v0, Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-direct {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;-><init>()V

    iput-object v0, p0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    .line 7414
    iget-object v1, p0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget v0, p0, Ljiy;->a:I

    if-nez v0, :cond_14

    const-string/jumbo v0, "service"

    :goto_7
    invoke-virtual {v1, v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setConnectType(Ljava/lang/String;)V

    .line 7419
    iget-object v0, p0, Ljiy;->q:Lorg/android/spdy/SpdyAgent;

    if-eqz v0, :cond_0

    .line 7421
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljiy;->v:J

    .line 7422
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Ljiy;->w:J

    .line 7423
    iget-object v0, p0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getProxyHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljiy;->h:Ljava/lang/String;

    .line 7424
    iget-object v0, p0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getProxyPort(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Ljiy;->i:I

    .line 7426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljiy;->t:J

    .line 7427
    iget-object v0, p0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onStartConnect()V

    .line 7429
    iget-object v11, p0, Ljiy;->s:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7432
    :try_start_1
    iget-object v0, p0, Ljiy;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget v0, p0, Ljiy;->i:I

    if-ltz v0, :cond_15

    iget-boolean v0, p0, Ljiy;->B:Z

    if-eqz v0, :cond_15

    .line 7433
    const-string/jumbo v0, "SpdyConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ljiy;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " connect with proxy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljiy;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljiy;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7434
    new-instance v0, Lorg/android/spdy/SessionInfo;

    iget-object v1, p0, Ljiy;->f:Ljava/lang/String;

    iget v2, p0, Ljiy;->g:I

    invoke-direct {p0}, Ljiy;->k()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljiy;->h:Ljava/lang/String;

    iget v5, p0, Ljiy;->i:I

    iget-object v6, p0, Ljiy;->F:Ljava/lang/String;

    const/16 v8, 0x1082

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lorg/android/spdy/SessionInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lorg/android/spdy/SessionCb;I)V

    .line 7435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljiy;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljiy;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljiy;->C:Ljava/lang/String;

    move-object v1, v0

    .line 9465
    :goto_8
    sget-object v0, Lcom/taobao/accs/client/AccsConfig;->d:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    sget-object v2, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;->SECURITY_OFF:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    if-ne v0, v2, :cond_16

    move v0, v10

    .line 9467
    :goto_9
    iget-object v2, p0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->isDebugMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 9468
    if-eqz v0, :cond_17

    move v0, v9

    .line 7441
    :goto_a
    invoke-virtual {v1, v0}, Lorg/android/spdy/SessionInfo;->setPubKeySeqNum(I)V

    .line 7443
    const v0, 0x9c40

    invoke-virtual {v1, v0}, Lorg/android/spdy/SessionInfo;->setConnectionTimeoutMs(I)V

    .line 7445
    iget-object v0, p0, Ljiy;->q:Lorg/android/spdy/SpdyAgent;

    invoke-virtual {v0, v1}, Lorg/android/spdy/SpdyAgent;->createSession(Lorg/android/spdy/SessionInfo;)Lorg/android/spdy/SpdySession;

    move-result-object v0

    iput-object v0, p0, Ljiy;->r:Lorg/android/spdy/SpdySession;

    .line 7447
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljiy;->c(I)V

    .line 7448
    iget-object v0, p0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connection_stop_date:J

    .line 7449
    iget-object v0, p0, Ljiy;->s:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7456
    :goto_b
    :try_start_2
    monitor-exit v11

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 7457
    :catch_0
    move-exception v0

    .line 7458
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 9074
    :cond_a
    iget v3, v0, Ljiw;->a:I

    if-ltz v3, :cond_b

    iget v3, v0, Ljiw;->a:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_c

    .line 9075
    :cond_b
    iput v9, v0, Ljiw;->a:I

    .line 9078
    :cond_c
    iget v0, v0, Ljiw;->a:I

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljy;

    move-object v2, v0

    .line 9080
    goto/16 :goto_2

    .line 7382
    :cond_d
    invoke-interface {v2}, Ljy;->getIp()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 7383
    :cond_e
    invoke-interface {v2}, Ljy;->getPort()I

    move-result v0

    goto/16 :goto_4

    .line 7387
    :cond_f
    if-eqz p1, :cond_11

    .line 7388
    iput-object p1, p0, Ljiy;->f:Ljava/lang/String;

    .line 7393
    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_10

    const/16 v1, 0x50

    :cond_10
    iput v1, p0, Ljiy;->g:I

    .line 7394
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "dns"

    const-string/jumbo v2, "localdns"

    invoke-static {v0, v1, v2, v6, v7}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 7395
    const-string/jumbo v0, "SpdyConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ljiy;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " get ip from amdc fail!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 7390
    :cond_11
    invoke-direct {p0}, Ljiy;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljiy;->f:Ljava/lang/String;

    goto :goto_c

    .line 7400
    :cond_12
    sget-object v0, Lcom/taobao/accs/client/AccsConfig;->c:[[Ljava/lang/String;

    iget-object v2, p0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->getMode(Landroid/content/Context;)I

    move-result v2

    aget-object v0, v0, v2

    .line 7401
    if-eqz v0, :cond_13

    array-length v2, v0

    if-lez v2, :cond_13

    aget-object v0, v0, v9

    :goto_d
    iput-object v0, p0, Ljiy;->f:Ljava/lang/String;

    .line 7402
    iput v1, p0, Ljiy;->g:I

    .line 7403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljiy;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljiy;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/accs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljiy;->n:Ljava/lang/String;

    goto/16 :goto_6

    .line 7401
    :cond_13
    invoke-direct {p0}, Ljiy;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 7414
    :cond_14
    const-string/jumbo v0, "inapp"

    goto/16 :goto_7

    .line 7437
    :cond_15
    :try_start_4
    const-string/jumbo v0, "SpdyConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ljiy;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " connect normal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7438
    new-instance v0, Lorg/android/spdy/SessionInfo;

    iget-object v1, p0, Ljiy;->f:Ljava/lang/String;

    iget v2, p0, Ljiy;->g:I

    invoke-direct {p0}, Ljiy;->k()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Ljiy;->F:Ljava/lang/String;

    const/16 v8, 0x1082

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lorg/android/spdy/SessionInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lorg/android/spdy/SessionCb;I)V

    .line 7439
    const-string/jumbo v1, ""

    iput-object v1, p0, Ljiy;->C:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_8

    :cond_16
    move v0, v9

    .line 9465
    goto/16 :goto_9

    :cond_17
    move v0, v9

    .line 9471
    goto/16 :goto_a

    .line 9476
    :cond_18
    sget v2, Ljim;->j:I

    if-lez v2, :cond_19

    .line 9477
    sget v0, Ljim;->j:I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_a

    .line 9480
    :cond_19
    if-eqz v0, :cond_1a

    .line 9481
    const/4 v0, 0x4

    goto/16 :goto_a

    .line 9483
    :cond_1a
    const/4 v0, 0x3

    goto/16 :goto_a

    .line 7450
    :catch_1
    move-exception v0

    .line 7451
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_b

    .line 7452
    :catch_2
    move-exception v0

    .line 7453
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7454
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljiy;->B:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_b
.end method

.method static synthetic b(Ljiy;Z)Z
    .locals 1
    .param p0, "x0"    # Ljiy;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljiy;->D:Z

    return v0
.end method

.method static synthetic c(Ljiy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljiy;

    .prologue
    .line 60
    iget-object v0, p0, Ljiy;->F:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized c(I)V
    .locals 6
    .param p1, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 656
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "SpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Ljiy;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " notifyStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljiy;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    iget v1, p0, Ljiy;->j:I

    if-ne p1, v1, :cond_0

    .line 658
    const-string/jumbo v1, "SpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Ljiy;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ignore notifyStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    :goto_0
    monitor-exit p0

    return-void

    .line 661
    :cond_0
    :try_start_1
    iput p1, p0, Ljiy;->j:I

    .line 663
    packed-switch p1, :pswitch_data_0

    .line 723
    :goto_1
    :pswitch_0
    const-string/jumbo v1, "SpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Ljiy;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " notifyStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljiy;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " handled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 656
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 668
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Ljiy;->F:Ljava/lang/String;

    .line 669
    .local v0, "sessionId":Ljava/lang/String;
    invoke-static {}, Ljin;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Ljiy$2;

    invoke-direct {v2, p0, v0}, Ljiy$2;-><init>(Ljiy;Ljava/lang/String;)V

    const-wide/32 v4, 0x1d4c0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    .line 687
    .end local v0    # "sessionId":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v1}, Ljiv;->a(Landroid/content/Context;)Ljiv;

    move-result-object v1

    .line 3137
    const/4 v2, 0x0

    iput v2, v1, Ljiv;->a:I

    .line 3138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Ljiv;->b:J

    .line 3139
    const-string/jumbo v1, "HeartbeatManager"

    const-string/jumbo v2, "resetLevel"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    invoke-direct {p0}, Ljiy;->j()V

    .line 693
    iget-object v2, p0, Ljiy;->s:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 695
    :try_start_3
    iget-object v1, p0, Ljiy;->s:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 698
    :goto_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 699
    :try_start_5
    iget-object v2, p0, Ljiy;->k:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 701
    :try_start_6
    iget-object v1, p0, Ljiy;->k:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 704
    :goto_3
    :try_start_7
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 698
    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1

    .line 709
    :pswitch_3
    invoke-direct {p0}, Ljiy;->j()V

    .line 710
    iget-object v1, p0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v1}, Ljiv;->a(Landroid/content/Context;)Ljiv;

    move-result-object v1

    .line 4117
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Ljiv;->b:J

    .line 4118
    const-string/jumbo v1, "HeartbeatManager"

    const-string/jumbo v2, "onNetworkFail"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    iget-object v2, p0, Ljiy;->s:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 713
    :try_start_b
    iget-object v1, p0, Ljiy;->s:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 716
    :goto_4
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 717
    :try_start_d
    iget-object v1, p0, Ljiy;->c:Ljip;

    const/16 v2, -0xa

    invoke-virtual {v1, v2}, Ljip;->a(I)V

    .line 718
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljiy;->a(ZZ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 716
    :catchall_3
    move-exception v1

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    .line 663
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Ljiy;Z)V
    .locals 0
    .param p0, "x0"    # Ljiy;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0}, Ljiy;->j()V

    return-void
.end method

.method static synthetic d(Ljiy;)Lcom/taobao/accs/ut/monitor/SessionMonitor;
    .locals 1
    .param p0, "x0"    # Ljiy;

    .prologue
    .line 60
    iget-object v0, p0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    return-object v0
.end method

.method private d(I)V
    .locals 12
    .param p1, "errorcode"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v11, 0x1

    .line 1183
    const/4 v0, 0x0

    iput-object v0, p0, Ljiy;->p:Ljava/lang/String;

    .line 1184
    invoke-virtual {p0}, Ljiy;->i()V

    .line 1186
    const/4 v8, 0x0

    .line 1187
    .local v8, "retryTimes":I
    iget-object v0, p0, Ljiy;->l:Ljiy$a;

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Ljiy;->l:Ljiy$a;

    iget v8, v0, Ljiy$a;->a:I

    .line 1190
    :cond_0
    iget-object v0, p0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "code not 200 is"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 1191
    iput-boolean v11, p0, Ljiy;->D:Z

    .line 1192
    iget v0, p0, Ljiy;->a:I

    if-nez v0, :cond_1

    const-string/jumbo v7, "service"

    .line 1193
    .local v7, "connectType":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljjo;->a()Ljjo;

    move-result-object v0

    const v1, 0x101d1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CONNECTED NO 200 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xd5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Ljiy;->o:Ljava/lang/String;

    aput-object v10, v6, v9

    iget-object v9, p0, Ljiy;->C:Ljava/lang/String;

    aput-object v9, v6, v11

    invoke-virtual/range {v0 .. v6}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 1194
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "auth"

    const-string/jumbo v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    return-void

    .line 1192
    .end local v7    # "connectType":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "inapp"

    goto :goto_0
.end method

.method static synthetic e(Ljiy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljiy;

    .prologue
    .line 60
    invoke-direct {p0}, Ljiy;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Ljiy;)Z
    .locals 1
    .param p0, "x0"    # Ljiy;

    .prologue
    .line 60
    iget-boolean v0, p0, Ljiy;->m:Z

    return v0
.end method

.method static synthetic g(Ljiy;)J
    .locals 2
    .param p0, "x0"    # Ljiy;

    .prologue
    .line 60
    iget-wide v0, p0, Ljiy;->t:J

    return-wide v0
.end method

.method static synthetic h(Ljiy;)Lorg/android/spdy/SpdySession;
    .locals 1
    .param p0, "x0"    # Ljiy;

    .prologue
    .line 60
    iget-object v0, p0, Ljiy;->r:Lorg/android/spdy/SpdySession;

    return-object v0
.end method

.method private declared-synchronized j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 632
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljiy;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 653
    :goto_0
    monitor-exit p0

    return-void

    .line 635
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljiy;->t:J

    .line 636
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Ljiy;->u:J

    .line 652
    iget-object v0, p0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v0}, Ljiv;->a(Landroid/content/Context;)Ljiv;

    move-result-object v0

    invoke-virtual {v0}, Ljiv;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 727
    sget-object v1, Lcom/taobao/accs/client/AccsConfig;->b:[Ljava/lang/String;

    iget-object v2, p0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->getMode(Landroid/content/Context;)I

    move-result v2

    aget-object v0, v1, v2

    .line 728
    .local v0, "result":Ljava/lang/String;
    const-string/jumbo v1, "SpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Ljiy;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " getDefaultHost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 168
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljiy;->m:Z

    .line 169
    iget-object v0, p0, Ljiy;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljiy;->a(Landroid/content/Context;)V

    .line 170
    iget-object v0, p0, Ljiy;->l:Ljiy$a;

    if-nez v0, :cond_0

    .line 171
    const-string/jumbo v0, "SpdyConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ljiy;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " start thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    new-instance v0, Ljiy$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljiy$a;-><init>(Ljiy;B)V

    iput-object v0, p0, Ljiy;->l:Ljiy$a;

    .line 173
    iget-object v0, p0, Ljiy;->l:Ljiy$a;

    invoke-virtual {v0}, Ljiy$a;->start()V

    .line 175
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljiy;->a(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1287
    invoke-super {p0, p1}, Ljiu;->a(Landroid/content/Context;)V

    .line 1288
    invoke-static {}, Lcom/taobao/accs/client/AccsConfig;->a()V

    .line 1289
    const/4 v0, 0x0

    invoke-static {v0}, Lic;->a(Z)V

    .line 1290
    return-void
.end method

.method protected final a(Lcom/taobao/accs/data/Message;Z)V
    .locals 8
    .param p1, "message"    # Lcom/taobao/accs/data/Message;
    .param p2, "connectIfNeeded"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 179
    iget-boolean v2, p0, Ljiy;->m:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    .line 180
    :cond_0
    const-string/jumbo v2, "SpdyConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "not running or msg null! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Ljiy;->m:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    :cond_1
    :goto_0
    return-void

    .line 184
    :cond_2
    :try_start_0
    invoke-static {}, Ljin;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_3

    .line 185
    new-instance v2, Ljava/util/concurrent/RejectedExecutionException;

    const-string/jumbo v3, "accs"

    invoke-direct {v2, v3}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 242
    :catch_0
    move-exception v2

    iget-object v2, p0, Ljiy;->c:Ljip;

    const v3, 0x11178

    invoke-virtual {v2, p1, v3}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    .line 243
    const-string/jumbo v2, "SpdyConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Ljiy;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "send queue full count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljin;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    :cond_3
    :try_start_1
    invoke-static {}, Ljin;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Ljiy$1;

    invoke-direct {v3, p0, p1, p2}, Ljiy$1;-><init>(Ljiy;Lcom/taobao/accs/data/Message;Z)V

    iget-wide v4, p1, Lcom/taobao/accs/data/Message;->delyTime:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 226
    .local v0, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 229
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->isControlFrame()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 230
    iget-object v2, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljiy;->a(Ljava/lang/String;)Z

    .line 232
    :cond_4
    iget-object v2, p0, Ljiy;->c:Ljip;

    iget-object v2, v2, Ljip;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_5
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 236
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    iget-object v3, p0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDeviceId(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    iget v3, p0, Ljiy;->a:I

    invoke-virtual {v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setConnType(I)V

    .line 238
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onEnterQueueData()V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 244
    .end local v0    # "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    :catch_1
    move-exception v1

    .line 245
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Ljiy;->c:Ljip;

    const/4 v3, -0x8

    invoke-virtual {v2, p1, v3}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    .line 246
    const-string/jumbo v2, "SpdyConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Ljiy;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "send error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1225
    const/4 v1, 0x4

    :try_start_0
    invoke-direct {p0, v1}, Ljiy;->c(I)V

    .line 1226
    invoke-virtual {p0}, Ljiy;->i()V

    .line 1227
    iget-object v1, p0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v1, p2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    :goto_0
    return-void

    .line 1228
    :catch_0
    move-exception v0

    .line 1229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(ZZ)V
    .locals 4
    .param p1, "force"    # Z
    .param p2, "dely"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 269
    const-string/jumbo v0, "SpdyConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "try ping, force:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    iget v0, p0, Ljiy;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 271
    const-string/jumbo v0, "SpdyConnection"

    const-string/jumbo v1, "INAPP, skip"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    :goto_0
    return-void

    .line 274
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    :goto_1
    double-to-int v0, v0

    invoke-static {p1, v0}, Lcom/taobao/accs/data/Message;->BuildPing(ZI)Lcom/taobao/accs/data/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljiy;->b(Lcom/taobao/accs/data/Message;Z)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 6
    .param p1, "customDataId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1240
    const/4 v2, 0x0

    .line 1241
    .local v2, "result":Z
    iget-object v4, p0, Ljiy;->k:Ljava/util/LinkedList;

    monitor-enter v4

    .line 1242
    :try_start_0
    iget-object v3, p0, Ljiy;->k:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1243
    iget-object v3, p0, Ljiy;->k:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/data/Message;

    .line 1244
    .local v1, "msg":Lcom/taobao/accs/data/Message;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    iget-object v3, v1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1248
    iget-object v3, p0, Ljiy;->k:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 1249
    const/4 v2, 0x1

    .line 1253
    .end local v1    # "msg":Lcom/taobao/accs/data/Message;
    :cond_0
    monitor-exit v4

    .line 1255
    return v2

    .line 1242
    .restart local v1    # "msg":Lcom/taobao/accs/data/Message;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1253
    .end local v0    # "i":I
    .end local v1    # "msg":Lcom/taobao/accs/data/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 980
    iget-boolean v0, p0, Ljiy;->m:Z

    return v0
.end method

.method public final bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V
    .locals 3
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "uniId"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1219
    const-string/jumbo v0, "SpdyConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bioPingRecvCallback uniId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1220
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1213
    iput-boolean v0, p0, Ljiy;->B:Z

    .line 1214
    iput v0, p0, Ljiy;->d:I

    .line 1215
    return-void
.end method

.method public final d()Ljjd;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 294
    iget-object v0, p0, Ljiy;->A:Ljjd;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljjd;

    invoke-direct {v0}, Ljjd;-><init>()V

    iput-object v0, p0, Ljiy;->A:Ljjd;

    .line 297
    :cond_0
    iget-object v0, p0, Ljiy;->A:Ljjd;

    iget v2, p0, Ljiy;->a:I

    iput v2, v0, Ljjd;->c:I

    .line 298
    iget-object v0, p0, Ljiy;->A:Ljjd;

    iget-object v2, p0, Ljiy;->k:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iput v2, v0, Ljjd;->e:I

    .line 299
    iget-object v0, p0, Ljiy;->A:Ljjd;

    iget-object v2, p0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v0, Ljjd;->j:Z

    .line 300
    iget-object v0, p0, Ljiy;->A:Ljjd;

    iget-object v2, p0, Ljiy;->C:Ljava/lang/String;

    iput-object v2, v0, Ljjd;->g:Ljava/lang/String;

    .line 301
    iget-object v0, p0, Ljiy;->A:Ljjd;

    iget v2, p0, Ljiy;->j:I

    iput v2, v0, Ljjd;->b:I

    .line 302
    iget-object v2, p0, Ljiy;->A:Ljjd;

    iget-object v0, p0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v2, Ljjd;->d:Z

    .line 303
    iget-object v0, p0, Ljiy;->A:Ljjd;

    .line 1980
    iget-boolean v2, p0, Ljiy;->m:Z

    .line 303
    iput-boolean v2, v0, Ljjd;->k:Z

    .line 304
    iget-object v0, p0, Ljiy;->A:Ljjd;

    iget-object v2, p0, Ljiy;->c:Ljip;

    if-nez v2, :cond_2

    :goto_1
    iput v1, v0, Ljjd;->f:I

    .line 305
    iget-object v0, p0, Ljiy;->A:Ljjd;

    iget-object v1, p0, Ljiy;->o:Ljava/lang/String;

    iput-object v1, v0, Ljjd;->h:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Ljiy;->A:Ljjd;

    return-object v0

    .line 302
    :cond_1
    iget-object v0, p0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getRet()Z

    move-result v0

    goto :goto_0

    .line 304
    :cond_2
    iget-object v1, p0, Ljiy;->c:Ljip;

    .line 2738
    iget-object v1, v1, Ljip;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    goto :goto_1
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1277
    const-string/jumbo v0, "SpdyConnection"

    return-object v0
.end method

.method public final f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 252
    invoke-super {p0}, Ljiu;->f()V

    .line 253
    iput-boolean v3, p0, Ljiy;->m:Z

    .line 254
    invoke-virtual {p0}, Ljiy;->i()V

    .line 255
    iget-object v0, p0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    const-string/jumbo v1, "shut down"

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 258
    :cond_0
    iget-object v1, p0, Ljiy;->k:Ljava/util/LinkedList;

    monitor-enter v1

    .line 260
    :try_start_0
    iget-object v0, p0, Ljiy;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    const-string/jumbo v0, "SpdyConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ljiy;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "shut down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    return-void

    .line 263
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final getSSLMeta(Lorg/android/spdy/SpdySession;)[B
    .locals 2
    .param p1, "session"    # Lorg/android/spdy/SpdySession;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1260
    iget-object v0, p0, Ljiy;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llb;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 284
    const-string/jumbo v0, "SpdyConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ljiy;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " force close!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    :try_start_0
    iget-object v0, p0, Ljiy;->r:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->closeSession()I

    .line 287
    iget-object v0, p0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ljiy;->c(I)V

    .line 291
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final putSSLMeta(Lorg/android/spdy/SpdySession;[B)I
    .locals 2
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "sslMeta"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1265
    iget-object v0, p0, Ljiy;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Llb;->b(Landroid/content/Context;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public final spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "sessionUserData"    # Ljava/lang/Object;
    .param p3, "dataId"    # I
    .param p4, "error"    # I

    .prologue
    .line 1283
    invoke-virtual {p0, p3}, Ljiy;->b(I)V

    .line 1284
    return-void
.end method

.method public final spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
    .locals 14
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "sessionUserData"    # Ljava/lang/Object;
    .param p3, "node"    # I
    .param p4, "frameType"    # I
    .param p5, "flags"    # I
    .param p6, "length"    # I
    .param p7, "data"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1094
    invoke-direct {p0}, Ljiy;->j()V

    .line 1096
    const-string/jumbo v10, "SpdyConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Ljiy;->a:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " onFrame, type:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " len:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p7

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1098
    const-string/jumbo v7, ""

    .line 1100
    .local v7, "str":Ljava/lang/String;
    sget-object v10, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v10}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1101
    move-object/from16 v0, p7

    array-length v10, v0

    const/16 v11, 0x200

    if-ge v10, v11, :cond_1

    .line 1102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1103
    .local v8, "time":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p7

    array-length v10, v0

    if-ge v3, v10, :cond_0

    .line 1104
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-byte v11, p7, v3

    and-int/lit16 v11, v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1103
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1106
    :cond_0
    const-string/jumbo v10, "SpdyConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " log time:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1111
    .end local v3    # "i":I
    .end local v8    # "time":J
    :cond_1
    const/16 v10, 0xc8

    move/from16 v0, p4

    if-ne v0, v10, :cond_4

    .line 1113
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1114
    .local v4, "receiveTime":J
    iget-object v10, p0, Ljiy;->c:Ljip;

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljip;->a([B)V

    .line 1115
    iget-object v10, p0, Ljiy;->c:Ljip;

    .line 6855
    iget-object v6, v10, Ljip;->d:Ljje;

    .line 1116
    .local v6, "stat":Ljje;
    if-eqz v6, :cond_2

    .line 1117
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Ljje;->c:Ljava/lang/String;

    .line 1118
    iget v10, p0, Ljiy;->a:I

    if-nez v10, :cond_3

    const-string/jumbo v10, "service"

    :goto_1
    iput-object v10, v6, Ljje;->g:Ljava/lang/String;

    .line 1119
    invoke-virtual {v6}, Ljje;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    .end local v4    # "receiveTime":J
    .end local v6    # "stat":Ljje;
    :cond_2
    :goto_2
    const-string/jumbo v10, "SpdyConnection"

    const-string/jumbo v11, "try handle msg"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1126
    invoke-virtual {p0}, Ljiy;->h()V

    .line 1130
    :goto_3
    const-string/jumbo v10, "SpdyConnection"

    const-string/jumbo v11, "spdyCustomControlFrameRecvCallback"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1131
    return-void

    .line 1118
    .restart local v4    # "receiveTime":J
    .restart local v6    # "stat":Ljje;
    :cond_3
    :try_start_1
    const-string/jumbo v10, "inapp"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1121
    .end local v4    # "receiveTime":J
    .end local v6    # "stat":Ljje;
    :catch_0
    move-exception v2

    .line 1122
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "SpdyConnection"

    const-string/jumbo v11, "onDataReceive "

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v2, v12}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1123
    invoke-static {}, Ljjo;->a()Ljjo;

    const v10, 0x101d1

    const-string/jumbo v11, "SERVICE_DATA_RECEIVE"

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1128
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    const-string/jumbo v10, "SpdyConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Ljiy;->a:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " drop frame len:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p7

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public final spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJLorg/android/spdy/SpdyByteArray;Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg0"    # Lorg/android/spdy/SpdySession;
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # J
    .param p5, "arg3"    # Lorg/android/spdy/SpdyByteArray;
    .param p6, "arg4"    # Ljava/lang/Object;

    .prologue
    .line 1271
    const-string/jumbo v0, "SpdyConnection"

    const-string/jumbo v1, "spdyDataChunkRecvCB"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1273
    return-void
.end method

.method public final spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V
    .locals 3
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "fin"    # Z
    .param p3, "streamId"    # J
    .param p5, "length"    # I
    .param p6, "streamUserData"    # Ljava/lang/Object;

    .prologue
    .line 1206
    const-string/jumbo v0, "SpdyConnection"

    const-string/jumbo v1, "spdyDataRecvCallback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1207
    return-void
.end method

.method public final spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V
    .locals 3
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "fin"    # Z
    .param p3, "streamId"    # J
    .param p5, "length"    # I
    .param p6, "streamUserData"    # Ljava/lang/Object;

    .prologue
    .line 1200
    const-string/jumbo v0, "SpdyConnection"

    const-string/jumbo v1, "spdyDataSendCallback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1201
    return-void
.end method

.method public final spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;Ljava/lang/Object;)V
    .locals 16
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "streamId"    # J
    .param p5, "streamUserData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/android/spdy/SpdySession;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1152
    .local p4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljiy;->t:J

    .line 1153
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljiy;->u:J

    .line 1155
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljiy;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    .line 1156
    .local v11, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, ":status"

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1157
    .local v12, "httpStatusCode":I
    const-string/jumbo v2, "SpdyConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v4, v0, Ljiy;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " spdyOnStreamResponse httpStatusCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1158
    const/16 v2, 0xc8

    if-ne v12, v2, :cond_3

    .line 1159
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljiy;->c(I)V

    .line 1160
    const-string/jumbo v2, "x-at"

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1161
    .local v13, "serverToken":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1162
    const-string/jumbo v2, "x-at"

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Ljiy;->p:Ljava/lang/String;

    .line 1166
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget-wide v2, v2, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connection_stop_date:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v5, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget-wide v6, v5, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connection_stop_date:J

    sub-long/2addr v2, v6

    :goto_0
    iput-wide v2, v4, Lcom/taobao/accs/ut/monitor/SessionMonitor;->auth_time:J

    .line 1167
    move-object/from16 v0, p0

    iget v2, v0, Ljiy;->a:I

    if-nez v2, :cond_2

    const-string/jumbo v9, "service"

    .line 1168
    .local v9, "connectType":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljjo;->a()Ljjo;

    move-result-object v2

    const v3, 0x101d1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "CONNECTED 200 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ljiy;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljiy;->C:Ljava/lang/String;

    const/16 v7, 0xd5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "0"

    aput-object v15, v8, v14

    invoke-virtual/range {v2 .. v8}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 1169
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "auth"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1179
    .end local v9    # "connectType":Ljava/lang/String;
    .end local v11    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "httpStatusCode":I
    .end local v13    # "serverToken":Ljava/lang/String;
    :goto_2
    const-string/jumbo v2, "SpdyConnection"

    const-string/jumbo v3, "spdyOnStreamResponse"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1180
    return-void

    .line 1166
    .restart local v11    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "httpStatusCode":I
    .restart local v13    # "serverToken":Ljava/lang/String;
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1167
    :cond_2
    :try_start_1
    const-string/jumbo v9, "inapp"

    goto :goto_1

    .line 1171
    .end local v13    # "serverToken":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Ljiy;->d(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1174
    .end local v11    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "httpStatusCode":I
    :catch_0
    move-exception v10

    .line 1175
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SpdyConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SpdyConnection"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1176
    invoke-virtual/range {p0 .. p0}, Ljiy;->i()V

    .line 1177
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    const-string/jumbo v3, "exception"

    invoke-virtual {v2, v3}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 8
    .param p1, "arg0"    # Lorg/android/spdy/SpdySession;
    .param p2, "uniqueId"    # J
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1076
    const-string/jumbo v0, "SpdyConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "spdyPingRecvCallback uniId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1077
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1080
    :cond_1
    iget-object v0, p0, Ljiy;->c:Ljip;

    .line 5659
    const-string/jumbo v1, "MessageHandler"

    const-string/jumbo v2, "onRcvPing"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5660
    const-class v1, Ljip;

    monitor-enter v1

    .line 5661
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v0, Ljip;->c:Z

    .line 5662
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    iget-object v0, p0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v0}, Ljiv;->a(Landroid/content/Context;)Ljiv;

    move-result-object v0

    .line 6122
    const-string/jumbo v1, "HeartbeatManager"

    const-string/jumbo v2, "onHeartbeatSucc"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Ljiv;->b:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x6dd918

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 6124
    iget v1, v0, Ljiv;->a:I

    if-ge v1, v7, :cond_2

    iget-object v1, v0, Ljiv;->d:[I

    iget v2, v0, Ljiv;->a:I

    aget v1, v1, v2

    if-gt v1, v7, :cond_2

    .line 6125
    const-string/jumbo v1, "HeartbeatManager"

    const-string/jumbo v2, "upgrade"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6126
    iget v1, v0, Ljiv;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Ljiv;->a:I

    .line 6127
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljiv;->c:Z

    .line 6128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Ljiv;->b:J

    .line 1082
    :cond_2
    :goto_1
    iget-object v0, p0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v0}, Ljiv;->a(Landroid/content/Context;)Ljiv;

    move-result-object v0

    invoke-virtual {v0}, Ljiv;->a()V

    .line 1083
    iget-object v0, p0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onPingCBReceive()V

    .line 1085
    iget-object v0, p0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget v0, v0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ping_rec_times:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1086
    iget-object v0, p0, Ljiy;->b:Landroid/content/Context;

    const-string/jumbo v1, "service_end"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/accs/utl/UtilityImpl;->setServiceTime(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 5662
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 6131
    :cond_3
    iput-boolean v6, v0, Ljiv;->c:Z

    .line 6132
    iget-object v1, v0, Ljiv;->d:[I

    iget v0, v0, Ljiv;->a:I

    aput v6, v1, v0

    goto :goto_1
.end method

.method public final spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 3
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "streamId"    # J
    .param p4, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 1146
    const-string/jumbo v0, "SpdyConnection"

    const-string/jumbo v1, "spdyRequestRecvCallback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1147
    return-void
.end method

.method public final spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    .locals 16
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "userData"    # Ljava/lang/Object;
    .param p3, "connInfo"    # Lorg/android/spdy/SuperviseConnectInfo;
    .param p4, "error"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1035
    const-string/jumbo v2, "SpdyConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v4, v0, Ljiy;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " spdySessionCloseCallback, errorCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1037
    if-eqz p1, :cond_0

    .line 1038
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/android/spdy/SpdySession;->cleanUp()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    :cond_0
    :goto_0
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljiy;->c(I)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onCloseConnect()V

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getConCloseDate()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getConStopDate()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1050
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getConCloseDate()J

    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getConStopDate()J

    .line 1053
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v3}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getCloseReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "tnet error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1054
    .local v9, "closeReason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v2, v9}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 1055
    if-eqz p3, :cond_2

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-object/from16 v0, p3

    iget v3, v0, Lorg/android/spdy/SuperviseConnectInfo;->keepalive_period_second:I

    int-to-long v4, v3

    iput-wide v4, v2, Lcom/taobao/accs/ut/monitor/SessionMonitor;->live_time:J

    .line 1058
    :cond_2
    invoke-static {}, Lih;->a()Lij;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-interface {v2, v3}, Lij;->a(Lanet/channel/statist/StatObject;)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->c:Ljip;

    .line 4742
    iget-object v2, v2, Ljip;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 1060
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/taobao/accs/data/Message;

    .line 1061
    .local v13, "message":Lcom/taobao/accs/data/Message;
    invoke-virtual {v13}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1062
    invoke-virtual {v13}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    const-string/jumbo v3, "session close"

    invoke-virtual {v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(Ljava/lang/String;)V

    .line 1063
    invoke-static {}, Lih;->a()Lij;

    move-result-object v2

    invoke-virtual {v13}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v3

    invoke-interface {v2, v3}, Lij;->a(Lanet/channel/statist/StatObject;)V

    goto :goto_1

    .line 1040
    .end local v9    # "closeReason":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "message":Lcom/taobao/accs/data/Message;
    :catch_0
    move-exception v11

    .line 1041
    .local v11, "exception":Ljava/lang/Exception;
    const-string/jumbo v2, "SpdyConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "session cleanUp has exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1067
    .end local v11    # "exception":Ljava/lang/Exception;
    .restart local v9    # "closeReason":Ljava/lang/String;
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Ljiy;->a:I

    if-nez v2, :cond_5

    const-string/jumbo v10, "service"

    .line 1068
    .local v10, "connectType":Ljava/lang/String;
    :goto_2
    const-string/jumbo v2, "SpdyConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "spdySessionCloseCallback, conKeepTime:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget-wide v4, v4, Lcom/taobao/accs/ut/monitor/SessionMonitor;->live_time:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " connectType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1069
    invoke-static {}, Ljjo;->a()Ljjo;

    move-result-object v2

    const v3, 0x101d1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "DISCONNECT CLOSE "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget-wide v6, v6, Lcom/taobao/accs/ut/monitor/SessionMonitor;->live_time:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v7, 0xd5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Ljiy;->o:Ljava/lang/String;

    aput-object v15, v8, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Ljiy;->C:Ljava/lang/String;

    aput-object v15, v8, v14

    invoke-virtual/range {v2 .. v8}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 1070
    return-void

    .line 1067
    .end local v10    # "connectType":Ljava/lang/String;
    :cond_5
    const-string/jumbo v10, "inapp"

    goto :goto_2
.end method

.method public final spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 17
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "connInfo"    # Lorg/android/spdy/SuperviseConnectInfo;

    .prologue
    .line 1012
    move-object/from16 v0, p2

    iget v2, v0, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    move-object/from16 v0, p0

    iput v2, v0, Ljiy;->x:I

    .line 1013
    move-object/from16 v0, p2

    iget v10, v0, Lorg/android/spdy/SuperviseConnectInfo;->handshakeTime:I

    .line 1015
    .local v10, "sslTime":I
    const-string/jumbo v2, "SpdyConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v4, v0, Ljiy;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " spdySessionConnectCB sessionConnectInterval:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Ljiy;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " sslTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " reuse:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget v4, v0, Lorg/android/spdy/SuperviseConnectInfo;->sessionTicketReused:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4492
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->r:Lorg/android/spdy/SpdySession;

    if-nez v2, :cond_0

    .line 4493
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljiy;->c(I)V

    .line 1023
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setRet(Z)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onConnectStop()V

    .line 1025
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-object/from16 v0, p0

    iget v3, v0, Ljiy;->x:I

    int-to-long v4, v3

    iput-wide v4, v2, Lcom/taobao/accs/ut/monitor/SessionMonitor;->tcp_time:J

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    int-to-long v4, v10

    iput-wide v4, v2, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ssl_time:J

    .line 1027
    move-object/from16 v0, p0

    iget v2, v0, Ljiy;->a:I

    if-nez v2, :cond_a

    const-string/jumbo v9, "service"

    .line 1028
    .local v9, "connectType":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljjo;->a()Ljjo;

    move-result-object v2

    const v3, 0x101d1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "CONNECTED "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lorg/android/spdy/SuperviseConnectInfo;->sessionTicketReused:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Ljiy;->x:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xd5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p2

    iget v12, v0, Lorg/android/spdy/SuperviseConnectInfo;->sessionTicketReused:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Ljiy;->o:Ljava/lang/String;

    aput-object v12, v8, v11

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Ljiy;->C:Ljava/lang/String;

    aput-object v12, v8, v11

    invoke-virtual/range {v2 .. v8}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 1029
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "connect"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    return-void

    .line 4497
    .end local v9    # "connectType":Ljava/lang/String;
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 4498
    const-string/jumbo v2, "null"

    .line 4499
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_d

    .line 4500
    const/4 v2, 0x0

    const/4 v4, 0x5

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 4503
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 4504
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4505
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 4506
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Ljiy;->p:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v11, v0, Ljiy;->a:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v5, v6, v7, v8}, Lcom/taobao/accs/utl/UtilityImpl;->getAppsign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Ljiy;->n:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "auth?1="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "&2="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "&3="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v7}, Lcom/taobao/accs/utl/UtilityImpl;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->p:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string/jumbo v2, ""

    :goto_3
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "&5="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Ljiy;->a:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "&6="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v7}, Lcom/taobao/accs/utl/UtilityImpl;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "&7="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&8=213"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&9="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&10=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&11="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&12="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljiy;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&13="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&14="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getTtId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&15="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&16="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&17=213"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&19="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/taobao/accs/client/AccsConfig;->d:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    sget-object v7, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;->SECURITY_OFF:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    if-ne v2, v7, :cond_3

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 4529
    const-string/jumbo v2, "SpdyConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Ljiy;->a:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " auth URL:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4530
    move-object/from16 v0, p0

    iput-object v14, v0, Ljiy;->o:Ljava/lang/String;

    .line 4556
    const/4 v2, 0x1

    .line 4557
    move-object/from16 v0, p0

    iget-object v3, v0, Ljiy;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->isDebugMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4558
    const/4 v2, 0x1

    .line 4532
    :cond_1
    :goto_5
    if-nez v2, :cond_9

    .line 4533
    const-string/jumbo v2, "SpdyConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v4, v0, Ljiy;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " auth param error!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4534
    const/4 v2, -0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljiy;->d(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4547
    :catch_0
    move-exception v2

    .line 4548
    const-string/jumbo v3, "SpdyConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v5, v0, Ljiy;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " auth exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 4549
    const/4 v2, -0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljiy;->d(I)V

    goto/16 :goto_0

    .line 4509
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "&4="

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Ljiy;->p:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 4527
    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 4561
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4563
    :cond_5
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljiy;->c(I)V

    .line 4564
    const/4 v11, 0x0

    .line 4566
    const/4 v2, 0x1

    .line 4567
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4568
    const/4 v2, 0x1

    move v13, v2

    .line 4574
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v2, v13}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setFailReason(I)V

    .line 4575
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onConnectStop()V

    .line 4576
    move-object/from16 v0, p0

    iget v2, v0, Ljiy;->a:I

    if-nez v2, :cond_8

    const-string/jumbo v2, "service"

    move-object v4, v2

    .line 4578
    :goto_7
    const/4 v2, 0x0

    .line 4579
    move-object/from16 v0, p0

    iget-object v3, v0, Ljiy;->l:Ljiy$a;

    if-eqz v3, :cond_b

    .line 4580
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy;->l:Ljiy$a;

    iget v2, v2, Ljiy$a;->a:I

    move v12, v2

    .line 4582
    :goto_8
    invoke-static {}, Ljjo;->a()Ljjo;

    move-result-object v2

    const v3, 0x101d1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "DISCONNECT "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xd5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljiy;->o:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v8, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljiy;->C:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v8, v15

    invoke-virtual/range {v2 .. v8}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 4585
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "connect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "retrytimes:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v2, v3, v4, v5, v6}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v11

    goto/16 :goto_5

    .line 4569
    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4570
    const/4 v2, 0x2

    move v13, v2

    goto/16 :goto_6

    .line 4571
    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4572
    const/4 v2, 0x3

    move v13, v2

    goto/16 :goto_6

    .line 4576
    :cond_8
    const-string/jumbo v2, "inapp"

    move-object v4, v2

    goto/16 :goto_7

    .line 4538
    :cond_9
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4539
    new-instance v2, Lorg/android/spdy/SpdyRequest;

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "GET"

    sget-object v5, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    const v6, 0x13880

    const v7, 0x9c40

    invoke-direct/range {v2 .. v7}, Lorg/android/spdy/SpdyRequest;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;II)V

    .line 4544
    invoke-direct/range {p0 .. p0}, Ljiy;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/android/spdy/SpdyRequest;->setDomain(Ljava/lang/String;)V

    .line 4545
    new-instance v3, Lorg/android/spdy/SpdyDataProvider;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/android/spdy/SpdyDataProvider;-><init>([B)V

    .line 4546
    move-object/from16 v0, p0

    iget-object v4, v0, Ljiy;->r:Lorg/android/spdy/SpdySession;

    invoke-direct/range {p0 .. p0}, Ljiy;->k()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v4, v2, v3, v5, v0}, Lorg/android/spdy/SpdySession;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1027
    :cond_a
    const-string/jumbo v9, "inapp"

    goto/16 :goto_1

    :cond_b
    move v12, v2

    goto/16 :goto_8

    :cond_c
    move v13, v2

    goto/16 :goto_6

    :cond_d
    move-object v3, v2

    goto/16 :goto_2
.end method

.method public final spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 12
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "errorId"    # I
    .param p3, "sessionUserData"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 987
    if-eqz p1, :cond_0

    .line 988
    :try_start_0
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 994
    .local v9, "retryTimes":I
    iget-object v0, p0, Ljiy;->l:Ljiy$a;

    if-eqz v0, :cond_1

    .line 995
    iget-object v0, p0, Ljiy;->l:Ljiy$a;

    iget v9, v0, Ljiy$a;->a:I

    .line 997
    :cond_1
    const-string/jumbo v0, "SpdyConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ljiy;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " spdySessionFailedError, retryTimes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " errorId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 998
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljiy;->B:Z

    .line 999
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljiy;->D:Z

    .line 1000
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ljiy;->c(I)V

    .line 1001
    iget-object v0, p0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0, p2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setFailReason(I)V

    .line 1002
    iget-object v0, p0, Ljiy;->z:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onConnectStop()V

    .line 1003
    iget v0, p0, Ljiy;->a:I

    if-nez v0, :cond_2

    const-string/jumbo v7, "service"

    .line 1004
    .local v7, "connectType":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljjo;->a()Ljjo;

    move-result-object v0

    const v1, 0x101d1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DISCONNECT "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xd5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Ljiy;->o:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x1

    iget-object v11, p0, Ljiy;->C:Ljava/lang/String;

    aput-object v11, v6, v10

    invoke-virtual/range {v0 .. v6}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 1005
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "connect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "retrytimes:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    return-void

    .line 990
    .end local v7    # "connectType":Ljava/lang/String;
    .end local v9    # "retryTimes":I
    :catch_0
    move-exception v8

    .line 991
    .local v8, "exception":Ljava/lang/Exception;
    const-string/jumbo v0, "SpdyConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "session cleanUp has exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1003
    .end local v8    # "exception":Ljava/lang/Exception;
    .restart local v9    # "retryTimes":I
    :cond_2
    const-string/jumbo v7, "inapp"

    goto :goto_1
.end method

.method public final spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JILjava/lang/Object;Lorg/android/spdy/SuperviseData;)V
    .locals 5
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "streamId"    # J
    .param p4, "statusCode"    # I
    .param p5, "streamUserData"    # Ljava/lang/Object;
    .param p6, "data"    # Lorg/android/spdy/SuperviseData;

    .prologue
    const/4 v4, 0x0

    .line 1136
    const-string/jumbo v0, "SpdyConnection"

    const-string/jumbo v1, "spdyStreamCloseCallback"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1137
    if-eqz p4, :cond_0

    .line 1138
    const-string/jumbo v0, "SpdyConnection"

    const-string/jumbo v1, "spdyStreamCloseCallback"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "statusCode"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1139
    invoke-direct {p0, p4}, Ljiy;->d(I)V

    .line 1141
    :cond_0
    return-void
.end method
