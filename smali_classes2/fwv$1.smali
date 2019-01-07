.class final Lfwv$1;
.super Ljava/lang/Object;
.source "BlacklistBizService.java"

# interfaces
.implements Lcom/alibaba/wukong/im/BlacklistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfwv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfwv;


# direct methods
.method constructor <init>(Lfwv;)V
    .locals 0
    .param p1, "this$0"    # Lfwv;

    .prologue
    .line 47
    iput-object p1, p0, Lfwv$1;->a:Lfwv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Blacklist;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 51
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Blacklist;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 66
    :cond_0
    return-void

    .line 55
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Blacklist;

    .line 56
    .local v0, "blacklist":Lcom/alibaba/wukong/im/Blacklist;
    if-eqz v0, :cond_2

    .line 60
    iget-object v2, p0, Lfwv$1;->a:Lfwv;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Blacklist;->getStatus()Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    move-result-object v3

    invoke-static {v2, v3}, Lfwv;->a(Lfwv;Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    iget-object v2, p0, Lfwv$1;->a:Lfwv;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Blacklist;->getOpenId()J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-static {v2, v4, v5, v3}, Lfwv;->a(Lfwv;JZ)V

    goto :goto_0

    .line 63
    :cond_3
    iget-object v2, p0, Lfwv$1;->a:Lfwv;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Blacklist;->getOpenId()J

    move-result-wide v4

    const/4 v3, 0x0

    invoke-static {v2, v4, v5, v3}, Lfwv;->a(Lfwv;JZ)V

    goto :goto_0
.end method
