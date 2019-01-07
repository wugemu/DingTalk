.class public Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;
.super Lipd;
.source "H5ErrorPagePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;
    }
.end annotation


# static fields
.field private static final START_FEEDBACK:Ljava/lang/String; = "startFeedBack"

.field private static final TAG:Ljava/lang/String; = "H5ErrorPagePlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;Liop;)Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;
    .param p1, "x1"    # Liop;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;->getFeedbackReportData(Liop;)Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;

    move-result-object v0

    return-object v0
.end method

.method private getFeedbackReportData(Liop;)Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;
    .locals 3
    .param p1, "h5Page"    # Liop;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;)V

    .line 114
    .local v1, "reportData":Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Liop;->getPageData()Lior;

    move-result-object v2

    if-nez v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-object v1

    .line 117
    :cond_1
    invoke-interface {p1}, Liop;->getPageData()Lior;

    move-result-object v0

    .line 2474
    .local v0, "pageData":Lior;
    iget-object v2, v0, Lior;->w:Ljava/lang/String;

    .line 118
    iput-object v2, v1, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;->bizUrl:Ljava/lang/String;

    .line 3456
    iget v2, v0, Lior;->u:I

    .line 119
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;->bizCode:Ljava/lang/String;

    .line 4409
    const/4 v2, 0x0

    .line 120
    iput-object v2, v1, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;->bizMsg:Ljava/lang/String;

    goto :goto_0
.end method

.method private startFeedBack()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    const-string/jumbo v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 5
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 42
    .line 2065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 43
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "startFeedBack"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 44
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v3

    invoke-interface {v3}, Liop;->getPageData()Lior;

    move-result-object v3

    if-nez v3, :cond_1

    .line 45
    :cond_0
    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v3

    const-string/jumbo v4, "\u8c03\u7528\u5931\u8d25"

    invoke-interface {p2, v3, v4}, Liny;->sendError(ILjava/lang/String;)V

    .line 56
    :goto_0
    return v2

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v3

    invoke-interface {v3}, Liop;->getPageData()Lior;

    move-result-object v1

    .line 2391
    .local v1, "pageData":Lior;
    iget-boolean v3, v1, Lior;->aY:Z

    .line 49
    if-eqz v3, :cond_2

    .line 50
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;->startFeedBack()V

    goto :goto_0

    .line 52
    :cond_2
    invoke-interface {p2}, Liny;->sendNoRigHtToInvoke()V

    goto :goto_0

    .line 56
    .end local v1    # "pageData":Lior;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 37
    const-string/jumbo v0, "startFeedBack"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 38
    return-void
.end method
