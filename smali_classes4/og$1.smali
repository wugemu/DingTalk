.class final Log$1;
.super Landroid/os/Handler;
.source "OrgMemberCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Log;


# direct methods
.method constructor <init>(Log;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Log;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 74
    iput-object p1, p0, Log$1;->a:Log;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 78
    iget-object v1, p0, Log$1;->a:Log;

    .line 1038
    const/4 v5, 0x0

    iput-boolean v5, v1, Log;->e:Z

    .line 79
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 80
    .local v2, "orgId":J
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v4, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v1, p0, Log$1;->a:Log;

    .line 2038
    iget-object v1, v1, Log;->c:Ljava/util/Map;

    .line 81
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 82
    .local v7, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 84
    .local v0, "key":Ljava/lang/Long;
    iget-object v1, p0, Log$1;->a:Log;

    .line 3038
    iget-object v1, v1, Log;->c:Ljava/util/Map;

    .line 84
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 85
    .local v8, "oid":Ljava/lang/Long;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v1, v10, v2

    if-nez v1, :cond_0

    .line 86
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 90
    .end local v0    # "key":Ljava/lang/Long;
    .end local v8    # "oid":Ljava/lang/Long;
    :cond_1
    iget-object v9, p0, Log$1;->a:Log;

    const-wide/16 v10, 0xf

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 4142
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 4143
    :cond_2
    :goto_1
    return-void

    .line 4145
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    new-instance v6, Log$2;

    invoke-direct {v6, v9, v2, v3}, Log$2;-><init>(Log;J)V

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JLjava/util/List;Ljava/lang/Long;Lcma;)V

    goto :goto_1
.end method
