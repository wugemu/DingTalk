.class final Lfxi$5$2$1;
.super Ljava/lang/Object;
.source "QuotaCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfxi$5$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfxi$5$2;


# direct methods
.method constructor <init>(Lfxi$5$2;Ljava/util/List;)V
    .locals 0
    .param p1, "this$2"    # Lfxi$5$2;

    .prologue
    .line 334
    iput-object p1, p0, Lfxi$5$2$1;->b:Lfxi$5$2;

    iput-object p2, p0, Lfxi$5$2$1;->a:Ljava/util/List;

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
    .line 337
    iget-object v0, p0, Lfxi$5$2$1;->b:Lfxi$5$2;

    iget-object v0, v0, Lfxi$5$2;->a:Lfxi$5;

    iget-object v0, v0, Lfxi$5;->a:Lcma;

    iget-object v1, p0, Lfxi$5$2$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 338
    return-void
.end method
