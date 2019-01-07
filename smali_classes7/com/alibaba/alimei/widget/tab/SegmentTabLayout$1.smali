.class Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$1;
.super Ljava/lang/Object;
.source "SegmentTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->addTab(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$1;->this$0:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 199
    .local v0, "position":I
    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$1;->this$0:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;

    invoke-static {v1}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->access$000(Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 200
    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$1;->this$0:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->setCurrentTab(I)V

    .line 201
    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$1;->this$0:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;

    invoke-static {v1}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->access$100(Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;)Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$1;->this$0:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;

    invoke-static {v1}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->access$100(Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;)Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;->onTabSelect(I)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$1;->this$0:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;

    invoke-static {v1}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->access$100(Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;)Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$1;->this$0:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;

    invoke-static {v1}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->access$100(Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;)Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;->onTabReselect(I)V

    goto :goto_0
.end method
