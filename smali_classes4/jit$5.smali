.class final Ljit$5;
.super Ljava/lang/Object;
.source "ElectionServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljit;->onReportComplete()V
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
    .line 627
    iput-object p1, p0, Ljit$5;->a:Ljit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 631
    const-string/jumbo v0, "ElectionServiceImpl"

    const-string/jumbo v1, "serverElection time out"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    iget-object v0, p0, Ljit$5;->a:Ljit;

    const/4 v1, 0x0

    const/16 v2, -0x9

    invoke-static {v0, v1, v2}, Ljit;->access$000(Ljit;[BI)V

    .line 633
    return-void
.end method
