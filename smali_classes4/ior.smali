.class public final Lior;
.super Ljava/lang/Object;
.source "H5PageData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static a:J

.field public static b:J

.field private static final bd:[Ljava/lang/String;

.field public static c:I

.field public static d:Z

.field public static e:J

.field public static f:Z

.field public static g:J

.field public static h:J

.field public static i:Ljava/lang/String;


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:J

.field public E:J

.field public F:J

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:J

.field public M:J

.field public N:J

.field public O:J

.field public P:J

.field public Q:J

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:I

.field public Z:I

.field public aA:Ljava/lang/String;

.field public aB:Ljava/lang/String;

.field public aC:Ljava/lang/String;

.field public aD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Liol;",
            ">;"
        }
    .end annotation
.end field

.field public aE:J

.field public aF:Ljava/lang/String;

.field public aG:I

.field public aH:I

.field public aI:I

.field public aJ:I

.field public aK:J

.field public aL:J

.field public aM:J

.field public aN:J

.field public aO:J

.field public aP:J

.field public aQ:Ljava/lang/String;

.field public aR:Ljava/lang/String;

.field public aS:Ljava/lang/String;

.field public aT:Z

.field public aU:Ljava/lang/String;

.field public aV:Ljava/lang/String;

.field public aW:Ljava/lang/String;

.field public aX:Ljava/lang/String;

.field public aY:Z

.field public aZ:I

.field public aa:Ljava/lang/String;

.field public ab:Ljava/lang/String;

.field public ac:I

.field public ad:I

.field public ae:I

.field public af:I

.field public ag:I

.field public ah:I

.field public ai:I

.field public aj:Ljava/lang/String;

.field public ak:Ljava/lang/String;

.field public al:Ljava/lang/String;

.field public am:Ljava/lang/String;

.field public an:Ljava/lang/String;

.field public ao:Ljava/lang/String;

.field public ap:Ljava/lang/String;

.field public aq:Ljava/lang/String;

.field public ar:Ljava/lang/String;

.field public as:Ljava/lang/String;

.field public at:Ljava/lang/String;

.field public au:Ljava/lang/String;

.field public av:Ljava/lang/String;

.field public aw:J

.field public ax:J

.field public ay:Ljava/lang/String;

.field public az:I

.field public ba:Z

.field public bb:Ljava/lang/String;

