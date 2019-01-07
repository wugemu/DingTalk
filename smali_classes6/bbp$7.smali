.class public final Lbbp$7;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcma;

.field final synthetic d:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Ljava/lang/String;JLcma;)V
    .locals 1
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1160
    iput-object p1, p0, Lbbp$7;->d:Lbbp;

    iput-object p2, p0, Lbbp$7;->a:Ljava/lang/String;

    iput-wide p3, p0, Lbbp$7;->b:J

    iput-object p5, p0, Lbbp$7;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1163
    iget-object v0, p0, Lbbp$7;->d:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$7;->a:Ljava/lang/String;

    iget-wide v2, p0, Lbbp$7;->b:J

    iget-object v4, p0, Lbbp$7;->c:Lcma;

    .line 5282
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5283
    const-string/jumbo v1, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 6657
    :goto_0
    return-void

    .line 5287
    :cond_0
    iget-object v5, v0, Lbbo;->h:Lbbk;

    .line 6109
    const-wide/16 v6, 0x0

    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 5287
    new-instance v1, Lbbo$56;

    invoke-direct {v1, v0, v4}, Lbbo$56;-><init>(Lbbo;Lcma;)V

    .line 6652
    invoke-static {v6, v7}, Lbkh;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6654
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 6656
    const-string/jumbo v0, "updateRecorderId failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "dingId is invalid"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6660
    :cond_1
    new-instance v4, Lbbk$88;

    invoke-direct {v4, v5, v1}, Lbbk$88;-><init>(Lbbk;Lcma;)V

    .line 6676
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v8, "[DataSourceRemote] updateDingDeadLine dingId:"

    aput-object v8, v0, v1

    const/4 v1, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v8, ", uid:"

    aput-object v8, v0, v1

    const/4 v1, 0x3

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 6677
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;

    .line 6678
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lbbk$89;

    invoke-direct {v3, v5, v4}, Lbbk$89;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;->updateRecorderId(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
