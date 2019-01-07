.class public final Lbbp$22;
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1297
    iput-object p1, p0, Lbbp$22;->c:Lbbp;

    iput-object p2, p0, Lbbp$22;->a:Ljava/util/List;

    iput-object p3, p0, Lbbp$22;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1300
    iget-object v0, p0, Lbbp$22;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$22;->a:Ljava/util/List;

    iget-object v2, p0, Lbbp$22;->b:Lcom/alibaba/wukong/Callback;

    .line 5763
    invoke-virtual {v0, v1}, Lbbo;->c(Ljava/util/List;)Z

    move-result v0

    .line 5764
    if-eqz v0, :cond_0

    .line 5765
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 5767
    :cond_0
    const-string/jumbo v1, "-1"

    const-string/jumbo v3, "[dealWithSyncData]failed"

    invoke-static {v2, v1, v3}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 5768
    const-string/jumbo v1, "deal with sync ding events failed"

    const-string/jumbo v2, "-1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "retDingSync:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 5770
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5768
    invoke-static {v1, v2, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
