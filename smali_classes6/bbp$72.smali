.class public final Lbbp$72;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 608
    iput-object p1, p0, Lbbp$72;->c:Lbbp;

    iput-object p2, p0, Lbbp$72;->a:Ljava/lang/String;

    iput-object p3, p0, Lbbp$72;->b:Lcom/alibaba/wukong/Callback;

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
    .line 611
    iget-object v0, p0, Lbbp$72;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$72;->a:Ljava/lang/String;

    iget-object v2, p0, Lbbp$72;->b:Lcom/alibaba/wukong/Callback;

    .line 3457
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3458
    const-string/jumbo v1, "-1"

    const-string/jumbo v3, "Not a valid DING"

    invoke-virtual {v0, v2, v1, v3}, Lbbo;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 3459
    :goto_0
    return-void

    .line 3463
    :cond_0
    iget-object v3, v0, Lbbo;->g:Lbgq;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Long;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Lbgq;->a(Ljava/util/List;)I

    .line 3465
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lbbo;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 3468
    invoke-virtual {v0}, Lbbo;->c()V

    .line 3471
    invoke-virtual {v0}, Lbbo;->b()V

    goto :goto_0
.end method
