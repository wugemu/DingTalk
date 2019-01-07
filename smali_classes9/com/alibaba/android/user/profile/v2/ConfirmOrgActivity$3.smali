.class final Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$3;
.super Ljava/lang/Object;
.source "ConfirmOrgActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/user/model/OrgScoreDataObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$3;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 270
    check-cast p1, Lcom/alibaba/android/user/model/OrgScoreDataObject;

    .line 1273
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$3;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1274
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->dingIndexObject:Lcom/alibaba/android/user/model/DingIndexObject;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->dingIndexObject:Lcom/alibaba/android/user/model/DingIndexObject;

    iget-wide v2, v0, Lcom/alibaba/android/user/model/DingIndexObject;->idxTotal:D

    cmpl-double v0, v2, v8

    if-ltz v0, :cond_2

    .line 1277
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$3;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->f(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$3;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    sget v4, Lezg$l;->dt_org_ding_index:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->dingIndexObject:Lcom/alibaba/android/user/model/DingIndexObject;

    iget-wide v4, v4, Lcom/alibaba/android/user/model/DingIndexObject;->idxTotal:D

    double-to-int v4, v4

    .line 1278
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1277
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1281
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$3;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lezg$g;->icon_dint_index:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1282
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v2, v6, v6, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1283
    iget-wide v4, p1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->increment:D

    cmpl-double v0, v4, v8

    if-lez v0, :cond_3

    .line 1284
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$3;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lezg$g;->icon_dint_rise:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1285
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1290
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$3;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->f(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1291
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$3;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->f(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1292
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$3;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->g(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1286
    :cond_3
    iget-wide v4, p1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->increment:D

    cmpg-double v0, v4, v8

    if-gez v0, :cond_4

    .line 1287
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$3;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lezg$g;->icon_dint_down:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1288
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 302
    const-string/jumbo v0, "ConfirmOrgActivity"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Error loadOrgScoreData"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 298
    return-void
.end method
