.class final Lkot$c;
.super Ljava/lang/Object;
.source "AndroidPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "getMethod"    # Ljava/lang/reflect/Method;
    .param p2, "openMethod"    # Ljava/lang/reflect/Method;
    .param p3, "warnIfOpenMethod"    # Ljava/lang/reflect/Method;

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p1, p0, Lkot$c;->a:Ljava/lang/reflect/Method;

    .line 335
    iput-object p2, p0, Lkot$c;->b:Ljava/lang/reflect/Method;

    .line 336
    iput-object p3, p0, Lkot$c;->c:Ljava/lang/reflect/Method;

    .line 337
    return-void
.end method

.method static a()Lkot$c;
    .locals 8

    .prologue
    .line 369
    :try_start_0
    const-string/jumbo v4, "dalvik.system.CloseGuard"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 370
    .local v0, "closeGuardClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "get"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 371
    .local v1, "getMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v4, "open"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 372
    .local v2, "openMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v4, "warnIfOpen"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 378
    .local v3, "warnIfOpenMethod":Ljava/lang/reflect/Method;
    :goto_0
    new-instance v4, Lkot$c;

    invoke-direct {v4, v1, v2, v3}, Lkot$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object v4

    .line 374
    .end local v1    # "getMethod":Ljava/lang/reflect/Method;
    .end local v2    # "openMethod":Ljava/lang/reflect/Method;
    .end local v3    # "warnIfOpenMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    const/4 v1, 0x0

    .line 375
    .restart local v1    # "getMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 376
    .restart local v2    # "openMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .restart local v3    # "warnIfOpenMethod":Ljava/lang/reflect/Method;
    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "closer"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 340
    iget-object v2, p0, Lkot$c;->a:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 342
    :try_start_0
    iget-object v2, p0, Lkot$c;->a:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 343
    .local v0, "closeGuardInstance":Ljava/lang/Object;
    iget-object v2, p0, Lkot$c;->b:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v0    # "closeGuardInstance":Ljava/lang/Object;
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method final a(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "closeGuardInstance"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "reported":Z
    if-eqz p1, :cond_0

    .line 355
    :try_start_0
    iget-object v1, p0, Lkot$c;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    const/4 v0, 0x1

    .line 360
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