.field public bc:[I

.field private be:J

.field private bf:J

.field private bg:Ljava/lang/String;

.field private bh:Ljava/lang/String;

.field private bi:Ljava/lang/String;

.field private bj:Ljava/lang/String;

.field private bk:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bl:I

.field private bm:I

.field private bn:I

.field private bo:I

.field private bp:Z

.field private bq:Z

.field private br:Z

.field private bs:I

.field private bt:I

.field private final bu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "init_uc_unzip"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "init_uc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "init"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "new"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "push"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "load"

    aput-object v2, v0, v1

    sput-object v0, Lior;->bd:[Ljava/lang/String;

    .line 29
    const-wide/16 v0, -0x1

    sput-wide v0, Lior;->b:J

    .line 30
    const/4 v0, -0x1

    sput v0, Lior;->c:I

    .line 31
    sput-boolean v3, Lior;->d:Z

    .line 32
    const-wide/16 v0, 0x3c

    sput-wide v0, Lior;->e:J

    .line 33
    sput-boolean v3, Lior;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lior;->r:I

    .line 76
    const-string/jumbo v0, "NO"

    iput-object v0, p0, Lior;->ar:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lior;->aD:Ljava/util/Map;

    .line 107
    const-string/jumbo v0, ""

    iput-object v0, p0, Lior;->aQ:Ljava/lang/String;

    .line 111
    iput-boolean v1, p0, Lior;->bp:Z

    .line 113
    iput-boolean v1, p0, Lior;->bq:Z

    .line 115
    iput-boolean v1, p0, Lior;->aT:Z

    .line 121
    iput-boolean v1, p0, Lior;->br:Z

    .line 127
    iput-boolean v1, p0, Lior;->aY:Z

    .line 138
    iput-boolean v1, p0, Lior;->ba:Z

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lior;->bu:Ljava/util/Map;

    .line 158
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lior;->bc:[I

    .line 162
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lior;->bk:Ljava/util/LinkedList;

    .line 163
    invoke-virtual {p0}, Lior;->b()V

    .line 164
    sget-boolean v0, Lior;->d:Z

    iput-boolean v0, p0, Lior;->aT:Z

    .line 165
    sput-boolean v1, Lior;->d:Z

    .line 166
    return-void

    .line 158
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static a(JI)V
    .locals 4
    .param p0, "create"    # J
    .param p2, "scenario"    # I

    .prologue
    .line 401
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setInitScenario: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", scenario: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    sget v0, Lior;->c:I

    if-ltz v0, :cond_0

    sget v0, Lior;->c:I

    if-ge v0, p2, :cond_0

    .line 405
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setInitScenario fail, sCreateScene: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lior;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sCreateTimestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lior;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    sput p2, Lior;->c:I

    .line 411
    sput-wide p0, Lior;->b:J

    goto :goto_0
.end method


# virtual methods
.method public final a()Lior;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lior;

    return-object v0
.end method

.method public final a(I)V
    .locals 3
    .param p1, "statusCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 460
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setStatusCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iput p1, p0, Lior;->u:I

    .line 462
    return-void
.end method

.method public final a(J)V
    .locals 3
    .param p1, "appear"    # J

    .prologue
    .line 319
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setAppear: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iput-wide p1, p0, Lior;->k:J

    .line 321
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 217
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageStarted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lior;->j:J

    .line 219
    iput-object p1, p0, Lior;->w:Ljava/lang/String;

    .line 2245
    iget-object v0, p0, Lior;->bk:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2246
    const-string/jumbo v0, "open"

    .line 2247
    iget-object v1, p0, Lior;->bk:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2248
    const-string/jumbo v1, "H5PageData"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "open : url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    iput-object v1, p0, Lior;->y:Ljava/lang/String;

    .line 2263
    :goto_0
    const-string/jumbo v1, "H5PageData"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getStartType : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iput-object v0, p0, Lior;->bh:Ljava/lang/String;

    .line 221
    return-void

    .line 2251
    :cond_0
    iget-object v0, p0, Lior;->aj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2252
    const-string/jumbo v1, "nav"

    .line 2253
    iget-object v0, p0, Lior;->bk:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2254
    const-string/jumbo v2, "H5PageData"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "nav : lastUrl"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    iput-object v0, p0, Lior;->y:Ljava/lang/String;

    .line 2256
    iget-object v0, p0, Lior;->bk:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    move-object v0, v1

    .line 2257
    goto :goto_0

    .line 2258
    :cond_1
    const-string/jumbo v1, "resume"

    .line 2259
    iget-object v0, p0, Lior;->bk:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2260
    const-string/jumbo v2, "H5PageData"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "resume : lastUrl"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    iput-object v0, p0, Lior;->y:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1518
    iget-object v0, p0, Lior;->bu:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1502
    iget-object v0, p0, Lior;->bu:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1534
    iget-object v0, p0, Lior;->bu:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "showErrorPage"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1395
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setShowErrorPage : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    iput-boolean p1, p0, Lior;->aY:Z

    .line 1397
    return-void
.end method

.method public final b(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1522
    iget-object v2, p0, Lior;->bu:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1523
    .local v1, "val":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1525
    :try_start_0
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "val":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1530
    :goto_0
    return v2

    .line 1526
    :catch_0
    move-exception v0

    .line 1527
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5PageData"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1530
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1506
    iget-object v2, p0, Lior;->bu:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1507
    .local v1, "val":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1509
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 1514
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 1510
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1511
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5PageData"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 174
    const-string/jumbo v0, "H5PageData"

    const-string/jumbo v1, "clear"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string/jumbo v0, "NO"

    iput-object v0, p0, Lior;->ar:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lior;->bu:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 177
    iput v2, p0, Lior;->Z:I

    iput v2, p0, Lior;->Y:I

    iput v2, p0, Lior;->X:I

    iput v2, p0, Lior;->W:I

    .line 178
    const-string/jumbo v0, ""

    iput-object v0, p0, Lior;->ab:Ljava/lang/String;

    iput-object v0, p0, Lior;->aa:Ljava/lang/String;

    .line 179
    iput v2, p0, Lior;->K:I

    iput v2, p0, Lior;->J:I

    iput v2, p0, Lior;->I:I

    iput v2, p0, Lior;->H:I

    iput v2, p0, Lior;->G:I

    .line 180
    iput v2, p0, Lior;->s:I

    .line 181
    iput-wide v4, p0, Lior;->O:J

    iput-wide v4, p0, Lior;->N:J

    iput-wide v4, p0, Lior;->L:J

    iput-wide v4, p0, Lior;->P:J

    iput-wide v4, p0, Lior;->M:J

    .line 182
    const-string/jumbo v0, ""

    iput-object v0, p0, Lior;->z:Ljava/lang/String;

    iput-object v0, p0, Lior;->bi:Ljava/lang/String;

    iput-object v0, p0, Lior;->bh:Ljava/lang/String;

    .line 183
    iput v2, p0, Lior;->V:I

    iput v2, p0, Lior;->U:I

    iput v2, p0, Lior;->T:I

    iput v2, p0, Lior;->S:I

    iput v2, p0, Lior;->R:I

    .line 184
    iput v2, p0, Lior;->ai:I

    iput v2, p0, Lior;->ah:I

    iput v2, p0, Lior;->ag:I

    iput v2, p0, Lior;->af:I

    iput v2, p0, Lior;->ae:I

    iput v2, p0, Lior;->ad:I

    iput v2, p0, Lior;->ac:I

    .line 186
    const/16 v0, 0x1b58

    iput v0, p0, Lior;->v:I

    .line 187
    iput-wide v4, p0, Lior;->l:J

    iput-wide v4, p0, Lior;->be:J

    iput-wide v4, p0, Lior;->n:J

    iput-wide v4, p0, Lior;->k:J

    iput-wide v4, p0, Lior;->j:J

    iput-wide v4, p0, Lior;->m:J

    iput-wide v4, p0, Lior;->Q:J

    .line 188
    iput-wide v4, p0, Lior;->F:J

    iput-wide v4, p0, Lior;->E:J

    iput-wide v4, p0, Lior;->D:J

    iput-wide v4, p0, Lior;->C:J

    iput-wide v4, p0, Lior;->B:J

    iput-wide v4, p0, Lior;->A:J

    .line 189
    const-string/jumbo v0, "N"

    iput-object v0, p0, Lior;->bg:Ljava/lang/String;

    iput-object v0, p0, Lior;->bj:Ljava/lang/String;

    .line 190
    iput v2, p0, Lior;->bl:I

    .line 191
    iput-wide v4, p0, Lior;->q:J

    .line 192
    iput v2, p0, Lior;->bo:I

    iput v2, p0, Lior;->bn:I

    iput v2, p0, Lior;->bm:I

    .line 193
    iput-wide v4, p0, Lior;->bf:J

    .line 194
    iput-wide v4, p0, Lior;->ax:J

    iput-wide v4, p0, Lior;->aw:J

    .line 195
    const-string/jumbo v0, ""

    iput-object v0, p0, Lior;->ay:Ljava/lang/String;

    .line 196
    const-string/jumbo v0, ""

    iput-object v0, p0, Lior;->aC:Ljava/lang/String;

    iput-object v0, p0, Lior;->aB:Ljava/lang/String;

    iput-object v0, p0, Lior;->aA:Ljava/lang/String;

    .line 197
    iput-wide v4, p0, Lior;->aE:J

    .line 198
    const-string/jumbo v0, ""

    iput-object v0, p0, Lior;->aF:Ljava/lang/String;

    .line 199
    iput v2, p0, Lior;->aJ:I

    iput v2, p0, Lior;->aI:I

    iput v2, p0, Lior;->aH:I

    iput v2, p0, Lior;->aG:I

    .line 200
    iput-wide v4, p0, Lior;->aN:J

    iput-wide v4, p0, Lior;->aM:J

    iput-wide v4, p0, Lior;->aL:J

    iput-wide v4, p0, Lior;->aK:J

    .line 201
    const-string/jumbo v0, ""

    iput-object v0, p0, Lior;->aQ:Ljava/lang/String;

    .line 202
    const-string/jumbo v0, ""

    iput-object v0, p0, Lior;->aS:Ljava/lang/String;

    iput-object v0, p0, Lior;->aR:Ljava/lang/String;

    .line 203
    const-string/jumbo v0, ""

    iput-object v0, p0, Lior;->aU:Ljava/lang/String;

    .line 204
    const-string/jumbo v0, ""

    iput-object v0, p0, Lior;->aV:Ljava/lang/String;

    .line 205
    iput v2, p0, Lior;->bs:I

    .line 206
    const-string/jumbo v0, ""

    iput-object v0, p0, Lior;->aW:Ljava/lang/String;

    .line 207
    const-string/jumbo v0, ""

    iput-object v0, p0, Lior;->aX:Ljava/lang/String;

    .line 208
    iput v2, p0, Lior;->bt:I

    iput v2, p0, Lior;->aZ:I

    .line 209
    const-string/jumbo v0, ""

    iput-object v0, p0, Lior;->bb:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public final b(I)V
    .locals 3
    .param p1, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 469
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setErrorCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iput p1, p0, Lior;->v:I

    .line 471
    return-void
.end method

.method public final b(J)V
    .locals 3
    .param p1, "appearFromNative"    # J

    .prologue
    .line 328
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setAppearFromNative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iput-wide p1, p0, Lior;->l:J

    .line 330
    return-void
.end method

.method public final b(JI)V
    .locals 5
    .param p1, "create"    # J
    .param p3, "scenario"    # I

    .prologue
    .line 415
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setCreate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", scenario: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    sget v0, Lior;->c:I

    if-ltz v0, :cond_0

    .line 418
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "use sCreateScene: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lior;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sCreateTimestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lior;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    sget p3, Lior;->c:I

    .line 421
    sget-wide p1, Lior;->b:J

    .line 422
    const/4 v0, -0x1

    sput v0, Lior;->c:I

    .line 423
    const-wide/16 v0, -0x1

    sput-wide v0, Lior;->b:J

    .line 427
    :cond_0
    iget v0, p0, Lior;->r:I

    if-ltz v0, :cond_1

    iget v0, p0, Lior;->r:I

    if-ge v0, p3, :cond_1

    .line 428
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setCreate fail, mCreate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lior;->p:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mCreateScenario: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lior;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :goto_0
    return-void

    .line 433
    :cond_1
    iput-wide p1, p0, Lior;->p:J

    .line 434
    iput p3, p0, Lior;->r:I

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4
    .param p1, "eType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 228
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageEnded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lior;->j:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lior;->be:J

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2269
    iget-object v0, p0, Lior;->aj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2270
    const-string/jumbo v0, "nav"

    .line 231
    :goto_0
    iput-object v0, p0, Lior;->bi:Ljava/lang/String;

    .line 236
    :goto_1
    iget-wide v0, p0, Lior;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 237
    const-string/jumbo v0, "Y"

    iput-object v0, p0, Lior;->bg:Ljava/lang/String;

    .line 241
    :goto_2
    return-void

    .line 2272
    :cond_0
    const-string/jumbo v0, "pause"

    goto :goto_0

    .line 233
    :cond_1
    iput-object p1, p0, Lior;->bi:Ljava/lang/String;

    goto :goto_1

    .line 239
    :cond_2
    const-string/jumbo v0, "N"

    iput-object v0, p0, Lior;->bg:Ljava/lang/String;

    goto :goto_2
.end method

.method public final b(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1538
    iget-object v2, p0, Lior;->bu:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1539
    .local v1, "val":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1541
    :try_start_0
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "val":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1546
    :goto_0
    return v2

    .line 1542
    :catch_0
    move-exception v0

    .line 1543
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5PageData"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1546
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lior;->ak:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lior;->am:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^publicId="

    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lior;->al:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lior;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^viewId="

    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lior;->w:Ljava/lang/String;

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^refviewId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lior;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final c(I)V
    .locals 3
    .param p1, "preRender"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1130
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setPreRender: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lior;->az:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iput p1, p0, Lior;->az:I

    .line 1132
    return-void
.end method

.method public final c(J)V
    .locals 3
    .param p1, "pageSize"    # J

    .prologue
    .line 694
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setPageSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iput-wide p1, p0, Lior;->Q:J

    .line 696
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3
    .param p1, "pageUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 478
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setPageUrl: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iput-object p1, p0, Lior;->w:Ljava/lang/String;

    .line 480
    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 17
    .line 3170
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lior;

    .line 17
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 382
    const-string/jumbo v2, "H5PageData"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getCreateScenario: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lior;->r:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string/jumbo v0, ""

    .line 385
    .local v0, "scenario":Ljava/lang/String;
    iget v2, p0, Lior;->r:I

    if-ltz v2, :cond_0

    .line 387
    :try_start_0
    sget-object v2, Lior;->bd:[Ljava/lang/String;

    iget v3, p0, Lior;->r:I

    aget-object v0, v2, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :cond_0
    :goto_0
    return-object v0

    .line 388
    :catch_0
    move-exception v1

    .line 389
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5PageData"

    const-string/jumbo v3, "getCreateScenario"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final d(I)V
    .locals 3
    .param p1, "netJsReqNum"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1207
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setNetJsReqNum : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    iput p1, p0, Lior;->aG:I

    .line 1209
    return-void
.end method

.method public final d(J)V
    .locals 5
    .param p1, "mContainerVisible"    # J

    .prologue
    .line 1112
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setContainerVisible: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lior;->aw:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iput-wide p1, p0, Lior;->ax:J

    .line 1114
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3
    .param p1, "imageSizeLimit60Urls"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 784
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setImageSizeLimit60Urls: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iput-object p1, p0, Lior;->aa:Ljava/lang/String;

    .line 786
    return-void
.end method

.method public final e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Liol;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1180
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getJsapiInfoList: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lior;->ak:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    iget-object v0, p0, Lior;->aD:Ljava/util/Map;

    return-object v0
.end method

.method public final e(I)V
    .locals 3
    .param p1, "netOtherReqNum"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1216
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setNetOtherReqNum : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    iput p1, p0, Lior;->aH:I

    .line 1218
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3
    .param p1, "sizeLimit200Urls"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 793
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setSizeLimit200Urls: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iput-object p1, p0, Lior;->ab:Ljava/lang/String;

    .line 795
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 3
    .param p1, "navUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 865
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setNavUrl: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iput-object p1, p0, Lior;->aj:Ljava/lang/String;

    .line 867
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 874
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setAppId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iput-object p1, p0, Lior;->ak:Ljava/lang/String;

    .line 876
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 3
    .param p1, "webViewType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 928
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setWebViewType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iput-object p1, p0, Lior;->ap:Ljava/lang/String;

    .line 930
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 3
    .param p1, "pageToken"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 937
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setPageToken: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iput-object p1, p0, Lior;->aq:Ljava/lang/String;

    .line 939
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 3
    .param p1, "isTinyApp"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 964
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setIsTinyApp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iput-object p1, p0, Lior;->at:Ljava/lang/String;

    .line 966
    return-void
.end method

.method public final k(Ljava/lang/String;)I
    .locals 2
    .param p1, "protocal"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1064
    const-string/jumbo v0, "spdy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1069
    :cond_0
    :goto_0
    return v1

    .line 1066
    :cond_1
    const-string/jumbo v0, "h2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 3
    .param p1, "mFromType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1121
    const-string/jumbo v0, "H5PageData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setFromType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iput-object p1, p0, Lior;->ay:Ljava/lang/String;

    .line 1123
    return-void
.end method

.method public final m(Ljava/lang/String;)Liol;
    .locals 1
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 1176
    iget-object v0, p0, Lior;->aD:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liol;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "index="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lior;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lior;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string/jumbo v1, "^visible=Y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^start="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lior;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^appear="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lior;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^complete="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lior;->n:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^end="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lior;->be:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^stype="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lior;->bh:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^etype="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lior;->bi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^proxy="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lior;->bj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^title="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lior;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^referer="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lior;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string/jumbo v1, "^xurl=null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^pageSize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lior;->Q:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
