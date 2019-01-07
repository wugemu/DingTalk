.class public final Lbbp$102;
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
.field final synthetic a:Lbft;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbft;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 949
    iput-object p1, p0, Lbbp$102;->c:Lbbp;

    iput-object p2, p0, Lbbp$102;->a:Lbft;

    iput-object p3, p0, Lbbp$102;->b:Lcma;

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
    .line 952
    iget-object v0, p0, Lbbp$102;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$102;->a:Lbft;

    iget-object v2, p0, Lbbp$102;->b:Lcma;

    .line 4442
    if-nez v1, :cond_0

    .line 4443
    const-string/jumbo v1, "-1"

    const-string/jumbo v3, "meetingDeleteObject is null"

    invoke-virtual {v0, v2, v1, v3}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 5011
    :goto_0
    return-void

    .line 4447
    :cond_0
    iget-object v3, v0, Lbbo;->h:Lbbk;

    new-instance v4, Lbbo$37;

    invoke-direct {v4, v0, v1, v2}, Lbbo$37;-><init>(Lbbo;Lbft;Lcma;)V

    .line 5006
    if-nez v1, :cond_1

    .line 5008
    const-string/jumbo v0, "-1"

    sget v1, Laxp$i;->unknown_error:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5010
    const-string/jumbo v0, "deleteSelfMeeting failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "deleteObject is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5043
    :cond_1
    new-instance v2, Lbdq;

    invoke-direct {v2}, Lbdq;-><init>()V

    .line 5044
    iget-wide v6, v1, Lbft;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lbdq;->a:Ljava/lang/Long;

    .line 5045
    iget-object v0, v1, Lbft;->b:Ljava/lang/String;

    iput-object v0, v2, Lbdq;->b:Ljava/lang/String;

    .line 5046
    iget v0, v1, Lbft;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lbdq;->c:Ljava/lang/Integer;

    .line 5047
    iget-object v0, v1, Lbft;->d:Ljava/lang/String;

    iput-object v0, v2, Lbdq;->d:Ljava/lang/String;

    .line 5048
    iget v0, v1, Lbft;->e:I

    iput v0, v2, Lbdq;->e:I

    .line 5015
    new-instance v1, Lbbk$52;

    invoke-direct {v1, v3, v4}, Lbbk$52;-><init>(Lbbk;Lcma;)V

    .line 5031
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[DataSourceRemote] deleteSelfMeeting."

    aput-object v5, v0, v4

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 5032
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;

    .line 5033
    new-instance v4, Lbbk$53;

    invoke-direct {v4, v3, v1}, Lbbk$53;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v2, v4}, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;->deleteSelfMeeting(Lbdq;Liyv;)V

    goto :goto_0
.end method
