.class public final Lfyh;
.super Ljava/lang/Object;
.source "BackgroundTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfyh$a;
    }
.end annotation


# static fields
.field private static a:Z

.field private static d:Ljava/util/concurrent/ScheduledFuture;

.field private static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfyh$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/app/Application;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lfyh;->a:Z

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lfyh;->e:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lfyh;->b:Landroid/app/Application;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfyh;->c:Z

    .line 44
    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 4
    .param p0, "application"    # Landroid/app/Application;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 28
    sget-boolean v1, Lfyh;->a:Z

    if-nez v1, :cond_0

    .line 29
    const-string/jumbo v1, "init BackgroundTrigger"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    new-instance v0, Lfyh;

    invoke-direct {v0, p0}, Lfyh;-><init>(Landroid/app/Application;)V

    .line 32
    .local v0, "trigger":Lfyh;
    invoke-static {}, Lanh;->a()Lanh;

    sget-object v1, Lfyh;->d:Ljava/util/concurrent/ScheduledFuture;

    const-wide/32 v2, 0xea60

    invoke-static {v1, v0, v2, v3}, Lanh;->b(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    sput-object v1, Lfyh;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 33
    const/4 v1, 0x1

    sput-boolean v1, Lfyh;->a:Z

    .line 35
    .end local v0    # "trigger":Lfyh;
    :cond_0
    return-void
.end method

.method public static a(Lfyh$a;)V
    .locals 1
    .param p0, "callback"    # Lfyh$a;

    .prologue
    .line 38
    sget-object v0, Lfyh;->e:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 49
    iget-object v6, p0, Lfyh;->b:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Laml;->a(Landroid/content/Context;)Z

    move-result v4

    .line 50
    .local v4, "isAppOnForeground":Z
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "forground"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-boolean v6, p0, Lfyh;->c:Z

    if-eq v6, v4, :cond_4

    .line 52
    iput-boolean v4, p0, Lfyh;->c:Z

    .line 53
    if-eqz v4, :cond_0

    .line 54
    invoke-static {}, Lfzf;->a()Lfzf;

    move-result-object v6

    invoke-virtual {v6}, Lfzf;->c()V

    .line 55
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventType;->values()[Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v0

    .local v0, "arr$":[Lcom/alibaba/appmonitor/event/EventType;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, v0, v3

    .line 56
    .local v1, "eventType":Lcom/alibaba/appmonitor/event/EventType;
    invoke-virtual {v1}, Lcom/alibaba/appmonitor/event/EventType;->getForegroundStatisticsInterval()I

    move-result v6

    invoke-static {v1, v6}, Lfyg;->a(Lcom/alibaba/appmonitor/event/EventType;I)V

    .line 55
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "arr$":[Lcom/alibaba/appmonitor/event/EventType;
    .end local v1    # "eventType":Lcom/alibaba/appmonitor/event/EventType;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventType;->values()[Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v0

    .restart local v0    # "arr$":[Lcom/alibaba/appmonitor/event/EventType;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    .line 60
    .restart local v1    # "eventType":Lcom/alibaba/appmonitor/event/EventType;
    invoke-virtual {v1}, Lcom/alibaba/appmonitor/event/EventType;->getBackgroundStatisticsInterval()I

    move-result v6

    invoke-static {v1, v6}, Lfyg;->a(Lcom/alibaba/appmonitor/event/EventType;I)V

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    .end local v1    # "eventType":Lcom/alibaba/appmonitor/event/EventType;
    :cond_1
    invoke-static {}, Lfyg;->b()V

    .line 64
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    sget-object v6, Lfyh;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 65
    if-eqz v4, :cond_3

    .line 66
    sget-object v6, Lfyh;->e:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfyh$a;

    invoke-interface {v6}, Lfyh$a;->c()V

    .line 64
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 68
    :cond_3
    sget-object v6, Lfyh;->e:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfyh$a;

    invoke-interface {v6}, Lfyh$a;->b()V

    goto :goto_3

    .line 72
    .end local v0    # "arr$":[Lcom/alibaba/appmonitor/event/EventType;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_4
    return-void
.end method
