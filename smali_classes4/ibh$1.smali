.class final Libh$1;
.super Ljava/lang/Object;
.source "GroupNickEventPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Libh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Libh;


# direct methods
.method constructor <init>(Libh;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Libh;

    .prologue
    .line 103
    iput-object p1, p0, Libh$1;->b:Libh;

    iput-object p2, p0, Libh$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 106
    iget-object v1, p0, Libh$1;->b:Libh;

    invoke-static {v1}, Libh;->a(Libh;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/GroupNickListener;

    .line 107
    .local v0, "listener":Lcom/alibaba/wukong/im/GroupNickListener;
    if-eqz v0, :cond_0

    .line 108
    iget-object v2, p0, Libh$1;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/GroupNickListener;->onGroupNickUpdated(Ljava/util/List;)V

    goto :goto_0

    .line 111
    .end local v0    # "listener":Lcom/alibaba/wukong/im/GroupNickListener;
    :cond_1
    return-void
.end method
