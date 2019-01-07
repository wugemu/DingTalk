.class final Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$5;
.super Ljava/lang/Object;
.source "SpacePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 1308
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)I

    move-result v0

    invoke-static {v0}, Lglz;->a(I)Lgly;

    move-result-object v10

    .line 1312
    .local v10, "handler":Lgly;
    if-nez v10, :cond_1

    .line 1326
    .end local v10    # "handler":Lgly;
    :cond_0
    :goto_0
    return-void

    .line 1315
    .restart local v10    # "handler":Lgly;
    :cond_1
    instance-of v0, v10, Lgnt;

    if-eqz v0, :cond_2

    move-object v0, v10

    .line 1316
    check-cast v0, Lgnt;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .line 1317
    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->j(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v6}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->k(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .line 1318
    invoke-static {v7}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->l(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v8}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->m(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)J

    move-result-wide v8

    .line 1316
    invoke-virtual/range {v0 .. v9}, Lgnt;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;ILcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 1321
    :cond_2
    instance-of v0, v10, Lgna;

    if-eqz v0, :cond_0

    .line 1322
    check-cast v10, Lgna;

    .end local v10    # "handler":Lgly;
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .line 1323
    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->l(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->k(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1322
    invoke-virtual {v10, v0, v1, v2, v3}, Lgna;->a(Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
