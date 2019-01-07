.class Lcom/alibaba/doraemon/impl/request/CacheClientManager$2$1;
.super Lcom/alibaba/doraemon/impl/request/CacheClientManager$ResponseImpl;
.source "CacheClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/CacheClientManager$2;->onReadData(Lcom/alibaba/doraemon/request/Request;)Lcom/alibaba/doraemon/request/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/request/CacheClientManager$2;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/request/CacheClientManager$2;Lcom/alibaba/doraemon/cache/CacheEntity;)V
    .locals 1
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/request/CacheClientManager$2;
    .param p2, "cache"    # Lcom/alibaba/doraemon/cache/CacheEntity;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/CacheClientManager$2$1;->this$1:Lcom/alibaba/doraemon/impl/request/CacheClientManager$2;

    iget-object v0, p1, Lcom/alibaba/doraemon/impl/request/CacheClientManager$2;->this$0:Lcom/alibaba/doraemon/impl/request/CacheClientManager;

    invoke-direct {p0, v0, p2}, Lcom/alibaba/doraemon/impl/request/CacheClientManager$ResponseImpl;-><init>(Lcom/alibaba/doraemon/impl/request/CacheClientManager;Lcom/alibaba/doraemon/cache/CacheEntity;)V

    return-void
.end method
