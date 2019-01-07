.class final Lbbp$74;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->b(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method constructor <init>(Lbbp;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 626
    iput-object p1, p0, Lbbp$74;->c:Lbbp;

    iput-object p2, p0, Lbbp$74;->a:Ljava/lang/String;

    iput-object p3, p0, Lbbp$74;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 629
    iget-object v0, p0, Lbbp$74;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$74;->a:Ljava/lang/String;

    iget-object v2, p0, Lbbp$74;->b:Lcma;

    .line 2746
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2747
    const-string/jumbo v1, "-1"

    const-string/jumbo v3, "Not a valid DING"

    invoke-virtual {v0, v2, v1, v3}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 3457
    :goto_0
    return-void

    .line 2750
    :cond_0
    iget-object v3, v0, Lbbo;->h:Lbbk;

    new-instance v4, Lbbo$7;

    invoke-direct {v4, v0, v2}, Lbbo$7;-><init>(Lbbo;Lcma;)V

    .line 3454
    invoke-static {v1}, Lbkh;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3455
    if-eqz v4, :cond_1

    .line 3456
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

    .line 3459
    :cond_1
    const-string/jumbo v0, "getReceiverUids failed"

    const-string/jumbo v2, "-1"

    const-string/jumbo v5, "invalidate dingId"

    invoke-static {v0, v2, v5}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3462
    :cond_2
    new-instance v2, Lbbk$21;

    invoke-direct {v2, v3, v4}, Lbbk$21;-><init>(Lbbk;Lcma;)V

    .line 3478
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[DataSourceRemote] getReceiverUids id:"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    aput-object v1, v0, v4

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 3479
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 3480
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    new-instance v4, Lbbk$23;

    invoke-direct {v4, v3, v2}, Lbbk$23;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v1, v4}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->getDingReceiverUids(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
