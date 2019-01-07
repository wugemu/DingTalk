.class final Lbbp$89;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->a(Lcom/alibaba/android/ding/data/object/RemindAgainObject;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/data/object/RemindAgainObject;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method constructor <init>(Lbbp;Lcom/alibaba/android/ding/data/object/RemindAgainObject;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 834
    iput-object p1, p0, Lbbp$89;->c:Lbbp;

    iput-object p2, p0, Lbbp$89;->a:Lcom/alibaba/android/ding/data/object/RemindAgainObject;

    iput-object p3, p0, Lbbp$89;->b:Lcma;

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
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 837
    iget-object v0, p0, Lbbp$89;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$89;->a:Lcom/alibaba/android/ding/data/object/RemindAgainObject;

    iget-object v2, p0, Lbbp$89;->b:Lcma;

    .line 2812
    iget-object v3, v0, Lbbo;->h:Lbbk;

    new-instance v4, Lbbo$10;

    invoke-direct {v4, v0, v2}, Lbbo$10;-><init>(Lbbo;Lcma;)V

    .line 3360
    if-nez v1, :cond_0

    .line 3361
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "[DataSourceRemote]remindAgainObject is null."

    aput-object v1, v0, v5

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 3363
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3365
    const-string/jumbo v0, "sendDingAgainV2 failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "remindAgainObject is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3374
    :goto_0
    return-void

    .line 3368
    :cond_0
    invoke-static {v1}, Lcom/alibaba/android/ding/data/object/RemindAgainObject;->toIdlModel(Lcom/alibaba/android/ding/data/object/RemindAgainObject;)Lbdw;

    move-result-object v1

    .line 3369
    if-nez v1, :cond_1

    .line 3370
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "[DataSourceRemote]RemindAgainObject.toIdlModel result is null."

    aput-object v1, v0, v5

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 3372
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3377
    :cond_1
    new-instance v2, Lbbk$70;

    invoke-direct {v2, v3, v4}, Lbbk$70;-><init>(Lbbk;Lcma;)V

    .line 3397
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v4, "[DataSourceRemote] sendDingAgainV2."

    aput-object v4, v0, v5

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 3398
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 3399
    new-instance v4, Lbbk$72;

    invoke-direct {v4, v3, v2}, Lbbk$72;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v1, v4}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->sendDingAgainV2(Lbdw;Liyv;)V

    goto :goto_0
.end method
