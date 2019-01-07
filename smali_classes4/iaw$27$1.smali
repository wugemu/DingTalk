.class final Liaw$27$1;
.super Ljava/lang/Object;
.source "ConversationServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liaw$27;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Liaw$27;


# direct methods
.method constructor <init>(Liaw$27;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Liaw$27;

    .prologue
    .line 1578
    iput-object p1, p0, Liaw$27$1;->b:Liaw$27;

    iput-object p2, p0, Liaw$27$1;->a:Ljava/util/List;

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
    .line 1581
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    iget-object v2, p0, Liaw$27$1;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Liar;->f(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 1582
    .local v0, "getList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Liaw$27$1;->b:Liaw$27;

    iget-object v1, v1, Liaw$27;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 1583
    return-void
.end method
