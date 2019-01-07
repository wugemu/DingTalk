.class final Lbpw$2;
.super Ljava/lang/Object;
.source "LoadModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lbpw;


# direct methods
.method constructor <init>(Lbpw;J)V
    .locals 0
    .param p1, "this$0"    # Lbpw;

    .prologue
    .line 162
    iput-object p1, p0, Lbpw$2;->b:Lbpw;

    iput-wide p2, p0, Lbpw$2;->a:J

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
    .line 165
    invoke-static {}, Lbpe;->e()Lbpe;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lbpw$2;->b:Lbpw;

    invoke-static {v4}, Lbpw;->a(Lbpw;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", 10"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "createAt DESC"

    invoke-virtual {v2, v3, v4}, Lbpe;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 166
    .local v0, "nextPosts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    iget-object v2, p0, Lbpw$2;->b:Lbpw;

    invoke-static {v2}, Lbpw;->b(Lbpw;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    move-result-object v2

    iget-wide v4, p0, Lbpw$2;->a:J

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->loadMore(J)V

    .line 170
    iget-object v2, p0, Lbpw$2;->b:Lbpw;

    iget-wide v4, p0, Lbpw$2;->a:J

    invoke-virtual {v2, v4, v5}, Lbpw;->b(J)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v2, p0, Lbpw$2;->b:Lbpw;

    iget-object v3, p0, Lbpw$2;->b:Lbpw;

    invoke-static {v3}, Lbpw;->a(Lbpw;)I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lbpw;->a(Lbpw;I)I

    .line 177
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;-><init>()V

    .line 178
    .local v1, "postResultObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->setPosts(Ljava/util/List;)V

    .line 179
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->setHasMore(Z)V

    .line 181
    iget-object v2, p0, Lbpw$2;->b:Lbpw;

    invoke-static {v2}, Lbpw;->c(Lbpw;)Lcma;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 182
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lbpw$2$1;

    invoke-direct {v3, p0, v1}, Lbpw$2$1;-><init>(Lbpw$2;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
