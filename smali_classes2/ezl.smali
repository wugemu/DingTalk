.class public final Lezl;
.super Ljava/lang/Object;
.source "AlphaDevicePresenter.java"

# interfaces
.implements Lezk$a;


# instance fields
.field a:Lezk$b;

.field private b:J

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;JLezk$b;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J
    .param p4, "view"    # Lezk$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lezl;->c:Landroid/app/Activity;

    .line 40
    iput-wide p2, p0, Lezl;->b:J

    .line 41
    iput-object p4, p0, Lezl;->a:Lezk$b;

    .line 43
    iget-object v0, p0, Lezl;->a:Lezk$b;

    invoke-interface {v0, p0}, Lezk$b;->setPresenter(Lcjd;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 48
    new-instance v0, Lezl$1;

    invoke-direct {v0, p0}, Lezl$1;-><init>(Lezl;)V

    .line 73
    .local v0, "listener":Lcma;, "Lcma<Ljava/util/List<Lfrr;>;>;"
    iget-object v1, p0, Lezl;->c:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 74
    const-class v1, Lcma;

    iget-object v2, p0, Lezl;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Ljava/util/List<Lfrr;>;>;"
    check-cast v0, Lcma;

    .line 77
    .restart local v0    # "listener":Lcma;, "Lcma<Ljava/util/List<Lfrr;>;>;"
    :cond_0
    iget-object v1, p0, Lezl;->a:Lezk$b;

    invoke-interface {v1}, Lezk$b;->b()V

    .line 78
    invoke-static {}, Lfbf;->a()Lfbf;

    move-result-object v1

    iget-wide v2, p0, Lezl;->b:J

    .line 1078
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    .line 1079
    if-eqz v0, :cond_1

    .line 1080
    const-string/jumbo v1, "err_parameter"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lezg$l;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :cond_1
    :goto_0
    return-void

    .line 1085
    :cond_2
    new-instance v4, Lfbf$2;

    invoke-direct {v4, v1, v0}, Lfbf$2;-><init>(Lfbf;Lcma;)V

    .line 1092
    const-class v1, Lcom/alibaba/android/user/idl/services/OpenDeviceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/OpenDeviceIService;

    .line 1093
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/alibaba/android/user/idl/services/OpenDeviceIService;->listUserVisibleDeviceEntry(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method
