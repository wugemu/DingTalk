.class final Ldbs$2;
.super Lcom/alibaba/wukong/im/MessageChangeListener;
.source "AtMeListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldbs;


# direct methods
.method constructor <init>(Ldbs;)V
    .locals 0
    .param p1, "this$0"    # Ldbs;

    .prologue
    .line 129
    iput-object p1, p0, Ldbs$2;->a:Ldbs;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/MessageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRead(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v1, "readList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 135
    .local v0, "msgId":Ljava/lang/Long;
    if-eqz v0, :cond_0

    iget-object v2, p0, Ldbs$2;->a:Ldbs;

    .line 1026
    iget-object v2, v2, Ldbs;->f:Ljava/util/Map;

    .line 135
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Ldbs$2;->a:Ldbs;

    .line 2026
    iget-object v2, v2, Ldbs;->f:Ljava/util/Map;

    .line 136
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldbs$2;->a:Ldbs;

    .line 3026
    iget-object v2, v2, Ldbs;->f:Ljava/util/Map;

    .line 136
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->isRead()Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    .end local v0    # "msgId":Ljava/lang/Long;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 142
    iget-object v2, p0, Ldbs$2;->a:Ldbs;

    .line 4026
    iget-object v2, v2, Ldbs;->a:Ldbr$b;

    .line 142
    invoke-interface {v2, v1}, Ldbr$b;->a(Ljava/util/List;)V

    .line 145
    .end local v1    # "readList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    return-void
.end method
