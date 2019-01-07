.class Lcom/taobao/taolive/sdk/component/ChatFrame$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ChatFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/taolive/sdk/component/ChatFrame;->onCreateView(Landroid/view/ViewStub;)V
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
    .line 84
    iput-object p1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$1;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 88
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$1;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-static {v0, p2}, Lcom/taobao/taolive/sdk/component/ChatFrame;->access$002(Lcom/taobao/taolive/sdk/component/ChatFrame;I)I

    .line 89
    return-void
.end method
