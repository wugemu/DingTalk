.class final Lbnp$c$1;
.super Ljava/lang/Object;
.source "PostHistoryAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnp$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lbnp$c;


# direct methods
.method constructor <init>(Lbnp$c;J)V
    .locals 0
    .param p1, "this$1"    # Lbnp$c;

    .prologue
    .line 368
    iput-object p1, p0, Lbnp$c$1;->b:Lbnp$c;

    iput-wide p2, p0, Lbnp$c$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 371
    iget-object v4, p0, Lbnp$c$1;->b:Lbnp$c;

    iget-object v4, v4, Lbnp$c;->h:Lbnp;

    invoke-static {v4}, Lbnp;->b(Lbnp;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 390
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-static {}, Lbox;->a()Lbox;

    move-result-object v1

    .line 375
    .local v1, "pool":Lbox;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lbox;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 377
    .local v0, "params":[Ljava/lang/String;
    iget-wide v4, p0, Lbnp$c$1;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 379
    invoke-static {}, Lbpf;->e()Lbpf;

    move-result-object v4

    const-string/jumbo v5, "postId = ? "

    invoke-virtual {v4, v5, v0}, Lbpf;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 381
    .local v3, "postObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    invoke-virtual {v1, v0}, Lbox;->release(Ljava/lang/Object;)V

    .line 383
    if-eqz v3, :cond_1

    invoke-static {v3}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 384
    :cond_1
    iget-object v4, p0, Lbnp$c$1;->b:Lbnp$c;

    iget-wide v6, p0, Lbnp$c$1;->a:J

    invoke-static {v4, v6, v7}, Lbnp$c;->a(Lbnp$c;J)V

    goto :goto_0

    .line 387
    :cond_2
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 388
    .local v2, "postObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    invoke-static {}, Lbnw;->a()Lbnw;

    invoke-static {v2}, Lbnw;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    .line 389
    iget-object v4, p0, Lbnp$c$1;->b:Lbnp$c;

    iget-object v4, v4, Lbnp$c;->h:Lbnp;

    invoke-static {v4}, Lbnp;->b(Lbnp;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    goto :goto_0
.end method
