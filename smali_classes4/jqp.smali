.class public final Ljqp;
.super Ljava/lang/Object;
.source "PageStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljqp$a;,
        Ljqp$b;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljqp$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljqp;->a:Ljava/util/ArrayList;

    .line 138
    return-void
.end method


# virtual methods
.method public final a()Ljqp$b;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 61
    iget-object v0, p0, Ljqp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljqp;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Ljqp;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljqp$b;

    goto :goto_0
.end method

.method public final a(I)Ljqp$b;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 104
    iget-object v0, p0, Ljqp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljqp$b;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 25
    invoke-virtual {p0}, Ljqp;->a()Ljqp$b;

    move-result-object v1

    iget-boolean v1, v1, Ljqp$b;->d:Z

    if-eqz v1, :cond_1

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    invoke-virtual {p0}, Ljqp;->a()Ljqp$b;

    move-result-object v1

    iput-object p1, v1, Ljqp$b;->c:Ljava/lang/String;

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    new-instance v0, Ljqp$b;

    invoke-direct {v0}, Ljqp$b;-><init>()V

    .line 31
    .local v0, "stackItem":Ljqp$b;
    iput-object p1, v0, Ljqp$b;->c:Ljava/lang/String;

    .line 32
    const/4 v1, 0x0

    iput-object v1, v0, Ljqp$b;->e:Ljqn;

    .line 33
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljqp$b;->d:Z

    .line 34
    iget-object v1, p0, Ljqp;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljqn;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "pageManager"    # Ljqn;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 18
    new-instance v0, Ljqp$b;

    invoke-direct {v0}, Ljqp$b;-><init>()V

    .line 19
    .local v0, "stackItem":Ljqp$b;
    iput-object p1, v0, Ljqp$b;->c:Ljava/lang/String;

    .line 20
    const/4 v1, 0x0

    iput-object v1, v0, Ljqp$b;->e:Ljqn;

    .line 21
    iget-object v1, p0, Ljqp;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public final a(Ljava/util/ArrayList;Ljqn;)V
    .locals 3
    .param p2, "tabManager"    # Ljqn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljqn;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 47
    .local p1, "childStack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljqp;->c()Ljqp$b;

    move-result-object v0

    .line 48
    .local v0, "item":Ljqp$b;
    iget-object v1, v0, Ljqp$b;->c:Ljava/lang/String;

    .line 1039
    new-instance v2, Ljqp$a;

    invoke-direct {v2, p0}, Ljqp$a;-><init>(Ljqp;)V

    .line 1040
    iput-object p1, v2, Ljqp$a;->a:Ljava/util/ArrayList;

    .line 1041
    iput-object p2, v2, Ljqp$a;->e:Ljqn;

    .line 1042
    iput-object v1, v2, Ljqp$a;->c:Ljava/lang/String;

    .line 1043
    iget-object v1, p0, Ljqp;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public final b()Ljqp$b;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 69
    iget-object v0, p0, Ljqp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Ljqp;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Ljqp;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljqp$b;

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljqp$b;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 80
    iget-object v0, p0, Ljqp;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Ljqp;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljqp$b;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 113
    new-instance v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 114
    .local v4, "stackJson":Lcom/alibaba/fastjson/JSONArray;
    iget-object v5, p0, Ljqp;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljqp$b;

    .line 115
    .local v2, "item":Ljqp$b;
    instance-of v6, v2, Ljqp$a;

    if-eqz v6, :cond_1

    .line 116
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .local v0, "childStackJson":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v2

    .line 117
    check-cast v1, Ljqp$a;

    .line 118
    .local v1, "cs":Ljqp$a;
    iget-object v6, v1, Ljqp$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 119
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    .end local v3    # "path":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    .end local v0    # "childStackJson":Lcom/alibaba/fastjson/JSONArray;
    .end local v1    # "cs":Ljqp$a;
    :cond_1
    iget-object v6, v2, Ljqp$b;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    .end local v2    # "item":Ljqp$b;
    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
