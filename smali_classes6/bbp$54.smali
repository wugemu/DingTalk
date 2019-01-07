.class public final Lbbp$54;
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
.field final synthetic a:Lbfq;

.field final synthetic b:Z

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbfq;Z)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 440
    iput-object p1, p0, Lbbp$54;->c:Lbbp;

    iput-object p2, p0, Lbbp$54;->a:Lbfq;

    iput-boolean p3, p0, Lbbp$54;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 443
    iget-object v0, p0, Lbbp$54;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$54;->a:Lbfq;

    iget-boolean v2, p0, Lbbp$54;->b:Z

    .line 1747
    if-eqz v1, :cond_1

    .line 2056
    iget-object v3, v1, Lbfq;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1751
    if-eqz v3, :cond_1

    .line 1755
    if-eqz v2, :cond_0

    .line 1756
    invoke-static {v3}, Lbkh;->R(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3}, Lbkh;->Q(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1757
    invoke-static {}, Lbbv;->a()Lbbv;

    invoke-static {v1}, Lbbv;->a(Lbfq;)V

    .line 1761
    :cond_0
    invoke-virtual {v0, v3}, Lbbo;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 444
    :cond_1
    return-void
.end method
