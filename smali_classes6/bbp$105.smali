.class final Lbbp$105;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->a(Lbfu;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbfu;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method constructor <init>(Lbbp;Lbfu;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 994
    iput-object p1, p0, Lbbp$105;->c:Lbbp;

    iput-object p2, p0, Lbbp$105;->a:Lbfu;

    iput-object p3, p0, Lbbp$105;->b:Lcma;

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
    .line 997
    iget-object v0, p0, Lbbp$105;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$105;->a:Lbfu;

    iget-object v2, p0, Lbbp$105;->b:Lcma;

    .line 4592
    if-nez v1, :cond_0

    .line 4593
    const-string/jumbo v1, "-1"

    const-string/jumbo v3, "updateMeetingTime meetingTimeUpdateObject is null"

    invoke-virtual {v0, v2, v1, v3}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 5026
    :goto_0
    return-void

    .line 4596
    :cond_0
    iget-object v3, v0, Lbbo;->h:Lbbk;

    new-instance v4, Lbbo$41;

    invoke-direct {v4, v0, v2}, Lbbo$41;-><init>(Lbbo;Lcma;)V

    .line 5022
    if-nez v1, :cond_1

    .line 5024
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "[DataSourceRemote] updateMeetingTime object is null"

    invoke-interface {v4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5056
    :cond_1
    new-instance v2, Lbds;

    invoke-direct {v2}, Lbds;-><init>()V

    .line 5057
    iget-wide v6, v1, Lbfu;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lbds;->a:Ljava/lang/Long;

    .line 5058
    iget v0, v1, Lbfu;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lbds;->b:Ljava/lang/Integer;

    .line 5059
    iget-wide v6, v1, Lbfu;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lbds;->c:Ljava/lang/Long;

    .line 5060
    iget-wide v6, v1, Lbfu;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lbds;->d:Ljava/lang/Long;

    .line 5061
    iget-object v0, v1, Lbfu;->e:Ljava/lang/String;

    iput-object v0, v2, Lbds;->e:Ljava/lang/String;

    .line 5062
    iget-object v0, v1, Lbfu;->f:Ljava/lang/String;

    iput-object v0, v2, Lbds;->f:Ljava/lang/String;

    .line 5063
    const/4 v0, 0x0

    iput-object v0, v2, Lbds;->g:Ljava/util/Map;

    .line 5064
    iget-boolean v0, v1, Lbfu;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lbds;->h:Ljava/lang/Boolean;

    .line 5029
    new-instance v1, Lbbk$10;

    invoke-direct {v1, v3, v4}, Lbbk$10;-><init>(Lbbk;Lcma;)V

    .line 5044
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;

    .line 5045
    new-instance v4, Lbbk$11;

    invoke-direct {v4, v3, v1}, Lbbk$11;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v2, v4}, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;->updateMeetingTime(Lbds;Liyv;)V

    goto :goto_0
.end method
