.class final Lddb$3;
.super Ljava/lang/Object;
.source "CategoryManagerPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lddb;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/category/CategoryObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lddb;


# direct methods
.method constructor <init>(Lddb;)V
    .locals 0
    .param p1, "this$0"    # Lddb;

    .prologue
    .line 148
    iput-object p1, p0, Lddb$3;->a:Lddb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lddb$3;->a:Lddb;

    .line 1024
    iget-object v0, v0, Lddb;->a:Ldda$b;

    .line 160
    invoke-interface {v0}, Ldda$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lddb$3;->a:Lddb;

    .line 2024
    iget-object v0, v0, Lddb;->a:Ldda$b;

    .line 161
    invoke-interface {v0, p1, p2}, Ldda$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 148
    check-cast p1, Ljava/util/List;

    .line 2151
    iget-object v2, p0, Lddb$3;->a:Lddb;

    .line 3024
    iget-boolean v2, v2, Lddb;->d:Z

    .line 2151
    if-eqz v2, :cond_a

    .line 2152
    iget-object v6, p0, Lddb$3;->a:Lddb;

    .line 4180
    iget-object v2, v6, Lddb;->a:Ldda$b;

    invoke-interface {v2}, Ldda$b;->d()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4181
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4182
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 4206
    iget-object v2, v6, Lddb;->e:Lcom/alibaba/wukong/im/Conversation;

    if-nez v2, :cond_1

    move-wide v2, v0

    .line 4184
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 4185
    if-eqz v0, :cond_0

    .line 4189
    iget-wide v10, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v10, v11}, Liap;->a(J)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4190
    iget-wide v10, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    cmp-long v1, v2, v10

    if-nez v1, :cond_b

    .line 4191
    iput-object v0, v6, Lddb;->c:Lcom/alibaba/wukong/im/category/CategoryObject;

    move v1, v4

    .line 4195
    :goto_2
    if-nez v1, :cond_0

    .line 4196
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4209
    :cond_1
    iget-object v2, v6, Lddb;->e:Lcom/alibaba/wukong/im/Conversation;

    .line 5079
    if-eqz v2, :cond_2

    .line 5082
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    move v0, v4

    .line 4209
    :goto_3
    if-eqz v0, :cond_3

    .line 4210
    const-wide/16 v0, 0x1

    move-wide v2, v0

    goto :goto_0

    :cond_2
    move v0, v5

    .line 5082
    goto :goto_3

    .line 4212
    :cond_3
    iget-object v0, v6, Lddb;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Liap;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4213
    const-wide/16 v0, 0x6

    move-wide v2, v0

    goto :goto_0

    .line 4215
    :cond_4
    iget-object v0, v6, Lddb;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Liap;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4216
    const-wide/16 v0, 0x3

    move-wide v2, v0

    goto :goto_0

    .line 4218
    :cond_5
    iget-object v0, v6, Lddb;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Liap;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4219
    const-wide/16 v0, 0x2

    move-wide v2, v0

    goto :goto_0

    .line 4221
    :cond_6
    iget-object v0, v6, Lddb;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Liap;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4222
    const-wide/16 v0, 0x4

    move-wide v2, v0

    goto :goto_0

    .line 4224
    :cond_7
    const-wide/16 v0, 0x5

    move-wide v2, v0

    goto :goto_0

    .line 4200
    :cond_8
    iput-object v7, v6, Lddb;->b:Ljava/util/List;

    .line 4201
    iget-object v0, v6, Lddb;->a:Ldda$b;

    iget-object v1, v6, Lddb;->c:Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-interface {v0, v1}, Ldda$b;->a(Lcom/alibaba/wukong/im/category/CategoryObject;)V

    .line 2152
    :cond_9
    :goto_4
    return-void

    .line 2154
    :cond_a
    iget-object v0, p0, Lddb$3;->a:Lddb;

    invoke-static {v0, p1}, Lddb;->a(Lddb;Ljava/util/List;)V

    goto :goto_4

    :cond_b
    move v1, v5

    goto :goto_2
.end method
