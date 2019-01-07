.class public final Lbbp$104;
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
.field final synthetic a:Lbfs;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbfs;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 982
    iput-object p1, p0, Lbbp$104;->c:Lbbp;

    iput-object p2, p0, Lbbp$104;->a:Lbfs;

    iput-object p3, p0, Lbbp$104;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 985
    iget-object v0, p0, Lbbp$104;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$104;->a:Lbfs;

    iget-object v2, p0, Lbbp$104;->b:Lcma;

    .line 4566
    if-nez v1, :cond_0

    .line 4567
    const-string/jumbo v1, "-1"

    const-string/jumbo v3, "setMeetingCheckInQRCodeIntervalObject wrongful"

    invoke-virtual {v0, v2, v1, v3}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 5151
    :goto_0
    return-void

    .line 4570
    :cond_0
    iget-object v3, v0, Lbbo;->h:Lbbk;

    new-instance v4, Lbbo$40;

    invoke-direct {v4, v0, v2}, Lbbo$40;-><init>(Lbbo;Lcma;)V

    .line 5147
    if-nez v1, :cond_1

    .line 5149
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "setMeetingCheckInQRCodeIntervalObject wrongful"

    invoke-interface {v4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6028
    :cond_1
    new-instance v2, Lbdp;

    invoke-direct {v2}, Lbdp;-><init>()V

    .line 6029
    iget-wide v6, v1, Lbfs;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lbdp;->a:Ljava/lang/Long;

    .line 6030
    iget-boolean v0, v1, Lbfs;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lbdp;->b:Ljava/lang/Boolean;

    .line 5154
    new-instance v1, Lbbk$58;

    invoke-direct {v1, v3, v4}, Lbbk$58;-><init>(Lbbk;Lcma;)V

    .line 5169
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[DataSourceRemote] updateCheckInQRCodeTimeliness."

    aput-object v5, v0, v4

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 5170
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;

    .line 5171
    new-instance v4, Lbbk$59;

    invoke-direct {v4, v3, v1}, Lbbk$59;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v2, v4}, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;->updateCheckInQRCodeTimeliness(Lbdp;Liyv;)V

    goto :goto_0
.end method
