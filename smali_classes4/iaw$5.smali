.class final Liaw$5;
.super Ljava/lang/Object;
.source "ConversationServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liaw;->getTotalUnreadCount(Lcom/alibaba/wukong/Callback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Liaw;


# direct methods
.method constructor <init>(Liaw;ZLcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Liaw;

    .prologue
    .line 762
    iput-object p1, p0, Liaw$5;->c:Liaw;

    iput-boolean p2, p0, Liaw$5;->a:Z

    iput-object p3, p0, Liaw$5;->b:Lcom/alibaba/wukong/Callback;

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
    .line 765
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    iget-boolean v2, p0, Liaw$5;->a:Z

    invoke-virtual {v1, v2}, Liar;->a(Z)I

    move-result v0

    .line 766
    .local v0, "total":I
    iget-object v1, p0, Liaw$5;->b:Lcom/alibaba/wukong/Callback;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 767
    return-void
.end method
