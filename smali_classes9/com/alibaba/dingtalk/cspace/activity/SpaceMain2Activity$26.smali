.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$26;
.super Ljava/lang/Object;
.source "SpaceMain2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$26;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 19
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 432
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "cspace_myfile_enter_click"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lgle;->a()Lgle;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$26;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$26;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    sget v6, Lfzs$h;->org_personal:I

    invoke-virtual {v5, v6}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgle;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lglr;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->create()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    move-result-object v2

    .line 437
    .local v2, "args":Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$26;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setSpaceId(Ljava/lang/String;)V

    .line 438
    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setDentryId(Ljava/lang/String;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$26;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;ZLcma;)V

    .line 446
    .end local v2    # "args":Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
    :goto_0
    return-void

    .line 443
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$26;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$26;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    iget v6, v6, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->a:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$26;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v7}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$26;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->s:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-static/range {v3 .. v18}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZLjava/util/ArrayList;)V

    goto :goto_0
.end method
