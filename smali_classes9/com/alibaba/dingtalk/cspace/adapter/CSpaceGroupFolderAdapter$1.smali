.class final Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$1;
.super Ljava/lang/Object;
.source "CSpaceGroupFolderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgiy;

.field final synthetic b:Z

.field final synthetic c:J

.field final synthetic d:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;Lgiy;ZJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$1;->d:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$1;->a:Lgiy;

    iput-boolean p3, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$1;->b:Z

    iput-wide p4, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$1;->c:J

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
    const/4 v10, 0x0

    .line 127
    new-instance v0, Lgmd;

    invoke-direct {v0}, Lgmd;-><init>()V

    .line 128
    .local v0, "controller":Lgmd;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$1;->a:Lgiy;

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$1;->b:Z

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$1;->c:J

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$1;->d:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;->a(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;)Landroid/content/Context;

    move-result-object v3

    .line 1271
    invoke-static {v1}, Lgoc;->a(Lgiy;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v6

    .line 1272
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-nez v6, :cond_1

    .line 1273
    :cond_0
    :goto_0
    return-void

    .line 1275
    :cond_1
    if-eqz v2, :cond_0

    .line 1279
    new-instance v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-direct {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;-><init>(Landroid/content/Context;)V

    .line 1280
    invoke-virtual {v2, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1281
    invoke-virtual {v2, v10}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setBottomMenuMax(I)V

    .line 1282
    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setTitleName(Ljava/lang/String;)V

    .line 1284
    new-instance v7, Lgqm;

    const/16 v8, 0xfaa

    sget v9, Lfzs$h;->dt_space_auth_setting:I

    invoke-static {v9}, Lgmd;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v10, v9}, Lgqm;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    .line 1286
    new-instance v7, Lgmb;

    invoke-direct {v7}, Lgmb;-><init>()V

    .line 1287
    iput-object v1, v7, Lgmb;->n:Lgiy;

    .line 1288
    iput-object v6, v7, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1289
    iput-wide v4, v7, Lgmb;->d:J

    .line 1290
    new-instance v1, Lgmc;

    invoke-direct {v1, v3, v7, v2}, Lgmc;-><init>(Landroid/content/Context;Lgmb;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)V

    .line 1291
    invoke-virtual {v1}, Lgmc;->a()V

    goto :goto_0
.end method
