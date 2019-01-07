.class final Ldnf$1;
.super Ljava/lang/Object;
.source "MdPreparser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldnf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldnf$a;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ldnf;


# direct methods
.method constructor <init>(Ldnf;Ldnf$a;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Ldnf;

    .prologue
    .line 62
    iput-object p1, p0, Ldnf$1;->c:Ldnf;

    iput-object p2, p0, Ldnf$1;->a:Ldnf$a;

    iput-object p3, p0, Ldnf$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    iget-object v3, p0, Ldnf$1;->c:Ldnf;

    .line 1034
    iget-boolean v3, v3, Ldnf;->a:Z

    .line 65
    if-eqz v3, :cond_0

    .line 66
    iget-object v3, p0, Ldnf$1;->c:Ldnf;

    iget-object v4, p0, Ldnf$1;->a:Ldnf$a;

    .line 2034
    invoke-virtual {v3, v4}, Ldnf;->a(Ldnf$a;)V

    .line 86
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v3, p0, Ldnf$1;->b:Ljava/lang/Object;

    instance-of v3, v3, Lcom/alibaba/wukong/im/Message;

    if-eqz v3, :cond_3

    .line 71
    iget-object v3, p0, Ldnf$1;->b:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Ldnf$1;->c:Ldnf;

    .line 3034
    iget-boolean v3, v3, Ldnf;->a:Z

    .line 81
    if-eqz v3, :cond_5

    .line 82
    :cond_2
    iget-object v3, p0, Ldnf$1;->c:Ldnf;

    iget-object v4, p0, Ldnf$1;->a:Ldnf$a;

    .line 4034
    invoke-virtual {v3, v4}, Ldnf;->a(Ldnf$a;)V

    goto :goto_0

    .line 72
    :cond_3
    iget-object v3, p0, Ldnf$1;->b:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 73
    iget-object v0, p0, Ldnf$1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 74
    .local v0, "dataList":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 75
    .local v2, "object":Ljava/lang/Object;
    instance-of v4, v2, Lcom/alibaba/wukong/im/Message;

    if-eqz v4, :cond_4

    .line 76
    check-cast v2, Lcom/alibaba/wukong/im/Message;

    .end local v2    # "object":Ljava/lang/Object;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    .end local v0    # "dataList":Ljava/util/List;
    :cond_5
    iget-object v3, p0, Ldnf$1;->c:Ldnf;

    iget-object v4, p0, Ldnf$1;->a:Ldnf$a;

    invoke-static {v3, v1, v4}, Ldnf;->a(Ldnf;Ljava/util/List;Ldnf$a;)V

    goto :goto_0
.end method
