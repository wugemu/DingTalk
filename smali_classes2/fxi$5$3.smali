.class final Lfxi$5$3;
.super Ljava/lang/Object;
.source "QuotaCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfxi$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfxi$5;


# direct methods
.method constructor <init>(Lfxi$5;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lfxi$5;

    .prologue
    .line 361
    iput-object p1, p0, Lfxi$5$3;->b:Lfxi$5;

    iput-object p2, p0, Lfxi$5$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 364
    iget-object v0, p0, Lfxi$5$3;->b:Lfxi$5;

    iget-object v0, v0, Lfxi$5;->a:Lcma;

    iget-object v1, p0, Lfxi$5$3;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 365
    return-void
.end method
