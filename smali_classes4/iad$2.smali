.class final Liad$2;
.super Ljava/lang/Object;
.source "EventPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liad;->a(Lcom/alibaba/wukong/im/IMStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/IMStatus;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/IMStatus;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Liad$2;->a:Lcom/alibaba/wukong/im/IMStatus;

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
    .line 60
    invoke-static {}, Liad;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/StatusNotifyListener;

    .line 61
    .local v0, "listener":Lcom/alibaba/wukong/im/StatusNotifyListener;
    iget-object v2, p0, Liad$2;->a:Lcom/alibaba/wukong/im/IMStatus;

    invoke-virtual {v0, v2}, Lcom/alibaba/wukong/im/StatusNotifyListener;->onStatusChanged(Lcom/alibaba/wukong/im/IMStatus;)V

    goto :goto_0

    .line 63
    .end local v0    # "listener":Lcom/alibaba/wukong/im/StatusNotifyListener;
    :cond_0
    return-void
.end method
