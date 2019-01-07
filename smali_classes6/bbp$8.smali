.class public final Lbbp$8;
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
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Lcma;

.field final synthetic d:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;JILcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1169
    iput-object p1, p0, Lbbp$8;->d:Lbbp;

    iput-wide p2, p0, Lbbp$8;->a:J

    iput p4, p0, Lbbp$8;->b:I

    iput-object p5, p0, Lbbp$8;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1172
    iget-object v0, p0, Lbbp$8;->d:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-wide v2, p0, Lbbp$8;->a:J

    iget v1, p0, Lbbp$8;->b:I

    iget-object v4, p0, Lbbp$8;->c:Lcma;

    .line 5305
    invoke-static {v2, v3}, Lbkh;->a(J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5306
    const-string/jumbo v1, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 5475
    :goto_0
    return-void

    .line 5310
    :cond_0
    iget-object v5, v0, Lbbo;->h:Lbbk;

    new-instance v6, Lbbo$57;

    invoke-direct {v6, v0, v4}, Lbbo$57;-><init>(Lbbo;Lcma;)V

    .line 5470
    invoke-static {v2, v3}, Lbkh;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5472
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5474
    const-string/jumbo v0, "remindLater failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalidate dingId"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5478
    :cond_1
    new-instance v4, Lbbk$76;

    invoke-direct {v4, v5, v6}, Lbbk$76;-><init>(Lbbk;Lcma;)V

    .line 5494
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[DataSourceRemote] remindLater dingId:"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", minutes:"

    aput-object v6, v0, v5

    const/4 v5, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 5495
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 5496
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v5, Lbbx;

    invoke-direct {v5, v4}, Lbbx;-><init>(Lcmi;)V

    invoke-interface {v0, v2, v3, v1, v5}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->remindLater(JLjava/lang/Integer;Liyv;)V

    goto :goto_0
.end method
