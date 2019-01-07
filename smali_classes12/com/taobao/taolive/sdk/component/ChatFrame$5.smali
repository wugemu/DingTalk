.class Lcom/taobao/taolive/sdk/component/ChatFrame$5;
.super Ljava/lang/Object;
.source "ChatFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/taolive/sdk/component/ChatFrame;->scrollToEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;


# direct methods
.method constructor <init>(Lcom/taobao/taolive/sdk/component/ChatFrame;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/taolive/sdk/component/ChatFrame;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$5;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 317
    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$5;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-static {v1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->access$300(Lcom/taobao/taolive/sdk/component/ChatFrame;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$5;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-static {v1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->access$800(Lcom/taobao/taolive/sdk/component/ChatFrame;)Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 319
    .local v0, "item":I
    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$5;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-static {v1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->access$900(Lcom/taobao/taolive/sdk/component/ChatFrame;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 321
    .end local v0    # "item":I
    :cond_0
    return-void
.end method
