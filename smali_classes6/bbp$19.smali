.class public final Lbbp$19;
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
.field final synthetic a:Lbez;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbez;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1261
    iput-object p1, p0, Lbbp$19;->c:Lbbp;

    iput-object p2, p0, Lbbp$19;->a:Lbez;

    iput-object p3, p0, Lbbp$19;->b:Lcma;

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
    .line 1264
    iget-object v0, p0, Lbbp$19;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$19;->a:Lbez;

    iget-object v2, p0, Lbbp$19;->b:Lcma;

    .line 5556
    if-nez v1, :cond_0

    .line 5557
    const-string/jumbo v1, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laxp$i;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 5786
    :goto_0
    return-void

    .line 5561
    :cond_0
    iget-object v3, v0, Lbbo;->h:Lbbk;

    new-instance v4, Lbbo$63;

    invoke-direct {v4, v0, v2}, Lbbo$63;-><init>(Lbbo;Lcma;)V

    .line 5781
    if-nez v1, :cond_1

    .line 5783
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5785
    const-string/jumbo v0, "transferTask failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "dingTaskTransferObject is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5789
    :cond_1
    new-instance v2, Lbbk$97;

    invoke-direct {v2, v3, v4}, Lbbk$97;-><init>(Lbbk;Lcma;)V

    .line 5805
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[DataSourceRemote] transferTask."

    aput-object v5, v0, v4

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 5806
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingTaskService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingTaskService;

    .line 6028
    new-instance v4, Lbdb;

    invoke-direct {v4}, Lbdb;-><init>()V

    .line 6030
    iget-wide v6, v1, Lbez;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lbdb;->a:Ljava/lang/Long;

    .line 6031
    iget-object v5, v1, Lbez;->b:Ljava/util/List;

    iput-object v5, v4, Lbdb;->b:Ljava/util/List;

    .line 6032
    iget-boolean v1, v1, Lbez;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v4, Lbdb;->c:Ljava/lang/Boolean;

    .line 5807
    new-instance v1, Lbbk$98;

    invoke-direct {v1, v3, v2}, Lbbk$98;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v4, v1}, Lcom/alibaba/android/ding/data/idl/service/IDLDingTaskService;->transferTask(Lbdb;Liyv;)V

    goto :goto_0
.end method
