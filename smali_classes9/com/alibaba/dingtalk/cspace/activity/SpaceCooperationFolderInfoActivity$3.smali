.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;
.super Ljava/lang/Object;
.source "SpaceCooperationFolderInfoActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;
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
        "Lgiv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 300
    check-cast p1, Lgiv;

    .line 1303
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1306
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;Z)Z

    .line 1307
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->dismissLoadingDialog()V

    .line 1309
    if-eqz p1, :cond_0

    iget-object v0, p1, Lgiv;->d:Lgit;

    if-nez v0, :cond_2

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)V

    .line 1312
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    sget v1, Lfzs$h;->set_import_errer:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1327
    :cond_1
    :goto_0
    return-void

    .line 1316
    :cond_2
    iget-object v0, p1, Lgiv;->a:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1316
    if-eqz v0, :cond_5

    .line 1318
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    iget-object v2, p1, Lgiv;->d:Lgit;

    iget-object v2, v2, Lgit;->e:Ljava/lang/Long;

    .line 2044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1318
    invoke-static {v0, v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;J)J

    .line 1319
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    iget-object v2, p1, Lgiv;->d:Lgit;

    iget-object v2, v2, Lgit;->m:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1320
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v2, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;Z)Z

    .line 1322
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1323
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1324
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->j(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1320
    goto :goto_1

    .line 1326
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1327
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->j(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1331
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)V

    .line 1332
    iget-object v0, p1, Lgiv;->c:Ljava/lang/String;

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 344
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;Z)Z

    .line 348
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->dismissLoadingDialog()V

    .line 350
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)V

    .line 351
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 340
    return-void
.end method
