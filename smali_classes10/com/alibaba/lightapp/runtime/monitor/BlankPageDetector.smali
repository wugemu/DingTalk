.class public Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;
.super Ljava/lang/Object;
.source "BlankPageDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;
    }
.end annotation


# static fields
.field private static final RECENT_URL_MAX:I = 0xa

.field private static sInstance:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;


# instance fields
.field private mCountDown:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;

.field private mRecentUrls:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->sInstance:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->mRecentUrls:Ljava/util/LinkedList;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->mRecentUrls:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->relaunch(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private addRecentUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 115
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->mRecentUrls:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 116
    .local v0, "size":I
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->mRecentUrls:Ljava/util/LinkedList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 118
    :cond_0
    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->mRecentUrls:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 121
    :cond_1
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/monitor/Utils;->urlEndsWithDingtalk(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->mRecentUrls:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 132
    .end local v0    # "size":I
    :cond_2
    :goto_0
    return-void

    .line 124
    .restart local v0    # "size":I
    :cond_3
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->mRecentUrls:Ljava/util/LinkedList;

    const-string/jumbo v3, "****"

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->sInstance:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;

    return-object v0
.end method

.method private relaunch(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 107
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v1

    const-class v2, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    invoke-virtual {v1, v2}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/content/Intent;)V

    .line 110
    return-void
.end method


# virtual methods
.method public enterLoadUrl(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;->stop()V

    .line 44
    :cond_1
    invoke-direct {p0, p2}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->addRecentUrl(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;

    new-instance v1, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;-><init>(Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;-><init>(Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;

    .line 69
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;->start()V

    .line 71
    :cond_2
    return-void
.end method

.method public enterOnPageStarted(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;->stop()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;

    .line 82
    :cond_0
    return-void
.end method

.method public enterReload(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->enterLoadUrl(Landroid/app/Activity;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public enterShouldOverrideUrlLoading(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->addRecentUrl(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;->stop()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;

    .line 94
    :cond_0
    return-void
.end method

.method public exitWebView()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;->stop()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;

    .line 101
    :cond_0
    return-void
.end method
