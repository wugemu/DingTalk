.class final Lbbp$93;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->a(Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Long;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/lang/Boolean;

.field final synthetic d:Lcma;

.field final synthetic e:Lbbp;


# direct methods
.method constructor <init>(Lbbp;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 871
    iput-object p1, p0, Lbbp$93;->e:Lbbp;

    iput-object p2, p0, Lbbp$93;->a:Ljava/lang/Long;

    iput-object p3, p0, Lbbp$93;->b:Ljava/util/List;

    iput-object p4, p0, Lbbp$93;->c:Ljava/lang/Boolean;

    iput-object p5, p0, Lbbp$93;->d:Lcma;

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
    .line 874
    iget-object v0, p0, Lbbp$93;->e:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$93;->a:Ljava/lang/Long;

    iget-object v2, p0, Lbbp$93;->b:Ljava/util/List;

    iget-object v3, p0, Lbbp$93;->c:Ljava/lang/Boolean;

    iget-object v4, p0, Lbbp$93;->d:Lcma;

    .line 3112
    iget-object v5, v0, Lbbo;->h:Lbbk;

    new-instance v6, Lbbo$15;

    invoke-direct {v6, v0, v4}, Lbbo$15;-><init>(Lbbo;Lcma;)V

    .line 3700
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lbkh;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3702
    :cond_0
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "invalidateDingId"

    invoke-interface {v6, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3704
    const-string/jumbo v0, "addReceiversForDing failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalidate dingId"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3705
    :goto_0
    return-void

    .line 3708
    :cond_1
    new-instance v4, Lbbk$35;

    invoke-direct {v4, v5, v6}, Lbbk$35;-><init>(Lbbk;Lcma;)V

    .line 3724
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "[DataSourceRemote] addReceiversForDing."

    aput-object v7, v0, v6

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 3725
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 3726
    new-instance v6, Lbbk$36;

    invoke-direct {v6, v5, v4}, Lbbk$36;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v1, v2, v3, v6}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->addReceiversForDing(Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Liyv;)V

    goto :goto_0
.end method
