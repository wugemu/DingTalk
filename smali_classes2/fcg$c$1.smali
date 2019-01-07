.class final Lfcg$c$1;
.super Ljava/lang/Object;
.source "PostHistoryAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcg$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lfcg$c;


# direct methods
.method constructor <init>(Lfcg$c;J)V
    .locals 0
    .param p1, "this$1"    # Lfcg$c;

    .prologue
    .line 370
    iput-object p1, p0, Lfcg$c$1;->b:Lfcg$c;

    iput-wide p2, p0, Lfcg$c$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 373
    iget-object v4, p0, Lfcg$c$1;->b:Lfcg$c;

    iget-object v4, v4, Lfcg$c;->h:Lfcg;

    invoke-static {v4}, Lfcg;->b(Lfcg;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 392
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-static {}, Lfdo;->a()Lfdo;

    move-result-object v1

    .line 377
    .local v1, "pool":Lfdo;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lfdo;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 379
    .local v0, "params":[Ljava/lang/String;
    iget-wide v4, p0, Lfcg$c$1;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 381
    invoke-static {}, Lfdx;->a()Lfdx;

    move-result-object v4

    const-string/jumbo v5, "postId = ? "

    invoke-virtual {v4, v5, v0}, Lfdx;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 383
    .local v3, "postObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    invoke-virtual {v1, v0}, Lfdo;->release(Ljava/lang/Object;)V

    .line 385
    if-eqz v3, :cond_1

    invoke-static {v3}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 386
    :cond_1
    iget-object v4, p0, Lfcg$c$1;->b:Lfcg$c;

    iget-wide v6, p0, Lfcg$c$1;->a:J

    invoke-static {v4, v6, v7}, Lfcg$c;->a(Lfcg$c;J)V

    goto :goto_0

    .line 389
    :cond_2
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 390
    .local v2, "postObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    invoke-static {}, Lfcn;->a()Lfcn;

    invoke-static {v2}, Lfcn;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    .line 391
    iget-object v4, p0, Lfcg$c$1;->b:Lfcg$c;

    iget-object v4, v4, Lfcg$c;->h:Lfcg;

    invoke-static {v4}, Lfcg;->b(Lfcg;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->a(Landroid/content/Context;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    goto :goto_0
.end method
