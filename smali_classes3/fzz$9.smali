.class final Lfzz$9;
.super Ljava/lang/Object;
.source "CSpaceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzz;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Lfzz;


# direct methods
.method constructor <init>(Lfzz;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$0"    # Lfzz;

    .prologue
    .line 364
    iput-object p1, p0, Lfzz$9;->b:Lfzz;

    iput-object p2, p0, Lfzz$9;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 367
    iget-object v0, p0, Lfzz$9;->b:Lfzz;

    invoke-static {v0}, Lfzz;->e(Lfzz;)Lfzz$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lfzz$9;->b:Lfzz;

    invoke-static {v0}, Lfzz;->e(Lfzz;)Lfzz$b;

    move-result-object v0

    iget-object v1, p0, Lfzz$9;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-interface {v0, v1}, Lfzz$b;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 370
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
