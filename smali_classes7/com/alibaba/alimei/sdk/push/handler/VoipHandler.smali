.class public Lcom/alibaba/alimei/sdk/push/handler/VoipHandler;
.super Ljava/lang/Object;
.source "VoipHandler.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/push/handler/PushHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/sdk/push/handler/PushHandler",
        "<",
        "Lcom/alibaba/alimei/sdk/push/data/VoipData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNT:Ljava/lang/String; = "account"

.field public static final ACTION_VOIP:Ljava/lang/String; = "com.alibaba.alimei.ACTION_VOIP"

.field private static final CALLER:Ljava/lang/String; = "caller"

.field private static final MSG_TYPE:Ljava/lang/String; = "type"

.field private static final TYPE_VOIP:Ljava/lang/String; = "voip"

.field private static final UUID:Ljava/lang/String; = "uuid"

.field private static final VIDEO:Ljava/lang/String; = "video"

.field private static sInstance:Lcom/alibaba/alimei/sdk/push/handler/VoipHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/alimei/sdk/push/handler/VoipHandler;->sInstance:Lcom/alibaba/alimei/sdk/push/handler/VoipHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/alibaba/alimei/sdk/push/handler/VoipHandler;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alibaba/alimei/sdk/push/handler/VoipHandler;->sInstance:Lcom/alibaba/alimei/sdk/push/handler/VoipHandler;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/alibaba/alimei/sdk/push/handler/VoipHandler;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/push/handler/VoipHandler;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/push/handler/VoipHandler;->sInstance:Lcom/alibaba/alimei/sdk/push/handler/VoipHandler;

    .line 31
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/sdk/push/handler/VoipHandler;->sInstance:Lcom/alibaba/alimei/sdk/push/handler/VoipHandler;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic handlePushResult(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/PushData;)V
    .locals 0

    .prologue
    .line 12
    check-cast p3, Lcom/alibaba/alimei/sdk/push/data/VoipData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/push/handler/VoipHandler;->handlePushResult(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/VoipData;)V

    return-void
.end method

.method public handlePushResult(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/VoipData;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "voipData"    # Lcom/alibaba/alimei/sdk/push/data/VoipData;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 37
    if-nez p3, :cond_0

    .line 50
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "uuid"

    invoke-virtual {p3}, Lcom/alibaba/alimei/sdk/push/data/VoipData;->getU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string/jumbo v1, "caller"

    invoke-virtual {p3}, Lcom/alibaba/alimei/sdk/push/data/VoipData;->getC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string/jumbo v1, "video"

    invoke-virtual {p3}, Lcom/alibaba/alimei/sdk/push/data/VoipData;->getV()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "voip"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string/jumbo v1, "account"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string/jumbo v1, "com.alibaba.alimei.ACTION_VOIP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
