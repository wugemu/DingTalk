.class public final Lbbp$94;
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
.field final synthetic a:Ljava/lang/Long;

.field final synthetic b:Z

.field final synthetic c:Lcma;

.field final synthetic d:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Ljava/lang/Long;ZLcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 880
    iput-object p1, p0, Lbbp$94;->d:Lbbp;

    iput-object p2, p0, Lbbp$94;->a:Ljava/lang/Long;

    iput-boolean p3, p0, Lbbp$94;->b:Z

    iput-object p4, p0, Lbbp$94;->c:Lcma;

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
    .line 883
    iget-object v0, p0, Lbbp$94;->d:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$94;->a:Ljava/lang/Long;

    iget-boolean v2, p0, Lbbp$94;->b:Z

    iget-object v3, p0, Lbbp$94;->c:Lcma;

    .line 3133
    iget-object v4, v0, Lbbo;->h:Lbbk;

    new-instance v5, Lbbo$16;

    invoke-direct {v5, v0, v3, v1, v2}, Lbbo$16;-><init>(Lbbo;Lcma;Ljava/lang/Long;Z)V

    .line 3735
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lbkh;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3737
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "invalidate dingId"

    invoke-interface {v5, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3739
    const-string/jumbo v0, "focusDing failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalidate dingId"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3740
    :goto_0
    return-void

    .line 3743
    :cond_0
    new-instance v3, Lbbk$37;

    invoke-direct {v3, v4, v5}, Lbbk$37;-><init>(Lbbk;Lcma;)V

    .line 3759
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[DataSourceRemote] focusDing dingId:"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", isFocus:"

    aput-object v6, v0, v5

    const/4 v5, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 3760
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 3761
    new-instance v5, Lbbk$38;

    invoke-direct {v5, v4, v3}, Lbbk$38;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v1, v2, v5}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->focusDing(Ljava/lang/Long;ZLiyv;)V

    goto :goto_0
.end method
