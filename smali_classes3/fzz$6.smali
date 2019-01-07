.class final Lfzz$6;
.super Ljava/lang/Object;
.source "CSpaceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 260
    iput-object p1, p0, Lfzz$6;->b:Lfzz;

    iput-object p2, p0, Lfzz$6;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 263
    iget-object v0, p0, Lfzz$6;->b:Lfzz;

    invoke-static {v0}, Lfzz;->b(Lfzz;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lfzz$6;->b:Lfzz;

    invoke-static {v0}, Lfzz;->a(Lfzz;)Lfzz$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lfzz$6;->b:Lfzz;

    invoke-static {v0}, Lfzz;->a(Lfzz;)Lfzz$a;

    move-result-object v0

    iget-object v1, p0, Lfzz$6;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-interface {v0, v1}, Lfzz$a;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lfzz$6;->b:Lfzz;

    invoke-static {v0}, Lfzz;->c(Lfzz;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lfzz$6;->b:Lfzz;

    invoke-static {v1}, Lfzz;->d(Lfzz;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lfzs$h;->cspace_network_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
