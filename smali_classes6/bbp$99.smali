.class public final Lbbp$99;
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
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Z

.field final synthetic c:Lcma;

.field final synthetic d:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDing;ZLcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 922
    iput-object p1, p0, Lbbp$99;->d:Lbbp;

    iput-object p2, p0, Lbbp$99;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-boolean p3, p0, Lbbp$99;->b:Z

    iput-object p4, p0, Lbbp$99;->c:Lcma;

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
    .line 925
    iget-object v0, p0, Lbbp$99;->d:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v1

    iget-object v2, p0, Lbbp$99;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-boolean v3, p0, Lbbp$99;->b:Z

    iget-object v4, p0, Lbbp$99;->c:Lcma;

    .line 4360
    if-nez v2, :cond_0

    .line 4361
    const-string/jumbo v0, "-1"

    const-string/jumbo v2, "ding is null"

    invoke-virtual {v1, v4, v0, v2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 4362
    const-string/jumbo v0, "setNonParticipantCheckInConfig failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6912
    :goto_0
    return-void

    .line 5171
    :cond_0
    if-nez v2, :cond_2

    .line 4366
    :cond_1
    :goto_1
    iget-object v5, v1, Lbbo;->h:Lbbk;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    .line 6109
    const-wide/16 v6, 0x0

    invoke-static {v0, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 4366
    new-instance v0, Lbbo$33;

    invoke-direct {v0, v1, v4}, Lbbo$33;-><init>(Lbbo;Lcma;)V

    .line 6908
    invoke-static {v6, v7}, Lbkh;->a(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6910
    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "dingId is invalidate"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5824
    :cond_2
    iget-object v0, v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v0}, Lckm;->a()Ljava/lang/Object;

    move-result-object v0

    .line 5175
    instance-of v5, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    if-eqz v5, :cond_1

    .line 5178
    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    invoke-static {v0}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;)Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    move-result-object v0

    invoke-static {v0, v3}, Lbkm;->a(Lcom/alibaba/android/ding/base/objects/idl/EventModel;Z)Z

    goto :goto_1

    .line 6915
    :cond_3
    new-instance v1, Lbbk$46;

    invoke-direct {v1, v5, v0}, Lbbk$46;-><init>(Lbbk;Lcma;)V

    .line 6931
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "[DataSourceRemote] updateInvitationStatus dingId:"

    aput-object v4, v0, v2

    const/4 v2, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x2

    const-string/jumbo v4, ", enable:"

    aput-object v4, v0, v2

    const/4 v2, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 6932
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;

    .line 6933
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lbbk$47;

    invoke-direct {v4, v5, v1}, Lbbk$47;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;->setNonParticipantCheckInConfig(Ljava/lang/Long;Ljava/lang/Boolean;Liyv;)V

    goto :goto_0
.end method
