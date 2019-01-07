.class final Lbbp$6;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->a(Ljava/lang/String;JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcma;

.field final synthetic d:Lbbp;


# direct methods
.method constructor <init>(Lbbp;Ljava/lang/String;JLcma;)V
    .locals 1
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1151
    iput-object p1, p0, Lbbp$6;->d:Lbbp;

    iput-object p2, p0, Lbbp$6;->a:Ljava/lang/String;

    iput-wide p3, p0, Lbbp$6;->b:J

    iput-object p5, p0, Lbbp$6;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    .line 1154
    iget-object v0, p0, Lbbp$6;->d:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v2

    iget-object v3, p0, Lbbp$6;->a:Ljava/lang/String;

    iget-wide v4, p0, Lbbp$6;->b:J

    iget-object v6, p0, Lbbp$6;->c:Lcma;

    .line 5246
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5247
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v0, v1}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 6626
    :goto_0
    return-void

    .line 5251
    :cond_0
    iget-object v7, v2, Lbbo;->h:Lbbk;

    .line 6109
    invoke-static {v3, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 5251
    new-instance v1, Lbbo$55;

    invoke-direct/range {v1 .. v6}, Lbbo$55;-><init>(Lbbo;Ljava/lang/String;JLcma;)V

    .line 6621
    cmp-long v0, v8, v10

    if-gtz v0, :cond_1

    .line 6623
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 6625
    const-string/jumbo v0, "updateDingDeadline failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalidate dingId"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6629
    :cond_1
    new-instance v2, Lbbk$86;

    invoke-direct {v2, v7, v1}, Lbbk$86;-><init>(Lbbk;Lcma;)V

    .line 6645
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "[DataSourceRemote] updateDingDeadLine dingId:"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v3, ", blockTime:"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 6646
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 6647
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lbbk$87;

    invoke-direct {v4, v7, v2}, Lbbk$87;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v1, v3, v4}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->updateDingDeadLine(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
