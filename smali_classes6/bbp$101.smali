.class public final Lbbp$101;
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
.field final synthetic a:Lbfr;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbfr;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 940
    iput-object p1, p0, Lbbp$101;->c:Lbbp;

    iput-object p2, p0, Lbbp$101;->a:Lbfr;

    iput-object p3, p0, Lbbp$101;->b:Lcma;

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
    .line 943
    iget-object v0, p0, Lbbp$101;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$101;->a:Lbfr;

    iget-object v2, p0, Lbbp$101;->b:Lcma;

    .line 4419
    if-nez v1, :cond_0

    .line 4420
    const-string/jumbo v1, "-1"

    const-string/jumbo v3, "meetingAttendeeUpdateObject is null"

    invoke-virtual {v0, v2, v1, v3}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 4979
    :goto_0
    return-void

    .line 4424
    :cond_0
    iget-object v3, v0, Lbbo;->h:Lbbk;

    new-instance v4, Lbbo$36;

    invoke-direct {v4, v0, v2}, Lbbo$36;-><init>(Lbbo;Lcma;)V

    .line 4974
    if-nez v1, :cond_1

    .line 4976
    const-string/jumbo v0, "-1"

    sget v1, Laxp$i;->unknown_error:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4978
    const-string/jumbo v0, "updateMeetingAttendee failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "updateObject is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5046
    :cond_1
    new-instance v2, Lbdo;

    invoke-direct {v2}, Lbdo;-><init>()V

    .line 5047
    iget-object v0, v1, Lbfr;->a:Ljava/util/List;

    iput-object v0, v2, Lbdo;->a:Ljava/util/List;

    .line 5048
    const/4 v0, 0x0

    iput-object v0, v2, Lbdo;->b:Ljava/util/List;

    .line 5049
    iget-wide v6, v1, Lbfr;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lbdo;->c:Ljava/lang/Long;

    .line 5050
    iget-object v0, v1, Lbfr;->c:Ljava/lang/String;

    iput-object v0, v2, Lbdo;->d:Ljava/lang/String;

    .line 5051
    iget v0, v1, Lbfr;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lbdo;->e:Ljava/lang/Integer;

    .line 5052
    iget-object v0, v1, Lbfr;->e:Ljava/lang/String;

    iput-object v0, v2, Lbdo;->f:Ljava/lang/String;

    .line 4983
    new-instance v1, Lbbk$50;

    invoke-direct {v1, v3, v4}, Lbbk$50;-><init>(Lbbk;Lcma;)V

    .line 4999
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[DataSourceRemote] updateMeetingAttendee."

    aput-object v5, v0, v4

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 5000
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;

    .line 5001
    new-instance v4, Lbbk$51;

    invoke-direct {v4, v3, v1}, Lbbk$51;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v2, v4}, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;->updateMeetingAttendee(Lbdo;Liyv;)V

    goto :goto_0
.end method
