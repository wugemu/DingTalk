.class final Ljit$4;
.super Ljava/lang/Object;
.source "ElectionServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljit;->startElection(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljit;


# direct methods
.method constructor <init>(Ljit;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Ljit$4;->a:Ljit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 574
    const-string/jumbo v0, "ElectionServiceImpl"

    const-string/jumbo v1, "time out, onReportComplete"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "pkgs"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ljit$4;->a:Ljit;

    invoke-static {v4}, Ljit;->access$600(Ljit;)Ljava/util/Map;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    iget-object v0, p0, Ljit$4;->a:Ljit;

    invoke-static {v0}, Ljit;->access$700(Ljit;)V

    .line 576
    return-void
.end method
