.class final Lfzz$3;
.super Ljava/lang/Object;
.source "CSpaceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzz;->a(Landroid/view/View;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic c:Lfzz;


# direct methods
.method constructor <init>(Lfzz;Landroid/view/View;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$0"    # Lfzz;

    .prologue
    .line 903
    iput-object p1, p0, Lfzz$3;->c:Lfzz;

    iput-object p2, p0, Lfzz$3;->a:Landroid/view/View;

    iput-object p3, p0, Lfzz$3;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 906
    iget-object v0, p0, Lfzz$3;->c:Lfzz;

    invoke-static {v0}, Lfzz;->e(Lfzz;)Lfzz$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lfzz$3;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 908
    iget-object v0, p0, Lfzz$3;->c:Lfzz;

    invoke-static {v0}, Lfzz;->e(Lfzz;)Lfzz$b;

    move-result-object v0

    iget-object v1, p0, Lfzz$3;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-interface {v0, v1}, Lfzz$b;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 910
    :cond_0
    return-void
.end method
