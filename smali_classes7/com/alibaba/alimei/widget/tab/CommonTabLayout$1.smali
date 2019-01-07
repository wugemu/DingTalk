.class Lcom/alibaba/alimei/widget/tab/CommonTabLayout$1;
.super Ljava/lang/Object;
.source "CommonTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->addTab(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/widget/tab/CommonTabLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/widget/tab/CommonTabLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/widget/tab/CommonTabLayout;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$1;->this$0:Lcom/alibaba/alimei/widget/tab/CommonTabLayout;

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
    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 241
    .local v0, "position":I
    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$1;->this$0:Lcom/alibaba/alimei/widget/tab/CommonTabLayout;

    invoke-static {v1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->access$000(Lcom/alibaba/alimei/widget/tab/CommonTabLayout;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 242
    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$1;->this$0:Lcom/alibaba/alimei/widget/tab/CommonTabLayout;

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->setCurrentTab(I)V

    .line 243
    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$1;->this$0:Lcom/alibaba/alimei/widget/tab/CommonTabLayout;

    invoke-static {v1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->access$100(Lcom/alibaba/alimei/widget/tab/CommonTabLayout;)Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$1;->this$0:Lcom/alibaba/alimei/widget/tab/CommonTabLayout;

    invoke-static {v1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->access$100(Lcom/alibaba/alimei/widget/tab/CommonTabLayout;)Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;->onTabSelect(I)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$1;->this$0:Lcom/alibaba/alimei/widget/tab/CommonTabLayout;

    invoke-static {v1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->access$100(Lcom/alibaba/alimei/widget/tab/CommonTabLayout;)Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$1;->this$0:Lcom/alibaba/alimei/widget/tab/CommonTabLayout;

    invoke-static {v1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->access$100(Lcom/alibaba/alimei/widget/tab/CommonTabLayout;)Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;->onTabReselect(I)V

    goto :goto_0
.end method
