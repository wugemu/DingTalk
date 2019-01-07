.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$4;
.super Ljava/lang/Object;
.source "CSpaceGroupFolderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a(Landroid/view/View;Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    iput-boolean p2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$4;->a:Z

    iput-boolean p3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 315
    new-instance v0, Lgmd;

    invoke-direct {v0}, Lgmd;-><init>()V

    .line 316
    .local v0, "controller":Lgmd;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->e(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->g(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)J

    move-result-wide v6

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$4;->a:Z

    iget-boolean v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$4;->b:Z

    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$4;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-virtual {v9}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    .line 1242
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6, v7}, Lgoc;->a(Ljava/lang/String;J)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    .line 1243
    if-eqz v2, :cond_0

    if-nez v9, :cond_1

    .line 1244
    :cond_0
    :goto_0
    return-void

    .line 1247
    :cond_1
    new-instance v3, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-direct {v3, v9}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;-><init>(Landroid/content/Context;)V

    .line 1248
    invoke-virtual {v3, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1249
    invoke-virtual {v3, v11}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setBottomMenuMax(I)V

    .line 1250
    sget v6, Lfzs$h;->org_public_share:I

    invoke-static {v6}, Lgmd;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setTitleName(Ljava/lang/String;)V

    .line 1252
    invoke-static {v2}, Lglr;->o(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1253
    new-instance v6, Lgqm;

    const/16 v7, 0xbc2

    sget v10, Lfzs$h;->dt_space_send_folder_path:I

    invoke-static {v10}, Lgmd;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v11, v10}, Lgqm;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    .line 1255
    :cond_2
    if-nez v1, :cond_3

    if-eqz v8, :cond_4

    .line 1256
    :cond_3
    if-eqz v1, :cond_5

    .line 1257
    new-instance v1, Lgqm;

    const/16 v6, 0xbd6

    sget v7, Lfzs$h;->and_setting_rights:I

    invoke-static {v7}, Lgmd;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v11, v7}, Lgqm;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    .line 1263
    :cond_4
    :goto_1
    new-instance v1, Lgmb;

    invoke-direct {v1}, Lgmb;-><init>()V

    .line 1264
    iput-object v2, v1, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1265
    iput-wide v4, v1, Lgmb;->d:J

    .line 1266
    new-instance v2, Lgmc;

    invoke-direct {v2, v9, v1, v3}, Lgmc;-><init>(Landroid/content/Context;Lgmb;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)V

    .line 1267
    invoke-virtual {v2}, Lgmc;->a()V

    goto :goto_0

    .line 1259
    :cond_5
    new-instance v1, Lgqm;

    const/16 v6, 0xbcc

    sget v7, Lfzs$h;->dt_external_contact_view_permission:I

    invoke-static {v7}, Lgmd;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v11, v7}, Lgqm;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    goto :goto_1
.end method
