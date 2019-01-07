.class public Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "MiniAppPersonalAuthDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog$a;

.field public b:Lhog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 88
    .local v0, "viewId":I
    sget v1, Lhdn$h;->yes:I

    if-ne v0, v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->a:Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog$a;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->a:Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog$a;

    invoke-interface {v1}, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog$a;->a()V

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->dismiss()V

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    sget v1, Lhdn$h;->no:I

    if-ne v0, v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->a:Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog$a;

    if-eqz v1, :cond_3

    .line 95
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->a:Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog$a;

    invoke-interface {v1}, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog$a;->b()V

    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->dismiss()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget v0, Lhdn$i;->miniapp_personal_auth_dialog_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->setContentView(I)V

    .line 46
    invoke-virtual {p0, v5}, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->setCanceledOnTouchOutside(Z)V

    .line 1053
    sget v0, Lhdn$h;->miniapp_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1055
    sget v0, Lhdn$h;->yes:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1056
    sget v2, Lhdn$h;->no:I

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1057
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1058
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1060
    sget v0, Lhdn$h;->tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 1061
    sget v0, Lhdn$h;->auth_field:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    .line 1063
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->b:Lhog;

    if-eqz v0, :cond_0

    .line 1064
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1065
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->b:Lhog;

    iget-object v2, v2, Lhog;->b:Ljava/lang/String;

    const/4 v4, 0x5

    move v6, v5

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 1068
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lhdn$k;->dt_miniapp_personal_auth_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->b:Lhog;

    iget-object v2, v2, Lhog;->a:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->b:Lhog;

    iget-object v0, v0, Lhog;->d:Ljava/util/List;

    .line 1071
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1072
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v10, :cond_1

    .line 1073
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$k;->dt_miniapp_personal_auth_one_field:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1074
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v11, :cond_2

    .line 1075
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$k;->dt_miniapp_personal_auth_two_field:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1076
    new-array v2, v11, [Ljava/lang/Object;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1078
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$k;->dt_miniapp_personal_auth_fields:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1079
    new-array v2, v11, [Ljava/lang/Object;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
