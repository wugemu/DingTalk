.class final Lfgq$6;
.super Ljava/lang/Object;
.source "OrgContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgq;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:I

.field final synthetic d:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

.field final synthetic e:Lfgq;


# direct methods
.method constructor <init>(Lfgq;ZLandroid/widget/CheckBox;ILcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)V
    .locals 0
    .param p1, "this$0"    # Lfgq;

    .prologue
    .line 409
    iput-object p1, p0, Lfgq$6;->e:Lfgq;

    iput-boolean p2, p0, Lfgq$6;->a:Z

    iput-object p3, p0, Lfgq$6;->b:Landroid/widget/CheckBox;

    iput p4, p0, Lfgq$6;->c:I

    iput-object p5, p0, Lfgq$6;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 412
    const/4 v0, 0x2

    iget-object v1, p0, Lfgq$6;->e:Lfgq;

    invoke-static {v1}, Lfgq;->e(Lfgq;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 414
    iget-boolean v0, p0, Lfgq$6;->a:Z

    if-eqz v0, :cond_0

    .line 441
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v1, p0, Lfgq$6;->b:Landroid/widget/CheckBox;

    iget-object v0, p0, Lfgq$6;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 418
    iget-object v1, p0, Lfgq$6;->e:Lfgq;

    iget v2, p0, Lfgq$6;->c:I

    iget-object v3, p0, Lfgq$6;->b:Landroid/widget/CheckBox;

    iget-object v0, p0, Lfgq$6;->e:Lfgq;

    invoke-static {v0}, Lfgq;->a(Lfgq;)Ljava/util/List;

    move-result-object v0

    iget v4, p0, Lfgq$6;->c:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-static {v1, v2, v3, v0}, Lfgq;->a(Lfgq;ILandroid/widget/CheckBox;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    goto :goto_0

    .line 417
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 421
    :cond_2
    iget-object v0, p0, Lfgq$6;->e:Lfgq;

    invoke-static {v0}, Lfgq;->a(Lfgq;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lfgq$6;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfgq$6;->e:Lfgq;

    .line 422
    invoke-static {v0}, Lfgq;->a(Lfgq;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lfgq$6;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->unableClickReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 423
    iget-object v0, p0, Lfgq$6;->e:Lfgq;

    .line 424
    invoke-static {v0}, Lfgq;->a(Lfgq;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lfgq$6;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->unableClickReason:Ljava/lang/String;

    .line 423
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_3
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfgq$6;->e:Lfgq;

    invoke-static {v1}, Lfgq;->b(Lfgq;)Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    .line 427
    invoke-static {}, Lflz;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfgq$6$1;

    invoke-direct {v2, p0}, Lfgq$6$1;-><init>(Lfgq$6;)V

    .line 426
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0
.end method
