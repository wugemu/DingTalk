.class final Lbbp$90;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

.field final synthetic c:Lcma;

.field final synthetic d:Lbbp;


# direct methods
.method constructor <init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 844
    iput-object p1, p0, Lbbp$90;->d:Lbbp;

    iput-object p2, p0, Lbbp$90;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p3, p0, Lbbp$90;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    iput-object p4, p0, Lbbp$90;->c:Lcma;

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
    .line 847
    iget-object v0, p0, Lbbp$90;->d:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$90;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbbp$90;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    iget-object v3, p0, Lbbp$90;->c:Lcma;

    .line 2327
    if-eqz v1, :cond_0

    .line 2330
    iget-object v4, v0, Lbbo;->h:Lbbk;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v6

    new-instance v7, Lbbo$2;

    invoke-direct {v7, v0, v1, v2, v3}, Lbbo$2;-><init>(Lbbo;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;Lcma;)V

    .line 2589
    invoke-static {v5}, Lbkh;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2591
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    const-string/jumbo v0, "setDingOperationStatus failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalidate dingId"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2594
    :cond_0
    :goto_0
    return-void

    .line 2597
    :cond_1
    new-instance v1, Lbbk$28;

    invoke-direct {v1, v4, v7}, Lbbk$28;-><init>(Lbbk;Lcma;)V

    .line 2613
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[DataSourceRemote] setDingOperationStatus dingId:"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v5, v0, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", dingOperationStatus:"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 2614
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 2615
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lbbk$29;

    invoke-direct {v5, v4, v1}, Lbbk$29;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v2, v3, v5}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->changeDingStatus(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method
