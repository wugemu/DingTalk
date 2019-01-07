.class final Lbbp$91;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->d(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lbbp;


# direct methods
.method constructor <init>(Lbbp;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 853
    iput-object p1, p0, Lbbp$91;->b:Lbbp;

    iput-object p2, p0, Lbbp$91;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 856
    iget-object v0, p0, Lbbp$91;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$91;->a:Lcma;

    .line 3166
    iget-object v2, v0, Lbbo;->h:Lbbk;

    new-instance v3, Lbbo$17;

    invoke-direct {v3, v0, v1}, Lbbo$17;-><init>(Lbbo;Lcma;)V

    .line 3620
    new-instance v1, Lbbk$30;

    invoke-direct {v1, v2, v3}, Lbbk$30;-><init>(Lbbk;Lcma;)V

    .line 3636
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[DataSourceRemote] clearDeletedDings."

    aput-object v4, v0, v3

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 3637
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 3638
    new-instance v3, Lbbk$31;

    invoke-direct {v3, v2, v1}, Lbbk$31;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v3}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->clearDeletedDingList(Liyv;)V

    .line 857
    return-void
.end method
