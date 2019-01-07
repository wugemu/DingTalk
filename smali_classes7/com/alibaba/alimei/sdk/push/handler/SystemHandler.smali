.class public Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;
.super Ljava/lang/Object;
.source "SystemHandler.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/push/handler/PushHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/sdk/push/handler/PushHandler",
        "<",
        "Lcom/alibaba/alimei/sdk/push/data/SystemData;",
        ">;"
    }
.end annotation


# static fields
.field private static sInstance:Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;->sInstance:Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSystemHandler()Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;->sInstance:Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;->sInstance:Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;

    .line 31
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;->sInstance:Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;

    return-object v0
.end method

.method private handleLogUpdate()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 57
    new-instance v0, Lcom/alibaba/alimei/sdk/push/handler/SystemHandler$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/sdk/push/handler/SystemHandler$1;-><init>(Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;)V

    .line 99
    .local v0, "runnable":Ljava/lang/Runnable;
    sget-object v2, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v2}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v1

    .line 100
    .local v1, "thread":Laie;
    invoke-interface {v1, v0}, Laie;->a(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method


# virtual methods
.method public bridge synthetic handlePushResult(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/PushData;)V
    .locals 0

    .prologue
    .line 24
    check-cast p3, Lcom/alibaba/alimei/sdk/push/data/SystemData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;->handlePushResult(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/SystemData;)V

    return-void
.end method

.method public handlePushResult(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/SystemData;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "pushData"    # Lcom/alibaba/alimei/sdk/push/data/SystemData;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 36
    invoke-virtual {p3}, Lcom/alibaba/alimei/sdk/push/data/SystemData;->getType()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;->handleLogUpdate()V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string/jumbo v1, "400"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    const-string/jumbo v1, "200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    const-string/jumbo v1, "web"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    const-string/jumbo v1, "300"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0
.end method
