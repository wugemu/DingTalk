.class final Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$1;
.super Ljava/lang/Object;
.source "SpaceCooperationCreateDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 302
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->j(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$a;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 303
    .local v0, "tempOrgModel":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v1, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 307
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->l(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->b(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lfzs$h;->dt_space_cf_belong_args:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->k(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->i(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->h(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
