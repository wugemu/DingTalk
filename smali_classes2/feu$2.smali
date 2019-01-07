.class final Lfeu$2;
.super Ljava/lang/Object;
.source "LoadModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeu;->c(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lfeu;


# direct methods
.method constructor <init>(Lfeu;J)V
    .locals 0
    .param p1, "this$0"    # Lfeu;

    .prologue
    .line 162
    iput-object p1, p0, Lfeu$2;->b:Lfeu;

    iput-wide p2, p0, Lfeu$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 165
    invoke-static {}, Lfdw;->a()Lfdw;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lfeu$2;->b:Lfeu;

    invoke-static {v4}, Lfeu;->a(Lfeu;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", 10"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "createAt DESC"

    invoke-virtual {v2, v3, v4}, Lfdw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 166
    .local v0, "nextPosts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lfeu$2;->b:Lfeu;

    invoke-static {v2}, Lfeu;->b(Lfeu;)Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    move-result-object v2

    iget-wide v4, p0, Lfeu$2;->a:J

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->loadMore(J)V

    .line 169
    iget-object v2, p0, Lfeu$2;->b:Lfeu;

    iget-wide v4, p0, Lfeu$2;->a:J

    invoke-virtual {v2, v4, v5}, Lfeu;->b(J)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v2, p0, Lfeu$2;->b:Lfeu;

    iget-object v3, p0, Lfeu$2;->b:Lfeu;

    invoke-static {v3}, Lfeu;->a(Lfeu;)I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lfeu;->a(Lfeu;I)I

    .line 175
    new-instance v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    invoke-direct {v1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;-><init>()V

    .line 176
    .local v1, "postResultObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;
    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->setPosts(Ljava/util/List;)V

    .line 177
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->setHasMore(Z)V

    .line 179
    iget-object v2, p0, Lfeu$2;->b:Lfeu;

    invoke-static {v2}, Lfeu;->c(Lfeu;)Lcma;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 180
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lfeu$2$1;

    invoke-direct {v3, p0, v1}, Lfeu$2$1;-><init>(Lfeu$2;Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
