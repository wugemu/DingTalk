.class public Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;
.super Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;
.source "CMailMainFragment.java"

# interfaces
.implements Lcom/alibaba/alimei/mail/widget/MailMenuView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$b;,
        Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;,
        Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$a;
    }
.end annotation


# static fields
.field private static q:I


# instance fields
.field private A:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

.field private B:Z

.field private C:Landroid/os/Handler;

.field private D:Lagw;

.field private E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

.field private F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

.field private M:Landroid/view/View;

.field private N:Landroid/view/View;

.field private O:Lcom/alibaba/alimei/mail/widget/MailListBannerView;

.field private P:Landroid/view/View;

.field private Q:Lrz;

.field private R:I

.field private S:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$b;

.field private T:Z

.field private U:Ljava/lang/Runnable;

.field private V:Lyb;

.field private W:Ladq;

.field private X:Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;

.field private Y:Lyb;

.field private Z:Lyb;

.field private aa:I

.field private ab:Lxv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxv",
            "<",
            "Lxv$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

.field public g:Landroid/widget/ListView;

.field public h:Lacv;

.field public i:I

.field public j:Ljava/lang/String;

.field k:I

.field public l:I

.field public m:Landroid/support/v4/widget/DrawerLayout;

.field public n:Lcom/alibaba/alimei/mail/widget/MailMenuView;

.field o:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

.field public p:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;

.field private r:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/view/View;

.field private x:Z

.field private y:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private z:Lxv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    sput v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->q:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 204
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;-><init>()V

    .line 140
    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->z:Lxv;

    .line 143
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->B:Z

    .line 144
    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    .line 147
    iput v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->i:I

    .line 148
    new-instance v0, Lagw;

    invoke-direct {v0}, Lagw;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->D:Lagw;

    .line 149
    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    .line 158
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->Q:Lrz;

    .line 164
    iput v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->l:I

    .line 165
    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->S:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$b;

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->T:Z

    .line 167
    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->U:Ljava/lang/Runnable;

    .line 168
    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->V:Lyb;

    .line 1026
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->Y:Lyb;

    .line 1519
    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->Z:Lyb;

    .line 1651
    iput v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->aa:I

    .line 1653
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->ab:Lxv;

    .line 205
    return-void
.end method

.method private A()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1189
    const/4 v0, 0x3

    iget v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->i:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private B()Z
    .locals 1

    .prologue
    .line 1193
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private C()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->U:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->U:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->U:Ljava/lang/Runnable;

    .line 1260
    :cond_0
    return-void
.end method

