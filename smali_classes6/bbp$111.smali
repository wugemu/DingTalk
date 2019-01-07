.class final Lbbp$111;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->a(JJILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Lcma;

.field final synthetic e:Lbbp;


# direct methods
.method constructor <init>(Lbbp;JJILcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1048
    iput-object p1, p0, Lbbp$111;->e:Lbbp;

    iput-wide p2, p0, Lbbp$111;->a:J

    iput-wide p4, p0, Lbbp$111;->b:J

    iput p6, p0, Lbbp$111;->c:I

    iput-object p7, p0, Lbbp$111;->d:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1051
    iget-object v0, p0, Lbbp$111;->e:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-wide v2, p0, Lbbp$111;->a:J

    iget-wide v4, p0, Lbbp$111;->b:J

    iget v6, p0, Lbbp$111;->c:I

    iget-object v1, p0, Lbbp$111;->d:Lcma;

    .line 4867
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gtz v7, :cond_0

    .line 4868
    const-string/jumbo v2, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laxp$i;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 5852
    :goto_0
    return-void

    .line 4871
    :cond_0
    iget-object v8, v0, Lbbo;->h:Lbbk;

    new-instance v7, Lbbo$46;

    invoke-direct {v7, v0, v1}, Lbbo$46;-><init>(Lbbo;Lcma;)V

    .line 5847
    invoke-static {v2, v3}, Lbkh;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5849
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5851
    const-string/jumbo v0, "getSubTaskModels failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalidate parentDingId"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5855
    :cond_1
    new-instance v0, Lbbk$99;

    invoke-direct {v0, v8, v7}, Lbbk$99;-><init>(Lbbk;Lcma;)V

    .line 5880
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v9, "[DataSourceRemote] getSubTaskModels parentDingId:"

    aput-object v9, v1, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v7

    const/4 v7, 0x2

    const-string/jumbo v9, ", cursor:"

    aput-object v9, v1, v7

    const/4 v7, 0x3

    .line 5881
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v7

    const/4 v7, 0x4

    const-string/jumbo v9, ", size:"

    aput-object v9, v1, v7

    const/4 v7, 0x5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v7

    .line 5880
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 5882
    const-class v1, Lcom/alibaba/android/ding/data/idl/service/IDLDingTaskService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/data/idl/service/IDLDingTaskService;

    .line 5883
    new-instance v7, Lbbk$100;

    invoke-direct {v7, v8, v0}, Lbbk$100;-><init>(Lbbk;Lcmi;)V

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/android/ding/data/idl/service/IDLDingTaskService;->getSubTaskModels(JJILiyv;)V

    goto :goto_0
.end method
