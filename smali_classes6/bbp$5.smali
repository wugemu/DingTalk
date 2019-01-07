.class public final Lbbp$5;
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

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1142
    iput-object p1, p0, Lbbp$5;->c:Lbbp;

    iput-object p2, p0, Lbbp$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p3, p0, Lbbp$5;->b:Lcma;

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
    const-wide/16 v8, 0x0

    .line 1145
    iget-object v0, p0, Lbbp$5;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbbp$5;->b:Lcma;

    .line 5192
    if-nez v1, :cond_0

    .line 5193
    const-string/jumbo v1, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laxp$i;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 6595
    :goto_0
    return-void

    .line 5197
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    .line 5199
    iget-object v3, v0, Lbbo;->h:Lbbk;

    .line 6109
    invoke-static {v1, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 5199
    new-instance v6, Lbbo$54;

    invoke-direct {v6, v0, v1, v2}, Lbbo$54;-><init>(Lbbo;Ljava/lang/String;Lcma;)V

    .line 6590
    cmp-long v0, v4, v8

    if-gtz v0, :cond_1

    .line 6592
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 6594
    const-string/jumbo v0, "recallDing failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalidate dingId"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6598
    :cond_1
    new-instance v1, Lbbk$84;

    invoke-direct {v1, v3, v6}, Lbbk$84;-><init>(Lbbk;Lcma;)V

    .line 6614
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v6, "[DataSourceRemote] recallDing dingId:"

    aput-object v6, v0, v2

    const/4 v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 6615
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 6616
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v4, Lbbk$85;

    invoke-direct {v4, v3, v1}, Lbbk$85;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v2, v4}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->recallDing(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
