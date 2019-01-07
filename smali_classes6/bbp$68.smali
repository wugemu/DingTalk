.class final Lbbp$68;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->a(Lcma;)V
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
    .line 563
    iput-object p1, p0, Lbbp$68;->b:Lbbp;

    iput-object p2, p0, Lbbp$68;->a:Lcma;

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
    .line 566
    iget-object v0, p0, Lbbp$68;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$68;->a:Lcma;

    .line 2993
    iget-object v2, v0, Lbbo;->f:Lbgp;

    invoke-interface {v2}, Lbgp;->d()Ljava/util/List;

    move-result-object v2

    .line 3578
    iget-object v3, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->addToOrderlyOrOrderless(Ljava/util/List;)Z

    .line 2994
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 567
    return-void
.end method
