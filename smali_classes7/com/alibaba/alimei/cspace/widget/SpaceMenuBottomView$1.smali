.class final Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$1;
.super Ljava/lang/Object;
.source "SpaceMenuBottomView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$1;->a:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 171
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$1;->a:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    invoke-static {v2}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    instance-of v2, p1, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 175
    check-cast v1, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    .line 176
    .local v1, "menuView":Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;
    iget-object v0, v1, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->d:Lun;

    .line 177
    .local v0, "menuObject":Lun;
    if-eqz v0, :cond_0

    .line 180
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$1;->a:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    invoke-static {v2}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->b(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)Lun;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$1;->a:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    invoke-static {v2}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->b(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)Lun;

    move-result-object v2

    iget v2, v2, Lun;->a:I

    iget v3, v0, Lun;->a:I

    if-ne v2, v3, :cond_2

    .line 181
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$1;->a:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    iget-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$1;->a:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    invoke-static {v3}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->c(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$1;->a:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    invoke-static {v2}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->d(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)Luk;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$1;->a:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    invoke-static {v2}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->d(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)Luk;

    move-result-object v2

    invoke-interface {v2, v0}, Luk;->a(Lun;)V

    goto :goto_0
.end method
