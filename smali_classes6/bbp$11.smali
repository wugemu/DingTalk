.class public final Lbbp$11;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbdv;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbdv;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1197
    iput-object p1, p0, Lbbp$11;->c:Lbbp;

    iput-object p2, p0, Lbbp$11;->a:Lbdv;

    iput-object p3, p0, Lbbp$11;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1200
    iget-object v0, p0, Lbbp$11;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$11;->a:Lbdv;

    iget-object v2, p0, Lbbp$11;->b:Lcma;

    .line 5377
    if-nez v1, :cond_0

    .line 5378
    const-string/jumbo v1, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laxp$i;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 5689
    :goto_0
    return-void

    .line 5383
    :cond_0
    iget-object v3, v0, Lbbo;->h:Lbbk;

    new-instance v4, Lbbo$60;

    invoke-direct {v4, v0, v2}, Lbbo$60;-><init>(Lbbo;Lcma;)V

    .line 5684
    if-nez v1, :cond_1

    .line 5686
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5688
    const-string/jumbo v0, "checkAttend failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "queryUserScheduleModel is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5692
    :cond_1
    new-instance v2, Lbbk$90;

    invoke-direct {v2, v3, v4}, Lbbk$90;-><init>(Lbbk;Lcma;)V

    .line 5708
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[DataSourceRemote] checkAttend."

    aput-object v5, v0, v4

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 5709
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;

    .line 5710
    new-instance v4, Lbbk$91;

    invoke-direct {v4, v3, v2}, Lbbk$91;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v1, v4}, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;->checkAttend(Lbdv;Liyv;)V

    goto :goto_0
.end method
