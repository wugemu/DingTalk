.class final Ldea$10;
.super Ljava/lang/Object;
.source "ChatSendPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldea;->a(ZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Ldea;


# direct methods
.method constructor <init>(Ldea;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Ldea;

    .prologue
    .line 405
    iput-object p1, p0, Ldea$10;->c:Ldea;

    iput-object p2, p0, Ldea$10;->a:Ljava/util/List;

    iput-boolean p3, p0, Ldea$10;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 408
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ldea$10;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 409
    iget-object v2, p0, Ldea$10;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 410
    .local v1, "photo":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    if-eqz v1, :cond_1

    .line 413
    invoke-static {}, Lddp;->a()V

    .line 414
    iget-object v2, p0, Ldea$10;->c:Ldea;

    .line 1095
    iget-boolean v2, v2, Ldea;->d:Z

    .line 414
    if-eqz v2, :cond_3

    .line 415
    iget-object v2, p0, Ldea$10;->c:Ldea;

    .line 2095
    invoke-virtual {v2}, Ldea;->a()Ldiz;

    move-result-object v5

    .line 415
    iget-object v6, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    iget-boolean v2, p0, Ldea$10;->b:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->isCompressed:Z

    if-nez v2, :cond_2

    :cond_0
    move v2, v4

    :goto_1
    invoke-virtual {v5, v6, v2}, Ldiz;->a(Ljava/lang/String;I)Z

    .line 425
    :goto_2
    const-wide/16 v6, 0x1f4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 415
    goto :goto_1

    .line 417
    :cond_3
    iget-object v2, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 418
    iget-object v2, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    .line 421
    :cond_4
    iget-object v2, p0, Ldea$10;->c:Ldea;

    .line 3095
    invoke-virtual {v2}, Ldea;->a()Ldiz;

    move-result-object v5

    .line 421
    iget-object v6, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    iget-object v7, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    iget-boolean v2, p0, Ldea$10;->b:Z

    if-nez v2, :cond_5

    iget-boolean v2, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->isCompressed:Z

    if-nez v2, :cond_6

    :cond_5
    move v2, v4

    :goto_4
    invoke-virtual {v5, v6, v7, v2}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_3

    .line 429
    .end local v1    # "photo":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_7
    return-void
.end method
