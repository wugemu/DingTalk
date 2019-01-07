.class final Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$2;
.super Ljava/lang/Object;
.source "SpaceMenuBottomView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a(Ljava/lang/String;)V
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
    .line 236
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$2;->a:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 239
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$2;->a:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    invoke-static {v3}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->e(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;

    move-result-object v3

    iget-object v1, v3, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;->a:Ljava/util/List;

    .line 241
    .local v1, "objects":Ljava/util/List;, "Ljava/util/List<Lun;>;"
    if-nez v1, :cond_2

    const/4 v2, 0x0

    .line 242
    .local v2, "size":I
    :goto_0
    if-ltz p2, :cond_0

    if-ge p2, v2, :cond_0

    .line 243
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lun;

    .line 244
    .local v0, "menuObject":Lun;
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$2;->a:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    invoke-static {v3}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->d(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)Luk;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 245
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$2;->a:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    invoke-static {v3}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->d(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)Luk;

    move-result-object v3

    invoke-interface {v3, v0}, Luk;->a(Lun;)V

    .line 248
    .end local v0    # "menuObject":Lun;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$2;->a:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    invoke-static {v3}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->f(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 249
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$2;->a:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    invoke-static {v3}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->f(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 251
    :cond_1
    return-void

    .line 241
    .end local v2    # "size":I
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0
.end method