.method private D()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 1263
    iget-boolean v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->T:Z

    if-eqz v6, :cond_0

    .line 1264
    new-instance v6, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$7;

    invoke-direct {v6, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$7;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    iput-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->U:Ljava/lang/Runnable;

    .line 1278
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    if-eqz v6, :cond_0

    .line 1279
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    iget-object v7, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->U:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7530

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1282
    :cond_0
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->y:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    if-eqz v6, :cond_1

    .line 1283
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->y:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v6, v13}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1285
    :cond_1
    sget v6, Laxo$i;->alm_cmail_loading_mails:I

    invoke-direct {p0, v6}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->c(I)V

    .line 1286
    iget-boolean v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->x:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    if-eqz v6, :cond_6

    .line 1287
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u()V

    .line 1288
    const-string/jumbo v6, "AbsCMailFragment"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "real load mail time: "

    aput-object v8, v7, v13

    const/4 v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    iget-object v7, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->switchToFolder(Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V

    .line 1290
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    instance-of v6, v6, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v6, :cond_4

    .line 1291
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    check-cast v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1292
    .local v1, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    invoke-static {v6}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v0

    .line 1293
    .local v0, "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    if-eqz v0, :cond_3

    .line 1294
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v6

    new-instance v7, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$8;

    invoke-direct {v7, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$8;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    const-class v8, Lxv;

    invoke-interface {v6, v7, v8, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/support/v4/app/Fragment;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxv;

    .line 1309
    .local v2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    iget-object v6, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-interface {v0, v6, v13, v12}, Lcom/alibaba/alimei/sdk/api/FolderApi;->changeFolderHashNewMail(Ljava/lang/String;ZLxv;)V

    .line 1310
    iget-object v6, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-interface {v0, v6, v2}, Lcom/alibaba/alimei/sdk/api/FolderApi;->updateLastVisitTime(Ljava/lang/String;Lxv;)V

    .line 1338
    .end local v0    # "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    .end local v1    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v2    # "listener":Lxv;, "Lxv<Lxv$a;>;"
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E()V

    .line 1339
    return-void

    .line 1312
    .restart local v0    # "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    .restart local v1    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_3
    const-string/jumbo v6, "AbsCMailFragment"

    const-string/jumbo v7, "executeLoadMails changeFolderHasNewMail fail, for folderApi is null"

    invoke-static {v6, v7}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1314
    .end local v0    # "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    .end local v1    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_4
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    instance-of v6, v6, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v6, :cond_2

    .line 1315
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    check-cast v5, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 1316
    .local v5, "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    invoke-static {v6}, Lafv;->i(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/TagApi;

    move-result-object v4

    .line 1317
    .local v4, "tagApi":Lcom/alibaba/alimei/sdk/api/TagApi;
    if-eqz v4, :cond_5

    .line 1318
    iget-object v6, v5, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    invoke-interface {v4, v6, v12}, Lcom/alibaba/alimei/sdk/api/TagApi;->updateLastestSyncTime(Ljava/lang/String;Lxv;)V

    .line 1319
    iget-object v6, v5, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    invoke-interface {v4, v6, v12}, Lcom/alibaba/alimei/sdk/api/TagApi;->updateLastVisitTime(Ljava/lang/String;Lxv;)V

    goto :goto_0

    .line 1321
    :cond_5
    const-string/jumbo v6, "AbsCMailFragment"

    const-string/jumbo v7, "executeLoadMails changeFolderHasNewMail fail, for tagApi is null"

    invoke-static {v6, v7}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1325
    .end local v4    # "tagApi":Lcom/alibaba/alimei/sdk/api/TagApi;
    .end local v5    # "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    :cond_6
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 1326
    .local v3, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v6, "executeLoadMails isActivityCreated:"

    invoke-virtual {v3, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1327
    iget-boolean v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->x:Z

    invoke-virtual {v3, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Z)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1328
    const-string/jumbo v6, ", mFolderModel: "

    invoke-virtual {v3, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1329
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    invoke-virtual {v3, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1330
    const-string/jumbo v6, "AbsCMailFragment"

    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    if-eqz v6, :cond_7

    .line 1332
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    invoke-virtual {v6, v12}, Lacv;->b(Ljava/util/List;)V

    .line 1334
    :cond_7
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->K()V

    .line 1335
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->M()V

    goto :goto_0
.end method

.method private E()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1342
    const/4 v3, 0x1

    .line 1343
    .local v3, "isEnable":Z
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 1344
    .local v0, "baseModel":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    if-nez v0, :cond_0

    .line 1345
    const/4 v3, 0x0

    .line 1348
    :cond_0
    if-eqz v3, :cond_2

    instance-of v4, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v4, :cond_2

    move-object v2, v0

    .line 1349
    check-cast v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1350
    .local v2, "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isSyncableFolder()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1351
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isDraftFolder()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1352
    :cond_1
    const/4 v3, 0x0

    .line 1356
    .end local v2    # "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_2
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    if-eqz v4, :cond_3

    .line 1357
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    invoke-virtual {v4}, Lacv;->getCount()I

    move-result v1

    .line 1359
    .local v1, "count":I
    if-gtz v1, :cond_3

    .line 1360
    const/4 v3, 0x0

    .line 1364
    .end local v1    # "count":I
    :cond_3
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->P:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setClickable(Z)V

    .line 1365
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->P:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1366
    return-void
.end method

.method private K()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 1392
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    if-nez v3, :cond_1

    move v1, v2

    .line 1393
    .local v1, "count":I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->t:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g:Landroid/widget/ListView;

    if-nez v3, :cond_2

    .line 1455
    :cond_0
    :goto_1
    return-void

    .line 1392
    .end local v1    # "count":I
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    invoke-virtual {v3}, Lacv;->getCount()I

    move-result v1

    goto :goto_0

    .line 1396
    .restart local v1    # "count":I
    :cond_2
    if-lez v1, :cond_6

    .line 1397
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    if-eqz v3, :cond_3

    .line 1398
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1400
    :cond_3
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 1401
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->t:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1403
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->T:Z

    .line 1436
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1440
    if-lez v1, :cond_a

    .line 1441
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    if-eqz v3, :cond_5

    .line 1442
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1444
    :cond_5
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->t:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1445
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 1406
    :cond_6
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    new-instance v4, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$9;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$9;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16246
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 1422
    .local v0, "baseModel":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    if-eqz v0, :cond_4

    .line 1423
    instance-of v3, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v3, :cond_7

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .end local v0    # "baseModel":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isInboxFolder()Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->B()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1424
    :cond_8
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1426
    :cond_9
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    new-instance v4, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$10;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$10;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1447
    :cond_a
    iget-boolean v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->T:Z

    if-nez v3, :cond_0

    .line 1448
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    if-eqz v3, :cond_b

    .line 1449
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1451
    :cond_b
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->t:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1452
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private L()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->Z:Lyb;

    if-eqz v0, :cond_0

    .line 18085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    .line 1596
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->Z:Lyb;

    invoke-interface {v0, v1}, Lya;->a(Lyb;)V

    .line 1597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->Z:Lyb;

    .line 1599
    :cond_0
    return-void
.end method

.method private M()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    if-eqz v0, :cond_0

    .line 1630
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->setVisibility(I)V

    .line 1632
    :cond_0
    return-void

    .line 1630
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private N()Z
    .locals 1

    .prologue
    .line 1640
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->i:I

    if-eqz v0, :cond_0

    .line 1641
    const/4 v0, 0x0

    .line 1644
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->s()Z

    move-result v0

    goto :goto_0
.end method

.method private O()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 1902
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->d(I)V

    .line 1904
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lrz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->Q:Lrz;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;
    .param p1, "x1"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 93
    .line 25378
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 25379
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 25380
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25381
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25382
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;II)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 93
    .line 31386
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->p:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;

    if-eqz v0, :cond_0

    .line 31387
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->p:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;->a(II)V

    .line 93
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;Landroid/view/View;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 93
    .line 27844
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    if-nez v0, :cond_0

    .line 27908
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_2

    .line 27909
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    .line 27848
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_1

    .line 27849
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    sget v1, Laxo$f;->home_menu:I

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 27850
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 27851
    if-nez v0, :cond_3

    .line 27852
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->x()V

    .line 27862
    :cond_1
    :goto_1
    return-void

    .line 27911
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Laxo$f;->drawer_layout:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    .line 27912
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    goto :goto_0

    .line 27853
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->n:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    if-nez v1, :cond_4

    .line 27854
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->x()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 27859
    :catch_0
    move-exception v0

    .line 27860
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27861
    const-string/jumbo v1, "AbsCMailFragment"

    const/4 v2, 0x0

    const-string/jumbo v3, "initSlideMenu failed"

    invoke-static {v1, v2, v3, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 27855
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->n:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    if-eq v0, v1, :cond_1

    .line 27856
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->x()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 93
    .line 30822
    if-eqz p1, :cond_0

    .line 30823
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v3

    .line 30824
    if-eqz v3, :cond_0

    .line 30825
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;->MAIL_LIST:Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;

    invoke-direct {v5, p0, p2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;Ljava/lang/String;)V

    invoke-static/range {v0 .. v5}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;Ljava/lang/String;Ljava/lang/String;Laer;)Z

    .line 93
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    .line 93
    .line 25959
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v1

    if-nez v1, :cond_3

    .line 25967
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    if-eqz v1, :cond_0

    .line 25968
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lacv;->b(Ljava/lang/String;)V

    .line 25969
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->y()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 25970
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    const-string/jumbo v3, "6"

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getTagList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lacv;->b(Ljava/util/List;)V

    .line 26002
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->K()V

    .line 26005
    :cond_0
    if-nez p1, :cond_b

    .line 26006
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->N()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 26007
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->c(Z)V

    .line 26011
    :goto_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    if-nez v1, :cond_8

    .line 26013
    :goto_2
    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 26014
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->k_()V

    .line 26919
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 26920
    if-nez v0, :cond_9

    .line 26023
    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E()V

    .line 93
    :cond_3
    return-void

    .line 25974
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->z()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 25975
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getUnreadList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lacv;->b(Ljava/util/List;)V

    goto :goto_0

    .line 25976
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->A()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 25977
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getAttachmentList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lacv;->b(Ljava/util/List;)V

    goto :goto_0

    .line 25979
    :cond_6
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getAllDatas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lacv;->b(Ljava/util/List;)V

    goto :goto_0

    .line 26009
    :cond_7
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->c(Z)V

    goto :goto_1

    .line 26011
    :cond_8
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    invoke-virtual {v0}, Lacv;->getCount()I

    move-result v0

    goto :goto_2

    .line 26923
    :cond_9
    instance-of v1, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v1, :cond_2

    .line 26924
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    invoke-static {v1}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v1

    .line 26925
    if-eqz v1, :cond_a

    .line 26926
    new-instance v2, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$5;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$5;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V

    .line 26951
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v4

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->D:Lagw;

    invoke-interface {v1, v4, v5, v0, v2}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryFolderMsgUnreadCountStatus(JLagw;Lxv;)V

    goto :goto_3

    .line 26953
    :cond_a
    const-string/jumbo v0, "AbsCMailFragment"

    const-string/jumbo v1, "queryFolderStateCount fail for folderApi is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 26018
    :cond_b
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->W:Ladq;

    if-eqz v0, :cond_2

    .line 26019
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->W:Ladq;

    invoke-interface {v0}, Ladq;->b()V

    goto :goto_3
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->R:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->T:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->k:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lacv;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    return-object v0
.end method

.method private c(I)V
    .locals 4
    .param p1, "resourceId"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1369
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1370
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1371
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1372
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1373
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1375
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->k:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->aa:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->R:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Ladq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->W:Ladq;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->s()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->y:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->p:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/alimei/mail/widget/MailMenuView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->n:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    return-object v0
.end method

.method public static n()V
    .locals 1

    .prologue
    .line 1764
    sget v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->q:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->q:I

    .line 1765
    return-void
.end method

.method static synthetic o(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lyb;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->Z:Lyb;

    return-object v0
.end method

.method public static o()V
    .locals 1

    .prologue
    .line 1772
    sget v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->q:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->q:I

    .line 1773
    return-void
.end method

.method static synthetic p(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    .line 28110
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->Y:Lyb;

    if-eqz v0, :cond_0

    .line 29085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    .line 28111
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->Y:Lyb;

    invoke-interface {v0, v1}, Lya;->a(Lyb;)V

    .line 30085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    .line 28112
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->Y:Lyb;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ptcpUnreadCountChanged"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "basic_SyncMail"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "revokeMailStatusChanged"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method static synthetic q(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->T:Z

    return v0
.end method

.method static synthetic r(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C()V

    return-void
.end method

.method static synthetic s(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->K()V

    return-void
.end method

.method private s()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 229
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->y()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->z()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->A()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v2

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 234
    .local v0, "baseModel":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    if-eqz v0, :cond_0

    .line 238
    instance-of v3, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v3, :cond_2

    .line 239
    const/4 v2, 0x1

    goto :goto_0

    .line 242
    :cond_2
    instance-of v3, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v3, :cond_0

    .line 246
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    check-cast v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 247
    .local v1, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isSyncableFolder()Z

    move-result v2

    goto :goto_0
.end method

.method static synthetic t(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->t:Landroid/view/View;

    return-object v0
.end method

.method private t()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 441
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    if-nez v0, :cond_0

    .line 442
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    .line 481
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->y:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;)V

    .line 494
    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    return-object v0
.end method

.method private u()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 560
    .line 6503
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    .line 560
    invoke-static {v0}, Lafw;->f(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    .line 561
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    if-nez v0, :cond_0

    .line 562
    const-string/jumbo v0, "AbsCMailFragment"

    const-string/jumbo v1, "obtain mailProxy displayer fail"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 621
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->A:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    if-nez v0, :cond_1

    .line 569
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->A:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->A:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->registerObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    goto :goto_0
.end method

.method private v()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 644
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->setVisibility(I)V

    .line 647
    :cond_0
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->i:I

    packed-switch v0, :pswitch_data_0

    .line 670
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxo$i;->alm_cmail_no_mails:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 672
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyDescription(I)V

    .line 676
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->M()V

    .line 677
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->D()V

    .line 678
    return-void

    .line 649
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 651
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxo$i;->dt_cmail_list_filter_empty:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyDescription(I)V

    goto :goto_0

    .line 656
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 658
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxo$i;->dt_cmail_list_filter_empty:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyDescription(I)V

    goto :goto_0

    .line 663
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 665
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxo$i;->dt_cmail_list_filter_empty:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyDescription(I)V

    goto :goto_0

    .line 647
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic v(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    .line 32825
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    .line 32389
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33825
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    .line 32391
    invoke-static {v0}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$17;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$17;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryInboxFolder(Lxv;)V

    .line 93
    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 836
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->A:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->unregisterObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 838
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->release()V

    .line 840
    :cond_0
    return-void
.end method

.method static synthetic w(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->L()V

    return-void
.end method

.method private x()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 866
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->n:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    if-nez v1, :cond_0

    .line 867
    new-instance v1, Lcom/alibaba/alimei/mail/widget/MailMenuView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/mail/widget/MailMenuView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->n:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    .line 868
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->n:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    invoke-virtual {v1, p0}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->setMenuListener(Lcom/alibaba/alimei/mail/widget/MailMenuView$a;)V

    .line 871
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    sget v2, Laxo$f;->home_menu:I

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 872
    .local v0, "menuParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 873
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->n:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 874
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$4;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$4;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/DrawerLayout$c;)V

    .line 905
    return-void
.end method

.method private y()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 1181
    iget v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->i:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private z()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1185
    const/4 v0, 0x2

    iget v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->i:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final F_()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method public final a(I)V
    .locals 5
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2081
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->W:Ladq;

    if-eqz v1, :cond_0

    .line 2082
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->W:Ladq;

    invoke-interface {v1, p1}, Ladq;->a(I)V

    .line 2085
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->i()Ljava/util/List;

    move-result-object v0

    .line 2086
    .local v0, "menuItems":Ljava/util/List;, "Ljava/util/List<Lafn;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->r:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/widget/FooterActionLayout;->setItems(Ljava/util/List;)V

    .line 2088
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->r:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    if-lez p1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lss;->a(Landroid/view/ViewGroup;Z)V

    .line 2089
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->r:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    if-lez p1, :cond_2

    :goto_1
    invoke-static {v1, v2}, Lss;->b(Landroid/view/ViewGroup;Z)V

    .line 2090
    return-void

    :cond_1
    move v1, v3

    .line 2088
    goto :goto_0

    :cond_2
    move v2, v3

    .line 2089
    goto :goto_1
.end method

.method public final a(Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V
    .locals 7
    .param p1, "baseModel"    # Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 756
    .line 11890
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v2, :cond_2

    .line 11891
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    const v4, 0x800003

    invoke-virtual {v2, v4}, Landroid/support/v4/widget/DrawerLayout;->e(I)Z

    move-result v2

    .line 756
    :goto_0
    if-eqz v2, :cond_0

    .line 757
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->O()V

    .line 759
    :cond_0
    if-nez p1, :cond_3

    .line 794
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 11894
    goto :goto_0

    .line 763
    :cond_3
    instance-of v2, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-nez v2, :cond_4

    instance-of v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v2, :cond_1

    .line 12317
    :cond_4
    const-string/jumbo v2, "mail_folderlist_switch"

    invoke-static {v2}, Lafe;->a(Ljava/lang/String;)V

    .line 13110
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->r:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/widget/FooterActionLayout;->removeAllViews()V

    .line 13111
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->i()Ljava/util/List;

    move-result-object v2

    .line 13112
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->r:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    invoke-virtual {v4, v2}, Lcom/alibaba/alimei/mail/widget/FooterActionLayout;->setItems(Ljava/util/List;)V

    .line 13113
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->r:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    invoke-static {v2, v3}, Lss;->a(Landroid/view/ViewGroup;Z)V

    .line 13114
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->r:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    invoke-static {v2, v3}, Lss;->b(Landroid/view/ViewGroup;Z)V

    .line 773
    iput v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->i:I

    .line 774
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->M()V

    .line 776
    instance-of v2, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v2, :cond_7

    move-object v0, p1

    .line 777
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 778
    .local v0, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    const-string/jumbo v2, "AbsCMailFragment"

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "switch to folder "

    aput-object v5, v4, v3

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    .end local v0    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_5
    :goto_2
    invoke-virtual {p0, p1, v3}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Lcom/alibaba/alimei/framework/model/AbsBaseModel;Z)V

    .line 786
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->n:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    if-eqz v2, :cond_6

    .line 787
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->n:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    invoke-virtual {v2, p1}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->setCurrentFolder(Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V

    .line 790
    :cond_6
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->W:Ladq;

    if-eqz v2, :cond_1

    .line 791
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->W:Ladq;

    invoke-interface {v2, p1}, Ladq;->a(Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V

    goto :goto_1

    .line 779
    :cond_7
    instance-of v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v2, :cond_5

    move-object v1, p1

    .line 780
    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 781
    .local v1, "tag":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    const-string/jumbo v2, "AbsCMailFragment"

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "switch to tag "

    aput-object v5, v4, v3

    iget-object v5, v1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mDisplayName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(Lcom/alibaba/alimei/framework/model/AbsBaseModel;Z)V
    .locals 3
    .param p1, "baseModel"    # Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    .param p2, "loadAccordingType"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1207
    if-nez p1, :cond_1

    .line 1242
    .end local p1    # "baseModel":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    :cond_0
    :goto_0
    return-void

    .line 1211
    .restart local p1    # "baseModel":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    :cond_1
    instance-of v0, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v0, :cond_0

    .line 1216
    :cond_2
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 1217
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->l:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 1218
    instance-of v0, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 1219
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-static {v0}, Lacg;->a(Lcom/alibaba/alimei/sdk/model/FolderModel;)V

    .line 1224
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    if-eqz v0, :cond_4

    .line 1225
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->setVisibility(I)V

    .line 1228
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    if-eqz v0, :cond_5

    .line 1229
    instance-of v0, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v0, :cond_7

    .line 1230
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    check-cast p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .end local p1    # "baseModel":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    invoke-virtual {v0, p1}, Lacv;->a(Lcom/alibaba/alimei/sdk/model/FolderModel;)V

    .line 1236
    :cond_5
    :goto_2
    if-eqz p2, :cond_8

    .line 1237
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->v()V

    .line 1241
    :goto_3
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->t()V

    goto :goto_0

    .line 1221
    .restart local p1    # "baseModel":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    :cond_6
    invoke-static {v2}, Lacg;->a(Lcom/alibaba/alimei/sdk/model/FolderModel;)V

    goto :goto_1

    .line 1232
    :cond_7
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    invoke-virtual {v0, v2}, Lacv;->a(Lcom/alibaba/alimei/sdk/model/FolderModel;)V

    goto :goto_2

    .line 1239
    .end local p1    # "baseModel":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    :cond_8
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->D()V

    goto :goto_3
.end method

.method public final a(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;)V
    .locals 8
    .param p1, "callback"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1524
    if-nez p1, :cond_1

    .line 1592
    :cond_0
    :goto_0
    return-void

    .line 1528
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;->a()V

    .line 16503
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    .line 1531
    .local v0, "accountName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1532
    invoke-interface {p1, v6}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;->a(Z)V

    goto :goto_0

    .line 1537
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getCurrentFolder()Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v1

    .line 1538
    .local v1, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->canSyncable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1539
    invoke-interface {p1, v7}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;->a(Z)V

    goto :goto_0

    .line 1543
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->Z:Lyb;

    if-nez v2, :cond_4

    .line 1544
    new-instance v2, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$12;

    invoke-direct {v2, p0, v0, p1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$12;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;Ljava/lang/String;Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;)V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->Z:Lyb;

    .line 16602
    :cond_4
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->Z:Lyb;

    if-eqz v2, :cond_5

    .line 17085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v2

    .line 16603
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->Z:Lyb;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "basic_SyncNewMail"

    aput-object v5, v4, v6

    const-string/jumbo v5, "basic_syncTagMail"

    aput-object v5, v4, v7

    invoke-interface {v2, v3, v4}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 1589
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->B()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1590
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->refreshMail()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 512
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    :goto_0
    return-void

    .line 515
    :cond_0
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    .line 516
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->T:Z

    .line 517
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 518
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->X:Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;

    .line 519
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->i:I

    .line 521
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->w()V

    .line 522
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u()V

    .line 523
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$20;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$20;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 538
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    invoke-static {v1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    .line 540
    .local v0, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    if-eqz v0, :cond_1

    .line 541
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$21;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$21;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/api/MailApi;->autoSetCopySendMail2SentFolder(Lxv;)V

    goto :goto_0

    .line 555
    :cond_1
    const-string/jumbo v1, "AbsCMailFragment"

    const-string/jumbo v2, "setUserAccountName autoSetCopySendMail2SentFolder fail for mailApi is null"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final a(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    if-ne p1, v0, :cond_0

    .line 1731
    const/4 v0, 0x1

    .line 1733
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 2
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 628
    iput p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->i:I

    .line 629
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->D:Lagw;

    iput p1, v0, Lagw;->a:I

    .line 630
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->D:Lagw;

    const-string/jumbo v1, "6"

    iput-object v1, v0, Lagw;->b:Ljava/lang/String;

    .line 631
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->x:Z

    if-nez v0, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 639
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->v()V

    goto :goto_0
.end method

.method public final b(Landroid/view/View;)V
    .locals 9
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 256
    const v2, 0x102000a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g:Landroid/widget/ListView;

    .line 259
    new-instance v2, Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    .line 260
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 261
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {v2, v6}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->setVisibility(I)V

    .line 263
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Laxo$g;->alm_cmail_list_header_search_bar:I

    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->M:Landroid/view/View;

    .line 264
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->M:Landroid/view/View;

    sget v3, Laxo$f;->search:I

    invoke-static {v2, v3}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 265
    .local v1, "searchContainer":Landroid/view/View;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->M:Landroid/view/View;

    sget v3, Laxo$f;->token_all_read:I

    invoke-static {v2, v3}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->P:Landroid/view/View;

    .line 266
    new-instance v2, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$1;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->P:Landroid/view/View;

    new-instance v3, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->M:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 312
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Laxo$g;->alm_cmail_list_header_banner:I

    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->N:Landroid/view/View;

    .line 313
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->N:Landroid/view/View;

    sget v3, Laxo$f;->banner_layout:I

    invoke-static {v2, v3}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/mail/widget/MailListBannerView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->O:Lcom/alibaba/alimei/mail/widget/MailListBannerView;

    .line 314
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->N:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 316
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->O:Lcom/alibaba/alimei/mail/widget/MailListBannerView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 3130
    if-eqz v3, :cond_1

    .line 3134
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v2, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->a:Ljava/lang/ref/WeakReference;

    .line 3136
    invoke-static {}, Lafa;->a()Lafa;

    move-result-object v3

    .line 3138
    iget-object v4, v2, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->b:Lafa$a;

    if-nez v4, :cond_0

    .line 3139
    new-instance v4, Lcom/alibaba/alimei/mail/widget/MailListBannerView$1;

    invoke-direct {v4, v2}, Lcom/alibaba/alimei/mail/widget/MailListBannerView$1;-><init>(Lcom/alibaba/alimei/mail/widget/MailListBannerView;)V

    iput-object v4, v2, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->b:Lafa$a;

    .line 3145
    iget-object v4, v2, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->b:Lafa$a;

    .line 4078
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v3, Lafa;->c:Ljava/lang/ref/WeakReference;

    .line 4198
    :cond_0
    iget-object v3, v3, Lafa;->a:Ljava/util/List;

    .line 3148
    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->a(Ljava/util/List;)V

    .line 318
    :cond_1
    sget v2, Laxo$f;->list_empty_view:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 319
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v3, Laxo$e;->alm_cmail_empty_icon:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 320
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v3, Laxo$i;->alm_cmail_no_mails:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 321
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v3, Laxo$i;->dt_mail_return_inbox:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionText(I)V

    .line 322
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxo$c;->mail_menu_text_color_selector:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionTextColor(I)V

    .line 323
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v3, Laxo$e;->cmail_round_btn_normal:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionBackgroundResource(I)V

    .line 324
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 326
    sget v2, Laxo$f;->progressContainer:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->t:Landroid/view/View;

    .line 327
    sget v2, Laxo$f;->progress_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->v:Landroid/widget/TextView;

    .line 328
    sget v2, Laxo$f;->progress:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->w:Landroid/view/View;

    .line 330
    sget v2, Laxo$f;->action_button_layout:I

    invoke-static {p1, v2}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->r:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    .line 331
    sget v2, Laxo$f;->mail_footer_divider:I

    invoke-static {p1, v2}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->s:Landroid/view/View;

    .line 333
    sget v2, Laxo$f;->swipe_layout_mail_list:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->y:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 334
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->y:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v3, 0x4

    new-array v3, v3, [I

    sget v4, Laxo$c;->swipe_refresh_color1:I

    aput v4, v3, v8

    const/4 v4, 0x1

    sget v5, Laxo$c;->swipe_refresh_color2:I

    aput v5, v3, v4

    const/4 v4, 0x2

    sget v5, Laxo$c;->swipe_refresh_color1:I

    aput v5, v3, v4

    const/4 v4, 0x3

    sget v5, Laxo$c;->swipe_refresh_color2:I

    aput v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 337
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->t()V

    .line 339
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g:Landroid/widget/ListView;

    new-instance v3, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$16;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$16;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 379
    invoke-static {}, Lafa;->a()Lafa;

    move-result-object v2

    .line 5198
    iget-object v0, v2, Lafa;->a:Ljava/util/List;

    .line 380
    .local v0, "bannerDos":Ljava/util/List;, "Ljava/util/List<Lafl;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5422
    :cond_2
    invoke-static {}, Lacq;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6130
    const-string/jumbo v2, "pref_key_guide_folder_push_setting_show"

    invoke-static {v2, v8}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 5422
    if-nez v2, :cond_3

    .line 5423
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Laxo$g;->alm_cmail_list_header_guide_folders_push:I

    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 5424
    sget v3, Laxo$f;->goto_folder_push_settings:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$18;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$18;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5435
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 384
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->r:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->e:Lafo;

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/mail/widget/FooterActionLayout;->setOnMenuItemClickListener(Lafo;)V

    .line 385
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->r:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    invoke-virtual {v2, v6}, Lcom/alibaba/alimei/mail/widget/FooterActionLayout;->setVisibility(I)V

    .line 386
    return-void
.end method

.method protected final b(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 1
    .param p1, "mailModel"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 2054
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->b(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 2055
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    invoke-virtual {v0, p1}, Lacv;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 2056
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 798
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->O()V

    .line 799
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    .line 808
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 809
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 810
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->w()V

    .line 811
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u()V

    .line 814
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->n:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    if-eqz v0, :cond_3

    .line 815
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->n:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b(Ljava/lang/String;)V

    .line 818
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->W:Ladq;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->W:Ladq;

    invoke-interface {v0, p1}, Ladq;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final b(Z)V
    .locals 6
    .param p1, "editor"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const v5, 0x800003

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2004
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->b(Z)V

    .line 2005
    if-nez p1, :cond_9

    move v0, v1

    .line 20911
    :goto_0
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v4, :cond_0

    .line 20912
    if-eqz v0, :cond_a

    .line 20913
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2, v5}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    .line 2006
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    if-eqz v0, :cond_1

    .line 2007
    if-eqz p1, :cond_b

    .line 2008
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    .line 21241
    iput v1, v0, Lacv;->b:I

    .line 2015
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->r:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    if-eqz v0, :cond_2

    .line 2016
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->r:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    if-eqz p1, :cond_c

    move v0, v2

    :goto_3
    invoke-virtual {v4, v0}, Lcom/alibaba/alimei/mail/widget/FooterActionLayout;->setVisibility(I)V

    .line 2019
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->s:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2020
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->s:Landroid/view/View;

    if-eqz p1, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2023
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->M:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 22924
    iget-boolean v3, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->c:Z

    .line 2023
    if-nez v3, :cond_d

    move v3, v1

    :goto_4
    invoke-static {v0, v3}, Lss;->a(Landroid/view/ViewGroup;Z)V

    .line 2024
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->M:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 23924
    iget-boolean v3, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->c:Z

    .line 2024
    if-nez v3, :cond_e

    move v3, v1

    :goto_5
    invoke-static {v0, v3}, Lss;->b(Landroid/view/ViewGroup;Z)V

    .line 2025
    if-nez p1, :cond_5

    .line 2026
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E()V

    .line 2029
    :cond_5
    if-nez p1, :cond_f

    .line 2032
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->N()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2033
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->c(Z)V

    .line 2039
    :goto_6
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->y:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    if-eqz v0, :cond_6

    .line 2040
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->y:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    if-nez p1, :cond_10

    :goto_7
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setEnabled(Z)V

    .line 2043
    :cond_6
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->W:Ladq;

    if-eqz v0, :cond_7

    .line 2044
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->W:Ladq;

    invoke-interface {v0, p1}, Ladq;->a(Z)V

    .line 2047
    :cond_7
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    if-eqz v0, :cond_8

    .line 2048
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    invoke-virtual {v0}, Lacv;->notifyDataSetChanged()V

    .line 2050
    :cond_8
    return-void

    :cond_9
    move v0, v2

    .line 2005
    goto :goto_0

    .line 20915
    :cond_a
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1, v5}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    goto :goto_1

    .line 2010
    :cond_b
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    .line 22241
    iput v2, v0, Lacv;->b:I

    .line 2011
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    invoke-virtual {v0}, Lacv;->i()V

    goto :goto_2

    :cond_c
    move v0, v3

    .line 2016
    goto :goto_3

    :cond_d
    move v3, v2

    .line 2023
    goto :goto_4

    :cond_e
    move v3, v2

    .line 2024
    goto :goto_5

    .line 2035
    :cond_f
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->c(Z)V

    goto :goto_6

    :cond_10
    move v1, v2

    .line 2040
    goto :goto_7
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Z)V
    .locals 4
    .param p1, "hasMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 1690
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1708
    :cond_0
    :goto_0
    return-void

    .line 1694
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    if-nez v2, :cond_3

    move v0, v1

    .line 1695
    .local v0, "count":I
    :goto_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    if-eqz v2, :cond_0

    .line 1696
    if-eqz p1, :cond_4

    if-lez v0, :cond_4

    .line 1697
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {v2, v1}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->setVisibility(I)V

    .line 1704
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->t:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1694
    .end local v0    # "count":I
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    invoke-virtual {v2}, Lacv;->getCount()I

    move-result v0

    goto :goto_1

    .line 1700
    .restart local v0    # "count":I
    :cond_4
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->setVisibility(I)V

    .line 1701
    if-gtz v0, :cond_2

    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1702
    sget v1, Laxo$i;->alm_cmail_loading_mails:I

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->c(I)V

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 213
    sget v0, Laxo$g;->alm_cmail_fragment_mail_main:I

    return v0
.end method

.method public final f()Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    return-object v0
.end method

.method protected final g()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1251
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v3

    .line 16189
    iget v3, v3, Lafy;->o:I

    .line 1251
    if-nez v3, :cond_0

    move v0, v1

    .line 1252
    .local v0, "isConversion":Z
    :goto_0
    iget v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->i:I

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "isConversion":Z
    :cond_0
    move v0, v2

    .line 1251
    goto :goto_0

    .restart local v0    # "isConversion":Z
    :cond_1
    move v1, v2

    .line 1252
    goto :goto_1
.end method

.method protected final h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2072
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    invoke-virtual {v1}, Lacv;->j()Ljava/util/List;

    move-result-object v0

    .line 2073
    .local v0, "selectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    invoke-virtual {v0}, Lacv;->notifyDataSetChanged()V

    .line 833
    :cond_0
    return-void
.end method

.method protected final k_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 1738
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 18614
    :cond_0
    :goto_0
    return-void

    .line 1742
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1750
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->aa:I

    if-eq v0, v1, :cond_0

    .line 19503
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    .line 18613
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    if-eqz v0, :cond_0

    .line 18616
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18619
    iput v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->aa:I

    .line 18620
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m()V

    .line 18621
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->ab:Lxv;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->loadMoreHistoryMail(Lxv;)V

    goto :goto_0
.end method

.method public final l()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1122
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->A:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->unregisterObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 1124
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->release()V

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->n:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    if-eqz v0, :cond_4

    .line 1128
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->n:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    .line 13614
    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->d:Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    if-eqz v1, :cond_1

    .line 13615
    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->d:Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    iget-object v2, v0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->h:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;->unregisterObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 13616
    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->d:Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;->release()V

    .line 13619
    :cond_1
    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->c:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    if-eqz v1, :cond_2

    .line 13620
    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->c:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    iget-object v2, v0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->i:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->unregisterObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 13621
    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->c:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->release()V

    .line 13624
    :cond_2
    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    if-eqz v1, :cond_3

    .line 13625
    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    .line 14248
    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->a()V

    .line 13627
    :cond_3
    iput-boolean v4, v0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->g:Z

    .line 1131
    :cond_4
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->l:I

    if-eq v0, v4, :cond_5

    .line 1132
    invoke-static {v3}, Lacg;->a(Lcom/alibaba/alimei/sdk/model/FolderModel;)V

    .line 1135
    :cond_5
    sget v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->q:I

    if-gtz v0, :cond_6

    .line 14261
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrx;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v0

    .line 1136
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->releaseLoader()V

    .line 1138
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->L()V

    .line 1139
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->Y:Lyb;

    if-eqz v0, :cond_7

    .line 15085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    .line 1140
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->Y:Lyb;

    invoke-interface {v0, v1}, Lya;->a(Lyb;)V

    .line 1141
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->Y:Lyb;

    .line 1147
    :cond_7
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 1148
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->ab:Lxv;

    .line 1149
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    .line 1150
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->A:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 1151
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    if-eqz v0, :cond_8

    .line 1152
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    .line 15359
    iput-object v3, v0, Lacv;->h:Lacv$d;

    .line 1153
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    invoke-virtual {v0}, Lacv;->c()V

    .line 1155
    :cond_8
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    if-eqz v0, :cond_9

    .line 1156
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1158
    :cond_9
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C()V

    .line 16163
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 16164
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g:Landroid/widget/ListView;

    .line 16165
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->t:Landroid/view/View;

    .line 16166
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 16167
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->v:Landroid/widget/TextView;

    .line 16168
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->w:Landroid/view/View;

    .line 16169
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    .line 16170
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->y:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 16171
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->z:Lxv;

    .line 16172
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->A:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 16173
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->E:Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    .line 16174
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    .line 16175
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->S:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$b;

    .line 16176
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->U:Ljava/lang/Runnable;

    .line 16177
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    .line 1160
    return-void
.end method

.method public final m()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1711
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    if-nez v1, :cond_0

    .line 1726
    :goto_0
    return-void

    .line 1714
    :cond_0
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->aa:I

    .line 1715
    .local v0, "stage":I
    packed-switch v0, :pswitch_data_0

    .line 1723
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->a(I)V

    goto :goto_0

    .line 1717
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->a(I)V

    goto :goto_0

    .line 1720
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->a(I)V

    goto :goto_0

    .line 1715
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 710
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 711
    iput-boolean v5, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->x:Z

    .line 712
    if-eqz p1, :cond_1

    .line 713
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    const-string/jumbo v0, "useraccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    .line 716
    :cond_0
    const-string/jumbo v0, "maintype"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->i:I

    .line 718
    :cond_1
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$a;

    invoke-direct {v0, p0, v4}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$a;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;B)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    .line 719
    new-instance v1, Lacv;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    .line 7503
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    .line 719
    invoke-direct {v1, v0, v2}, Lacv;-><init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    .line 720
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    .line 8250
    iput-boolean v4, v0, Lacv;->a:Z

    .line 721
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    .line 8492
    iput-boolean v4, v0, Lacv;->g:Z

    .line 722
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    const v1, 0x7fffffff

    .line 8500
    iput v1, v0, Lacv;->k:I

    .line 723
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    .line 9199
    iput-object p0, v0, Lacv;->q:Lacm;

    .line 724
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$2;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    .line 9359
    iput-object v1, v0, Lacv;->h:Lacv$d;

    .line 735
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h:Lacv;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 736
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 737
    invoke-interface {v0}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    .line 11085
    :cond_2
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    .line 739
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->Y:Lyb;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "ptcpUnreadCountChanged"

    aput-object v3, v2, v4

    const-string/jumbo v3, "basic_SyncMail"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, "basic_SyncNewMail"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->C:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$3;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 752
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 692
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->onAttach(Landroid/content/Context;)V

    .line 694
    :try_start_0
    check-cast p1, Ladq;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->W:Ladq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :goto_0
    return-void

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 682
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->onCreate(Landroid/os/Bundle;)V

    .line 683
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 687
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->onDestroy()V

    .line 688
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 218
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 219
    const-string/jumbo v0, "useraccount"

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string/jumbo v0, "maintype"

    iget v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    return-void
.end method

.method public final p()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const v3, 0x800003

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1925
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v2, :cond_0

    .line 1926
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->e(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1927
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/DrawerLayout;->d(I)V

    .line 1937
    :goto_0
    return v0

    .line 19924
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->c:Z

    .line 1932
    if-eqz v2, :cond_1

    .line 20059
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1937
    goto :goto_0
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 2059
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Z)V

    .line 2060
    return-void
.end method

.method public final r()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 24356
    invoke-static {}, Lafv;->g()Lcom/alibaba/alimei/sdk/api/AccountAdditionalApi;

    move-result-object v0

    .line 2119
    .local v0, "accountAdditionalApi":Lcom/alibaba/alimei/sdk/api/AccountAdditionalApi;
    if-nez v0, :cond_0

    .line 2120
    const-string/jumbo v2, "AbsCMailFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkHasNewMail fail for folderApi is null, accountName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24503
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    .line 2120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    :goto_0
    return-void

    .line 2124
    :cond_0
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$15;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$15;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    .line 2213
    .local v1, "listener":Lxv;, "Lxv<Ljava/util/Map<Ljava/lang/String;Laha;>;>;"
    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/api/AccountAdditionalApi;->queryNewMailCount(Lxv;)V

    goto :goto_0
.end method
