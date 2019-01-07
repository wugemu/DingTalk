.class public final Lkcp;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkcp;->a:Ljava/lang/String;

    iput-object p2, p0, Lkcp;->b:Ljava/lang/String;

    iput-object p3, p0, Lkcp;->c:Ljava/lang/String;

    iput-object p4, p0, Lkcp;->d:Ljava/lang/String;

    iput-object p5, p0, Lkcp;->e:Ljava/lang/String;

    iput-object p6, p0, Lkcp;->f:Ljava/lang/String;

    iput p7, p0, Lkcp;->g:I

    return-void
.end method

.method private static a()Z
    .locals 2

    :try_start_0
    const-string/jumbo v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "IS_ALPHA_BUILD"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/aq$b;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    new-instance v2, Lcom/xiaomi/push/service/aq$b;

    invoke-direct {v2, p1}, Lcom/xiaomi/push/service/aq$b;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 1000
    iget-object v3, p1, Lcom/xiaomi/push/service/XMPushService;->c:Lkcb;

    .line 0
    const-string/jumbo v4, "c"

    .line 2000
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaomi/push/service/aq$b;->a:Ljava/lang/String;

    iget-object v0, p0, Lkcp;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/xiaomi/push/service/aq$b;->b:Ljava/lang/String;

    iget-object v0, p0, Lkcp;->c:Ljava/lang/String;

    iput-object v0, v2, Lcom/xiaomi/push/service/aq$b;->i:Ljava/lang/String;

    iget-object v0, p0, Lkcp;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/xiaomi/push/service/aq$b;->c:Ljava/lang/String;

    const-string/jumbo v0, "5"

    iput-object v0, v2, Lcom/xiaomi/push/service/aq$b;->h:Ljava/lang/String;

    const-string/jumbo v0, "XMPUSH-PASS"

    iput-object v0, v2, Lcom/xiaomi/push/service/aq$b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/xiaomi/push/service/aq$b;->e:Z

    const-string/jumbo v0, ""

    invoke-static {p1}, Lkcp;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3000
    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz v8, :cond_0

    array-length v0, v8

    if-ge v1, v0, :cond_0

    aget-object v0, v8, v1

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    aget-object v0, v8, v1

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_2

    const/4 v0, 0x0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v9, 0x186a0

    rem-int/2addr v0, v9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "#"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v9, v8, v1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, 0x186a0

    rem-int/2addr v9, v10

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2000
    :cond_4
    const-string/jumbo v1, "%1$s:%2$s,%3$s:%4$s,%5$s:%6$s:%7$s:%8$s"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "sdk_ver"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x24

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "cpvn"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "3_6_2"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "cpvc"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const/16 v7, 0x778a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "aapn"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    aput-object v0, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaomi/push/service/aq$b;->f:Ljava/lang/String;

    invoke-static {p1}, Lkcp;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "1000271"

    :goto_2
    const-string/jumbo v1, "%1$s:%2$s,%3$s:%4$s,%5$s:%6$s,sync:1"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "appid"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    const-string/jumbo v6, "locale"

    aput-object v6, v5, v0

    const/4 v0, 0x3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x4

    const-string/jumbo v6, "miid"

    aput-object v6, v5, v0

    const/4 v0, 0x5

    invoke-static {p1}, Lkcl;->a(Landroid/content/Context;)Lkcl;

    move-result-object v6

    invoke-virtual {v6}, Lkcl;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaomi/push/service/aq$b;->g:Ljava/lang/String;

    .line 4000
    const-string/jumbo v0, "com.xiaomi.xmsf"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lkcp;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 2000
    :goto_3
    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v2, Lcom/xiaomi/push/service/aq$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",%1$s:%2$s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "ab"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaomi/push/service/aq$b;->g:Ljava/lang/String;

    :cond_5
    iput-object v3, v2, Lcom/xiaomi/push/service/aq$b;->k:Lkcb;

    .line 0
    return-object v2

    .line 2000
    :cond_6
    iget-object v0, p0, Lkcp;->d:Ljava/lang/String;

    goto :goto_2

    .line 4000
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method
