.class final Lfdp$2;
.super Ljava/lang/Object;
.source "CommentPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfdp;->a(Landroid/app/Activity;Ljava/lang/String;Lcov;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lfdu;

.field final synthetic c:Lcov;


# direct methods
.method constructor <init>(Ljava/lang/String;Lfdu;Lcov;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lfdp$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lfdp$2;->b:Lfdu;

    iput-object p3, p0, Lfdp$2;->c:Lcov;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 230
    invoke-static {}, Lfdo;->a()Lfdo;

    move-result-object v3

    .line 231
    .local v3, "pool":Lfdo;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lfdo;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 233
    .local v2, "params":[Ljava/lang/String;
    iget-object v4, p0, Lfdp$2;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 234
    iget-object v4, p0, Lfdp$2;->b:Lfdu;

    sget-object v5, Lfdt$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lfdu;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 235
    .local v1, "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/draft/CommentDraft;>;"
    invoke-static {v1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 236
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/draft/CommentDraft;

    .line 237
    .local v0, "d":Lcom/alibaba/android/user/connection/draft/CommentDraft;
    if-eqz v0, :cond_0

    .line 238
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lfdp$2$1;

    invoke-direct {v5, p0, v0}, Lfdp$2$1;-><init>(Lfdp$2;Lcom/alibaba/android/user/connection/draft/CommentDraft;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 248
    .end local v0    # "d":Lcom/alibaba/android/user/connection/draft/CommentDraft;
    :cond_0
    invoke-virtual {v3, v2}, Lfdo;->release(Ljava/lang/Object;)V

    .line 249
    return-void
.end method
