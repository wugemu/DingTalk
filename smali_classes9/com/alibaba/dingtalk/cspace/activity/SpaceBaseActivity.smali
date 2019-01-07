.class public abstract Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SpaceBaseActivity.java"

# interfaces
.implements Lgdf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;,
        Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;
    }
.end annotation


# instance fields
.field protected A:I

.field protected B:J

.field protected C:Landroid/widget/ListPopupWindow;

.field protected D:Lfzx;

.field protected final E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lfzx$a;",
            ">;"
        }
    .end annotation
.end field

.field protected F:Landroid/widget/ListPopupWindow;

.field protected G:Lfzx;

.field protected final H:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lfzx$a;",
            ">;"
        }
    .end annotation
.end field

.field protected final I:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected J:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field protected K:I

.field protected L:Landroid/os/Handler;

.field M:Lgoi;

.field private N:Z

.field private O:Z

.field private P:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

.field private Q:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

.field private R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation
.end field

.field private S:Z

.field private T:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;

.field private U:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

.field private V:Landroid/content/BroadcastReceiver;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field protected a:I

.field protected b:Z

.field protected c:Z

.field protected d:Z

.field protected e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

.field protected f:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

.field protected g:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:I

.field protected l:Z

.field protected m:J

.field protected n:Z

.field protected o:I

.field protected p:Z

.field protected q:Ljava/lang/String;

.field protected r:Ljava/lang/String;

.field protected s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;",
            ">;"
        }
    .end annotation
.end field

.field protected t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation
.end field

.field protected u:Ljava/lang/String;

.field protected v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

.field protected w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation
.end field

.field protected x:I

.field protected y:Ljava/lang/String;

.field protected z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 190
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->b:Z

    .line 191
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->c:Z

    .line 192
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->d:Z

    .line 215
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->p:Z

    .line 220
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->N:Z

    .line 221
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->O:Z

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->P:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->E:Ljava/util/Map;

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->H:Ljava/util/Map;

    .line 265
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 274
    const-string/jumbo v0, "img_picker"

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->W:Ljava/lang/String;

    .line 275
    const-string/jumbo v0, "file_picker"

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->X:Ljava/lang/String;

    .line 1193
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$5;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->M:Lgoi;

    .line 2154
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
    .param p1, "x1"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->P:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->R:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Lcma;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1157
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1158
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1159
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lfzs$h;->dt_cspace_upload_network_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_upload_network_ok:I

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$4;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$4;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lcma;)V

    .line 1160
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lfzs$h;->cancel:I

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$3;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$3;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lcma;)V

    .line 1167
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1175
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1181
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :goto_0
    return-void

    .line 1178
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 22
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 1470
    if-nez p1, :cond_0

    .line 1478
    :goto_0
    return-void

    .line 1473
    :cond_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->m:J

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    .line 1474
    invoke-static/range {p1 .. p1}, Lgpr;->h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->w:Ljava/util/ArrayList;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->b:Z

    .line 1476
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->l:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->n:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    move-object/from16 v18, v0

    .line 1477
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->s:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v3, p0

    move-object/from16 v21, p1

    .line 1473
    invoke-static/range {v3 .. v21}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLcma;IZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/alimei/cspace/model/DentryModel;ZZZ)V
    .locals 11
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "isCreator"    # Z
    .param p3, "isAdmin"    # Z
    .param p4, "isReadOnly"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1729
    new-instance v0, Lgmd;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a:I

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    iget-wide v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->m:J

    iget-boolean v8, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->n:Z

    move v3, p3

    move v4, p2

    invoke-direct/range {v0 .. v8}, Lgmd;-><init>(IIZZLjava/lang/String;JZ)V

    .line 11097
    .local v0, "operationController":Lgmd;
    iput-boolean p4, v0, Lgmd;->a:Z

    .line 11101
    iput-object p0, v0, Lgmd;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 11105
    iput-object p1, v0, Lgmd;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1736
    new-instance v10, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$14;

    invoke-direct {v10, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$14;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)V

    .line 1761
    .local v10, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-class v1, Lcma;

    invoke-static {v10, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    check-cast v10, Lcma;

    .line 11109
    .restart local v10    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iput-object v10, v0, Lgmd;->e:Lcma;

    .line 1764
    const/4 v1, 0x0

    invoke-static {v1, p1}, Lgpt;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v1

    .line 11113
    iput-object v1, v0, Lgmd;->c:Ljava/lang/String;

    .line 1766
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    if-eqz v1, :cond_0

    .line 1767
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    move-result-object v9

    .line 1768
    .local v9, "dentryExt":Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;
    if-eqz v9, :cond_0

    .line 1769
    invoke-virtual {v9}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->getEditor()J

    move-result-wide v2

    invoke-virtual {v9}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->canReleaseEditLock()Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lgmd;->a(JZ)V

    .line 1773
    .end local v9    # "dentryExt":Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;
    :cond_0
    invoke-virtual {v0}, Lgmd;->a()V

    .line 1774
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
    .param p1, "x1"    # I

    .prologue
    .line 111
    .line 13184
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->n:Z

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    invoke-static {v0, v1}, Lfzu;->a(ZI)Ljava/lang/String;

    move-result-object v0

    .line 13185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13186
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 13187
    const-string/jumbo v2, "type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13188
    const-string/jumbo v0, "num"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13189
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "space_upload_success_click"

    invoke-interface {v0, v2, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 111
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;ZZZ)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->c(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Ljava/util/ArrayList;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z

    .prologue
    .line 111
    .line 13133
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 13134
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Ljava/util/ArrayList;Z)V

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcma;)V

    .line 111
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Ljava/util/ArrayList;ZZLjava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/util/List;

    .prologue
    .line 111
    .line 13088
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13089
    :cond_0
    :goto_0
    return-void

    .line 13092
    :cond_1
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$23;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$23;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Ljava/util/ArrayList;ZLjava/util/List;Z)V

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->S:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
    .param p1, "x1"    # [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->Q:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->R:Ljava/util/ArrayList;

    return-object p1
.end method

.method private b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 493
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->H:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 494
    .local v1, "itemList":Ljava/util/List;, "Ljava/util/List<Lfzx$a;>;"
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->H:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfzx$a;

    .line 495
    .local v0, "item":Lfzx$a;
    if-eqz v0, :cond_0

    .line 496
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 500
    .end local v0    # "item":Lfzx$a;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->F:Landroid/widget/ListPopupWindow;

    if-eqz v3, :cond_3

    .line 501
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->G:Lfzx;

    invoke-virtual {v3, v1}, Lfzx;->a(Ljava/util/List;)V

    .line 502
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->F:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    .line 534
    :cond_2
    :goto_1
    return-void

    .line 506
    :cond_3
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->H:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 510
    new-instance v3, Lfzx;

    invoke-direct {v3, p0, v1}, Lfzx;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->G:Lfzx;

    .line 512
    new-instance v3, Landroid/widget/ListPopupWindow;

    const/4 v4, 0x0

    sget v5, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    sget v6, Lfzs$i;->DtTheme_Widget_ListPopupWindow:I

    invoke-direct {v3, p0, v4, v5, v6}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->F:Landroid/widget/ListPopupWindow;

    .line 515
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->F:Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->G:Lfzx;

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 516
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->F:Landroid/widget/ListPopupWindow;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$18;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$18;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 527
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->F:Landroid/widget/ListPopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 528
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->F:Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 529
    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {p0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    .line 530
    .local v2, "width":I
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->F:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 531
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->F:Landroid/widget/ListPopupWindow;

    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 532
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->F:Landroid/widget/ListPopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 533
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->F:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_1
.end method

.method protected static b(Landroid/view/Menu;)V
    .locals 5
    .param p0, "menu"    # Landroid/view/Menu;

    .prologue
    .line 731
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_addbutton_multchoice_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 733
    const/4 v1, 0x0

    const/16 v2, 0xf

    const/4 v3, 0x1

    sget v4, Lfzs$h;->space_op_select_all:I

    invoke-interface {p0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 735
    .local v0, "menuItemUnSelect":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 736
    return-void
.end method

.method private b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 5
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1481
    if-nez p1, :cond_1

    .line 1482
    const/4 v0, 0x0

    .line 1497
    :cond_0
    :goto_0
    return v0

    .line 1485
    :cond_1
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    .line 1486
    .local v1, "spaceAclUtil":Lgqd;
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->p:Z

    .line 1488
    .local v0, "isAdmin":Z
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    invoke-static {v2}, Lgqu;->h(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1489
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgqd;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1491
    :cond_2
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    invoke-static {v2}, Lgqu;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1492
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_conf_space_acl_permission_setting_enable"

    .line 10083
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 1492
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    .line 1493
    invoke-virtual {v1, v2}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1494
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgqd;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->Q:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->P:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    return-object v0
.end method

.method private c()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 584
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->C:Landroid/widget/ListPopupWindow;

    if-eqz v3, :cond_1

    .line 585
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->C:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->E:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 593
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->E:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 594
    .local v1, "itemList":Ljava/util/List;, "Ljava/util/List<Lfzx$a;>;"
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->E:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfzx$a;

    .line 595
    .local v0, "item":Lfzx$a;
    if-eqz v0, :cond_2

    .line 596
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 599
    .end local v0    # "item":Lfzx$a;
    :cond_3
    new-instance v3, Lfzx;

    invoke-direct {v3, p0, v1}, Lfzx;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->D:Lfzx;

    .line 601
    new-instance v3, Landroid/widget/ListPopupWindow;

    const/4 v4, 0x0

    sget v5, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    sget v6, Lfzs$i;->DtTheme_Widget_ListPopupWindow:I

    invoke-direct {v3, p0, v4, v5, v6}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->C:Landroid/widget/ListPopupWindow;

    .line 604
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->C:Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->D:Lfzx;

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 605
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->C:Landroid/widget/ListPopupWindow;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$20;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$20;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 617
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->C:Landroid/widget/ListPopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 618
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->C:Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 619
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lfzs$d;->space_add_drop_down_menu_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 620
    .local v2, "width":I
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->C:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 621
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->C:Landroid/widget/ListPopupWindow;

    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 622
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->C:Landroid/widget/ListPopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 624
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->C:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    goto/16 :goto_0
.end method

.method protected static c(Landroid/view/Menu;)V
    .locals 5
    .param p0, "menu"    # Landroid/view/Menu;

    .prologue
    .line 743
    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x1

    sget v4, Lfzs$h;->space_op_uncheck_all:I

    invoke-interface {p0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 744
    .local v0, "menuItemUnSelect":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 745
    return-void
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1297
    .local p1, "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    if-nez v2, :cond_0

    .line 1311
    :goto_0
    return-void

    .line 1301
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->getIntentAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1302
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->n:Z

    iget v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    invoke-static {v2, v3}, Lfzu;->a(ZI)Ljava/lang/String;

    move-result-object v1

    .line 1303
    .local v1, "src":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->isCopy()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1304
    const-string/jumbo v2, "space_transfer_src"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1305
    const-string/jumbo v2, "space_statistic_key"

    const-string/jumbo v3, "space_chatbutton_space_click"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1307
    :cond_1
    const-string/jumbo v2, "msg_entity_list"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1308
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1309
    invoke-static {}, Lgld;->a()Lgld;

    move-result-object v2

    invoke-virtual {v2}, Lgld;->d()V

    .line 1310
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgoj;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->W:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->X:Ljava/lang/String;

    return-object v0
.end method

.method private e(I)V
    .locals 1
    .param p1, "sortType"    # I

    .prologue
    .line 654
    const-string/jumbo v0, "pref_space_sort_type"

    invoke-static {p0, v0, p1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 656
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->supportInvalidateOptionsMenu()V

    .line 657
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c(I)V

    .line 660
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Boolean;
    .locals 8
    .param p1, "menuItemId"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 356
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move-object v0, v7

    .line 472
    :goto_1
    return-object v0

    .line 359
    :sswitch_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_addbutton_doc_upload_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->m()V

    goto :goto_0

    .line 363
    :sswitch_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_addbutton_folder_create_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->p()V

    goto :goto_0

    .line 367
    :sswitch_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_addbutton_select_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->d(I)V

    goto :goto_0

    .line 371
    :sswitch_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "space_action_edit_cancel"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 374
    :sswitch_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "space_action_repath_cancel"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 377
    :sswitch_5
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "space_action_save_cancel"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 380
    :sswitch_6
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "space_action_send_cancel"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 383
    :sswitch_7
    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->d(I)V

    goto/16 :goto_0

    .line 386
    :sswitch_8
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 387
    .local v6, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "time"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_addbutton_reorder_click"

    invoke-interface {v0, v1, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 389
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e(I)V

    goto/16 :goto_0

    .line 392
    .end local v6    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_9
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 393
    .restart local v6    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "alpha"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_addbutton_reorder_click"

    invoke-interface {v0, v1, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 395
    invoke-direct {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e(I)V

    goto/16 :goto_0

    .line 398
    .end local v6    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_a
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->A:I

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->B:J

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->i:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lfzu;->a(Landroid/app/Activity;IJLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    :sswitch_b
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v1, "https://s.dingtalk.com/market/dingtalk/cspacehelp.php?lwfrom=20160120192651871"

    sget v2, Lfzs$h;->cspace_user_try:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    :sswitch_c
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->l()V

    goto/16 :goto_0

    .line 407
    :sswitch_d
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/space/sharesetting.html"

    .line 408
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$12;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$12;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)V

    .line 407
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto/16 :goto_0

    .line 420
    :sswitch_e
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_folder_right_setting"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->q:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->m:J

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 424
    :sswitch_f
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_file_selectall_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->x:I

    .line 426
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->s()V

    goto/16 :goto_0

    .line 429
    :sswitch_10
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->x:I

    .line 430
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->s()V

    goto/16 :goto_0

    .line 433
    :sswitch_11
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a:I

    if-ne v0, v3, :cond_0

    .line 434
    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->d(I)V

    .line 435
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 440
    :sswitch_12
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_files_new"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 441
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->c()V

    goto/16 :goto_0

    .line 445
    :sswitch_13
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_files_new_word"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 446
    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    :sswitch_14
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_files_new_exel"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 451
    const-string/jumbo v0, "1"

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 455
    :sswitch_15
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_files_new_ppt"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 456
    const-string/jumbo v0, "2"

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 459
    :sswitch_16
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->b()V

    goto/16 :goto_0

    .line 3476
    :sswitch_17
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->g()Lgoa;

    move-result-object v0

    .line 3477
    if-eqz v0, :cond_0

    .line 3480
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;->a()Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$17;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$17;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lgoa;)V

    invoke-static {p0, v1}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;)V

    goto/16 :goto_0

    .line 465
    :sswitch_18
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_addbutton_select_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 4053
    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->d(I)V

    goto/16 :goto_0

    .line 469
    :sswitch_19
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v2, "https://reservation.dingtalk.com/aliXiaomi?from=dingtalk_disk"

    move-object v1, p0

    move-object v3, v7

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 356
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_6
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x19 -> :sswitch_19
        0x1a -> :sswitch_12
        0x1b -> :sswitch_13
        0x1c -> :sswitch_14
        0x1d -> :sswitch_15
        0x1e -> :sswitch_e
        0x1f -> :sswitch_16
        0x20 -> :sswitch_17
        0x21 -> :sswitch_18
        0x102002c -> :sswitch_11
    .end sparse-switch
.end method

.method protected final a(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 545
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->H:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    :goto_0
    return-void

    .line 4537
    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x1f

    const/4 v2, 0x1

    sget v3, Lfzs$h;->action_contact_add:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4538
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v1, :cond_1

    .line 4539
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    sget v2, Lfzs$h;->icon_more:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 4541
    :cond_1
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method protected final a(Landroid/view/Menu;IJ)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "searchType"    # I
    .param p3, "orgId"    # J

    .prologue
    .line 756
    iput p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->A:I

    .line 757
    iput-wide p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->B:J

    .line 758
    const/4 v1, 0x0

    const/16 v2, 0xb

    const/4 v3, 0x1

    sget v4, Lfzs$h;->search:I

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 760
    .local v0, "menuSearch":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v1, :cond_0

    .line 761
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    sget v2, Lfzs$h;->icon_search:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 763
    :cond_0
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 764
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/cspace/model/DentryModel;I)V
    .locals 2
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "modifyOperation"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 287
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->J:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 289
    iput p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->K:I

    .line 290
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V
    .locals 8
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "isCreator"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 1395
    if-nez p1, :cond_1

    .line 6533
    :cond_0
    :goto_0
    return-void

    .line 1399
    :cond_1
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfzv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/dingtalk/cspace/constants/SpaceConstants;->a:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1402
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_filelist_guidedoc_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1405
    :cond_2
    const-string/jumbo v1, "folder"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5413
    if-eqz p1, :cond_0

    .line 5417
    invoke-static {p1}, Lgpr;->g(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5419
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_photo_folder_in"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 5422
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5501
    if-eqz p1, :cond_0

    .line 5505
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->create()Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;

    move-result-object v0

    .line 5506
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->setSpaceId(Ljava/lang/String;)V

    .line 5507
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->setDentryId(Ljava/lang/String;)V

    .line 5508
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->setMode(I)V

    .line 5509
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->setAdmin(Z)V

    .line 5510
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->n:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->setFromConversation(Z)V

    .line 5511
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->b:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->setShowUploadRemindDialog(Z)V

    .line 5512
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->setRePathDentryList(Ljava/util/ArrayList;)V

    .line 5513
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->setSaveFilePath(Ljava/lang/String;)V

    .line 5514
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->setBatchSaveFileList(Ljava/util/ArrayList;)V

    .line 5515
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->setFileSendParam(Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;)V

    .line 5516
    invoke-static {p0, v0, v6, v3}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;ZLcma;)V

    goto/16 :goto_0

    .line 5427
    :cond_4
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    invoke-static {v0}, Lgqu;->h(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6436
    if-eqz p1, :cond_0

    .line 6439
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$9;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 6465
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 6466
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->u()Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 5432
    :cond_5
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto/16 :goto_0

    .line 1407
    :cond_6
    const-string/jumbo v1, "file"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6520
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6525
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lgpx;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 6526
    sget v2, Lfzs$e;->file_pic_36:I

    if-ne v1, v2, :cond_7

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 6527
    :cond_7
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->n:Z

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    invoke-static {v0, v1}, Lfzu;->a(ZI)Ljava/lang/String;

    move-result-object v4

    .line 6528
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->p:Z

    iget v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    iget-wide v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->m:J

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lfzu;->a(Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZLcma;Ljava/lang/String;IJ)V

    goto/16 :goto_0

    .line 6532
    :cond_8
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 6650
    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    .line 6532
    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 7650
    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    .line 6532
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 8540
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 8650
    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    .line 8540
    if-eqz v0, :cond_0

    .line 8543
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->showLoadingDialogDelay(J)V

    .line 8544
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$10;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$10;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9595
    :cond_9
    if-eqz p1, :cond_0

    .line 9599
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9600
    invoke-static {p1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v2

    .line 9601
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9603
    new-array v5, v6, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 9604
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->n:Z

    iget v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    invoke-static {v2, v3}, Lfzu;->a(ZI)Ljava/lang/String;

    move-result-object v2

    .line 9605
    invoke-static {p1, v2}, Lgoc;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v2

    .line 9606
    aput-object v2, v5, v0

    .line 9608
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 9609
    const-string/jumbo v3, "hide_list_button"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9610
    const-string/jumbo v3, "dentry_list"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 9611
    const-string/jumbo v1, "is_space_admin"

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->p:Z

    if-nez v3, :cond_a

    if-eqz p2, :cond_b

    :cond_a
    move v0, v6

    :cond_b
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9613
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    move-object v1, p0

    move v3, v6

    move v4, v6

    .line 9614
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZ[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)V
    .locals 6
    .param p1, "csDentry"    # Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 934
    if-nez p1, :cond_0

    .line 960
    :goto_0
    return-void

    .line 938
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    .line 939
    .local v2, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v2, :cond_1

    .line 940
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 941
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->h:Ljava/lang/String;

    .line 942
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->i:Ljava/lang/String;

    .line 943
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    .line 944
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->q:Ljava/lang/String;

    .line 947
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getSpace()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v1

    .line 948
    .local v1, "csSpace":Lcom/alibaba/dingtalk/cspace/model/CsSpace;
    if-eqz v1, :cond_2

    .line 949
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    .line 950
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getType()I

    move-result v3

    iput v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    .line 951
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getType()I

    move-result v3

    invoke-static {v3}, Lgqu;->h(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->l:Z

    .line 952
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getCoFolderRole()I

    move-result v3

    iput v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->o:I

    .line 953
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getOrg()Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    move-result-object v0

    .line 954
    .local v0, "csOrg":Lcom/alibaba/dingtalk/cspace/model/CsOrg;
    if-eqz v0, :cond_2

    .line 955
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->getId()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->m:J

    .line 959
    .end local v0    # "csOrg":Lcom/alibaba/dingtalk/cspace/model/CsOrg;
    :cond_2
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->p:Z

    invoke-virtual {p1, v3}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->checkAdmin(Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->p:Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1358
    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 1391
    :goto_0
    return-void

    .line 1361
    :cond_0
    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$8;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)V

    .line 1381
    .local v1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    invoke-interface {v2, v1, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v1, Lcma;

    .line 1382
    .restart local v1    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;-><init>()V

    .line 1383
    .local v0, "args":Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;
    iput-object p1, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->fileTypeId:Ljava/lang/String;

    .line 1384
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->spaceId:Ljava/lang/String;

    .line 1385
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    iput v2, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->spaceType:I

    .line 1386
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->i:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->parentId:Ljava/lang/String;

    .line 1387
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->h:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->parentPath:Ljava/lang/String;

    .line 1388
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->m:J

    iput-wide v2, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->orgId:J

    .line 1389
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lfzv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->convId:Ljava/lang/String;

    .line 1390
    invoke-static {p0, v0, v1}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;Lcma;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "folderId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1981
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1982
    .local v2, "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1983
    new-instance v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 1984
    .local v1, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1985
    const-string/jumbo p2, "/"

    .line 1987
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1988
    const-string/jumbo p3, "0"

    .line 1990
    :cond_1
    iput-object p1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 1991
    iput-object p2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    .line 1992
    iput-object p3, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 1993
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1995
    .end local v1    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.alibaba.dingtalk.cspace.choosespacedir"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1996
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "data"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1997
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1998
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1315
    .local p1, "dentryModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->m:J

    const/4 v6, 0x4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->u:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->s:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v3, p0

    move-object/from16 v10, p1

    invoke-static/range {v3 .. v18}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZLjava/util/ArrayList;)V

    .line 1318
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1234
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    if-nez v1, :cond_1

    .line 1294
    :cond_0
    :goto_0
    return-void

    .line 1238
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->getIntentAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1245
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->isCopy()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->getTargetSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1246
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->showLoadingDialog()V

    .line 1247
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 1248
    .local v4, "spaceDos":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1249
    .local v6, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-static {v6}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1251
    .end local v6    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_2
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$6;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)V

    const-class v3, Lcma;

    invoke-interface {v1, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    .line 1281
    .local v5, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;>;"
    new-instance v0, Lglh;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->getTargetSpaceId()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->isNeedThumbnail()Z

    move-result v3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lglh;-><init>(Landroid/content/Context;Ljava/lang/String;ZLjava/util/LinkedList;Lcma;)V

    .line 5063
    .local v0, "commonTransfer":Lglh;
    invoke-virtual {v0}, Lglh;->a()V

    goto :goto_0

    .line 1284
    .end local v0    # "commonTransfer":Lglh;
    .end local v4    # "spaceDos":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    .end local v5    # "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;>;"
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    .local v9, "spaceDoArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1286
    .local v7, "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-static {v7}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v8

    .line 1287
    .local v8, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-wide v10, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->m:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 1288
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    iget-object v3, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lfzv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cid:Ljava/lang/String;

    .line 1289
    sget-object v1, Lfzu;->b:Ljava/util/HashMap;

    iget-object v3, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cName:Ljava/lang/String;

    .line 1290
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1292
    .end local v7    # "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v8    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_4
    invoke-direct {p0, v9}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->c(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "showProgress"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1895
    if-eqz p1, :cond_0

    .line 1896
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->showLoadingDialog()V

    .line 1901
    :goto_0
    return-void

    .line 1898
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "space_action_save_cancel"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 1860
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->dismissLoadingDialog()V

    .line 1861
    if-nez p1, :cond_0

    .line 1862
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 1864
    :cond_0
    return-void
.end method

.method public final a(ZLjava/util/List;)V
    .locals 8
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1905
    .local p2, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->dismissLoadingDialog()V

    .line 1906
    if-eqz p1, :cond_5

    .line 1907
    iget v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 1908
    iget-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->n:Z

    iget v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    invoke-static {v5, v6}, Lfzu;->a(ZI)Ljava/lang/String;

    move-result-object v4

    .line 1910
    .local v4, "to":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1911
    .local v2, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "from"

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->z:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    const-string/jumbo v5, "to"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1913
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "space_save_success_click"

    invoke-interface {v5, v6, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1916
    .end local v2    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "to":Ljava/lang/String;
    :cond_0
    iget-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->N:Z

    if-eqz v5, :cond_1

    .line 1917
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "mail_attachments_saveto_space_success"

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1920
    :cond_1
    iget-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->O:Z

    if-eqz v5, :cond_3

    .line 1921
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 1922
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1923
    .local v3, "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1924
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-static {v0}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1926
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->b(Ljava/util/ArrayList;)V

    .line 1932
    .end local v3    # "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->r:Ljava/lang/String;

    invoke-static {v5}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1933
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.alibaba.dingtalk.cspace.savefile2space"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1934
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "data"

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1935
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v5

    invoke-virtual {v5, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1939
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "space_action_save_cancel"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1941
    :cond_5
    return-void

    .line 1928
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->b(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final b(I)V
    .locals 6
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 1880
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1881
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1883
    if-lez p1, :cond_1

    .line 1884
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lfzs$h;->space_selected_dentry:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1885
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1891
    :cond_0
    :goto_0
    return-void

    .line 1887
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lfzs$h;->space_selected_dentry_null:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1888
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V
    .locals 5
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "isCreator"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1619
    if-nez p1, :cond_1

    .line 10723
    :cond_0
    :goto_0
    return-void

    .line 1623
    :cond_1
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    invoke-static {v1}, Lgqu;->h(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    .line 1624
    invoke-static {v1}, Lgqu;->d(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgqd;->a(Ljava/lang/String;)Z

    .line 1625
    :cond_2
    invoke-static {p1}, Lgpx;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10645
    if-eqz p1, :cond_0

    .line 10648
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->U:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

    if-nez v1, :cond_3

    .line 10649
    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->U:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

    .line 10651
    :cond_3
    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$11;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V

    .line 10672
    const-class v2, Lcma;

    invoke-static {v1, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 10673
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->U:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

    invoke-virtual {v2, p1, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Lcma;)V

    goto :goto_0

    .line 1630
    :cond_4
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    invoke-static {v1}, Lgqu;->h(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10677
    if-eqz p1, :cond_0

    .line 10681
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgqd;->c(Ljava/lang/String;)Z

    move-result v1

    .line 10683
    invoke-static {p1}, Lgpv;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 10685
    invoke-static {}, Lgqd;->a()Lgqd;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "readOnly"

    invoke-static {v2, v3}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 10686
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;ZZZ)V

    goto :goto_0

    .line 10690
    :cond_5
    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$13;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$13;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZZ)V

    .line 10710
    const-class v1, Lcma;

    invoke-static {v2, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 10711
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->u()Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 1635
    :cond_6
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    invoke-static {v1}, Lgqu;->d(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 10715
    if-eqz p1, :cond_0

    .line 10719
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_conf_space_acl_permission_setting_enable"

    .line 11083
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 10719
    if-eqz v1, :cond_7

    .line 10720
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 10721
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgqd;->c(Ljava/lang/String;)Z

    move-result v1

    .line 10722
    invoke-direct {p0, p1, p2, v1, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;ZZZ)V

    goto/16 :goto_0

    .line 10724
    :cond_7
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->p:Z

    invoke-direct {p0, p1, p2, v1, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;ZZZ)V

    goto/16 :goto_0

    .line 1640
    :cond_8
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lfzv;->h(Ljava/lang/String;)Z

    move-result v0

    .line 1641
    .local v0, "isReadOnly":Z
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->p:Z

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;ZZZ)V

    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2002
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2003
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "space_action_save_cancel"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2049
    :cond_0
    :goto_0
    return-void

    .line 2006
    :cond_1
    const-string/jumbo v4, "&from=tfs"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2007
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->showLoadingDialog()V

    .line 2008
    const-string/jumbo v4, "&from=tfs"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2009
    .local v3, "realUrl":Ljava/lang/String;
    const-string/jumbo v4, "&filename"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 2012
    .local v2, "index":I
    if-ltz v2, :cond_2

    .line 2013
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2014
    .local v1, "fileUrl":Ljava/lang/String;
    add-int/lit8 v4, v2, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2019
    .local v0, "fileName":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    if-eqz v4, :cond_0

    .line 2020
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v4, v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2017
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "fileUrl":Ljava/lang/String;
    :cond_2
    move-object v1, v3

    .restart local v1    # "fileUrl":Ljava/lang/String;
    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 2022
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "fileUrl":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "realUrl":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "&from=mail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2023
    iput-boolean v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->N:Z

    .line 2024
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->showLoadingDialog()V

    .line 2025
    const-string/jumbo v4, "&from=mail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2026
    .restart local v3    # "realUrl":Ljava/lang/String;
    const-string/jumbo v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 2027
    .restart local v2    # "index":I
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2028
    .restart local v1    # "fileUrl":Ljava/lang/String;
    add-int/lit8 v4, v2, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2029
    .restart local v0    # "fileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    if-eqz v4, :cond_0

    .line 2030
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v4, v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2032
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "fileUrl":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "realUrl":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "&from=isv"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2033
    iput-boolean v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->O:Z

    .line 2034
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->showLoadingDialog()V

    .line 2035
    const-string/jumbo v4, "&from=isv"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2036
    .restart local v3    # "realUrl":Ljava/lang/String;
    const-string/jumbo v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 2037
    .restart local v2    # "index":I
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2038
    .restart local v1    # "fileUrl":Ljava/lang/String;
    add-int/lit8 v4, v2, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2039
    .restart local v0    # "fileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    if-eqz v4, :cond_0

    .line 2040
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v4, v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2043
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "fileUrl":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "realUrl":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2044
    .restart local v0    # "fileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    if-eqz v4, :cond_0

    .line 2045
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v4, p1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1946
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->dismissLoadingDialog()V

    .line 1948
    const-string/jumbo v1, "6000000"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1956
    :goto_0
    return-void

    .line 1952
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.dingtalk.cspace.copy"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1953
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1954
    const-string/jumbo v1, "errorMsg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1955
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method protected final b(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1959
    .local p1, "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1960
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->w:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1961
    const-string/jumbo v1, "com.alibaba.dingtalk.cspace.choosespacedir"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1968
    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1969
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1976
    :cond_1
    :goto_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1977
    return-void

    .line 1962
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1963
    const-string/jumbo v1, "com.alibaba.dingtalk.cspace.savefile2space"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1965
    :cond_3
    const-string/jumbo v1, "com.alibaba.dingtalk.cspace.copy"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 12024
    :cond_4
    sget-object v1, Lglc;->a:Ljava/lang/String;

    .line 1971
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1972
    const-string/jumbo v1, "errorCode"

    .line 13024
    sget-object v2, Lglc;->a:Ljava/lang/String;

    .line 1972
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1973
    const-string/jumbo v1, "errorMsg"

    .line 13028
    sget-object v2, Lglc;->b:Ljava/lang/String;

    .line 1973
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public final b(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1785
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1786
    sget v5, Lfzs$h;->network_error:I

    invoke-virtual {p0, v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcms;->a(Ljava/lang/String;)V

    .line 1856
    :cond_0
    :goto_0
    return-void

    .line 1789
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1792
    const/4 v1, 0x0

    .line 1794
    .local v1, "hasFolder":Z
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1795
    .local v3, "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    const-string/jumbo v5, "folder"

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1796
    const/4 v1, 0x1

    .line 1800
    :cond_2
    if-nez v1, :cond_3

    .line 1801
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 1802
    .local v4, "size":I
    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 1803
    add-int/lit8 v5, v4, -0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    check-cast v3, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1804
    .restart local v3    # "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    const-string/jumbo v5, "folder"

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1805
    const/4 v1, 0x1

    .line 1810
    .end local v4    # "size":I
    :cond_3
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1811
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v2, Lfzs$h;->space_delete_alert:I

    .line 1812
    .local v2, "messageResid":I
    if-eqz v1, :cond_4

    .line 1813
    sget v5, Lfzs$h;->space_delete_folder_alert_title:I

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1814
    sget v2, Lfzs$h;->space_delete_folder_alert_msg:I

    .line 1816
    :cond_4
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lfzs$h;->sure:I

    new-instance v7, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$16;

    invoke-direct {v7, p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$16;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Ljava/util/List;)V

    .line 1817
    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lfzs$h;->cancel:I

    new-instance v7, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$15;

    invoke-direct {v7, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$15;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)V

    .line 1849
    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1855
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method public final c(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 2053
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->d(I)V

    .line 2054
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2073
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2074
    return-void
.end method

.method public abstract c(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract d(I)V
.end method

.method protected final d(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 770
    const/4 v2, 0x0

    const/16 v3, 0x19

    const/4 v4, 0x1

    sget v5, Lfzs$h;->dt_space_feed_back_tip:I

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 772
    .local v1, "menuItem":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v2, :cond_0

    .line 773
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    sget v3, Lfzs$h;->icon_service_fill:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 774
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 777
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 778
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->J:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 295
    return-void
.end method

.method protected g()Lgoa;
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final h()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->H:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 553
    return-void
.end method

.method protected final i()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v1, 0x21

    .line 556
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->H:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lfzx$a;

    const/16 v2, 0xc9

    sget v3, Lfzs$h;->space_op_multi_select:I

    .line 557
    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget v5, Lfzs$h;->icon_multiset:I

    invoke-direct/range {v0 .. v5}, Lfzx$a;-><init>(IILjava/lang/String;II)V

    .line 556
    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    return-void
.end method

.method protected final j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 561
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->H:Ljava/util/Map;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    return-void
.end method

.method protected final k()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v1, 0x20

    .line 565
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->H:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lfzx$a;

    const/16 v2, 0xc8

    sget v3, Lfzs$h;->dt_space_list_operation_filter:I

    .line 566
    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget v5, Lfzs$h;->icon_filter:I

    invoke-direct/range {v0 .. v5}, Lfzx$a;-><init>(IILjava/lang/String;II)V

    .line 565
    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    return-void
.end method

.method protected l()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 574
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/space/sharecreate.html"

    .line 575
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$19;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$19;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)V

    .line 574
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 581
    return-void
.end method

.method public final m()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 819
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_addbutton_doc_upload_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 821
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 822
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lfzs$h;->space_upload:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 823
    sget v1, Lfzs$b;->alm_cspace_upload_menu:I

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$21;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$21;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 851
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 852
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 853
    return-void
.end method

.method protected n()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 856
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 857
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 861
    :cond_1
    const-string/jumbo v3, "space_mode"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a:I

    .line 862
    const-string/jumbo v3, "show_dialog"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->b:Z

    .line 863
    const-string/jumbo v3, "space_org_share_visible"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->c:Z

    .line 864
    const-string/jumbo v3, "space_tab_show_recent"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->d:Z

    .line 866
    const-string/jumbo v3, "dentry_model"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 867
    const-string/jumbo v3, "space_path"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->h:Ljava/lang/String;

    .line 868
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 869
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->h:Ljava/lang/String;

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 870
    .local v0, "index":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 871
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->h:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->i:Ljava/lang/String;

    .line 872
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->h:Ljava/lang/String;

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->h:Ljava/lang/String;

    .line 875
    .end local v0    # "index":I
    :cond_2
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 876
    const-string/jumbo v3, "/"

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->h:Ljava/lang/String;

    .line 879
    :cond_3
    const-string/jumbo v3, "space_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    .line 880
    const-string/jumbo v3, "space_type"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    .line 881
    const-string/jumbo v3, "is_public"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->l:Z

    .line 883
    const-string/jumbo v3, "org_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->m:J

    .line 884
    const-string/jumbo v3, "from_conversation"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->n:Z

    .line 886
    iget v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 887
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lfzv;->l(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->o:I

    .line 889
    :cond_4
    const-string/jumbo v3, "is_space_admin"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->p:Z

    .line 890
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "intent_key_auth_flag"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->q:Ljava/lang/String;

    .line 892
    const-string/jumbo v3, "local_path"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->r:Ljava/lang/String;

    .line 893
    const-string/jumbo v3, "batch_save_file_list"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->s:Ljava/util/ArrayList;

    .line 894
    const-string/jumbo v3, "space_send_action"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->u:Ljava/lang/String;

    .line 895
    const-string/jumbo v3, "intent_key_send_param"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    .line 897
    const-string/jumbo v3, "repath_list"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->w:Ljava/util/ArrayList;

    .line 899
    const/4 v3, 0x7

    iput v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->x:I

    .line 901
    const-string/jumbo v3, "space_statistic_key"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->y:Ljava/lang/String;

    .line 902
    const-string/jumbo v3, "space_transfer_src"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->z:Ljava/lang/String;

    .line 903
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->z:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 904
    const-string/jumbo v3, "other"

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->z:Ljava/lang/String;

    .line 907
    :cond_5
    const-string/jumbo v3, "intent_key_args"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 908
    .local v2, "parcelable":Landroid/os/Parcelable;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;

    if-eqz v3, :cond_0

    .line 909
    check-cast v2, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;

    .line 4914
    .end local v2    # "parcelable":Landroid/os/Parcelable;
    if-eqz v2, :cond_0

    .line 4918
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getMode()I

    move-result v3

    iput v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a:I

    .line 4919
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->isAdmin()Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->p:Z

    .line 4920
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->isShowUploadRemindDialog()Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->b:Z

    .line 4921
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->isFromConversation()Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->n:Z

    .line 4923
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getSaveFilePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->r:Ljava/lang/String;

    .line 4924
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getBatchSaveFileList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->s:Ljava/util/ArrayList;

    .line 4925
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getRePathDentryList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->w:Ljava/util/ArrayList;

    .line 4926
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getFileSendParam()Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    .line 4928
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    .line 4929
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getDentryId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->i:Ljava/lang/String;

    .line 4930
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getCsDentry()Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)V

    goto/16 :goto_0
.end method

.method protected o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 963
    const-string/jumbo v0, "SpaceBaseActivity"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1219
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1220
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->d(I)V

    .line 1224
    :goto_0
    return-void

    .line 1222
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 299
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 303
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 304
    .local v0, "config":Landroid/view/ViewConfiguration;
    const-class v3, Landroid/view/ViewConfiguration;

    const-string/jumbo v4, "sHasPermanentMenuKey"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 305
    .local v2, "menuKeyField":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 306
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 307
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    .end local v2    # "menuKeyField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)V

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->L:Landroid/os/Handler;

    .line 337
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->n()V

    .line 2968
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->V:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_1

    .line 2972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 2973
    new-array v4, v9, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->o()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const-string/jumbo v5, "_img_"

    aput-object v5, v4, v7

    aput-object v3, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->W:Ljava/lang/String;

    .line 2974
    new-array v4, v9, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->o()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const-string/jumbo v5, "_file_"

    aput-object v5, v4, v7

    aput-object v3, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->X:Ljava/lang/String;

    .line 2976
    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)V

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->V:Landroid/content/BroadcastReceiver;

    .line 3068
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 3069
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->W:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3070
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->X:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3071
    const-string/jumbo v4, "space_action_edit_cancel"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3072
    const-string/jumbo v4, "space_action_repath_cancel"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3073
    const-string/jumbo v4, "space_action_save_cancel"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3074
    const-string/jumbo v4, "space_action_send_cancel"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3075
    const-string/jumbo v4, "com.alibaba.alimei_sdk.RELOGIN_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3076
    const-string/jumbo v4, "com.alibaba.dingtalk.space.file.create"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3078
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->V:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 339
    :cond_1
    return-void

    .line 309
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1206
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->V:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1207
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->V:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->V:Landroid/content/BroadcastReceiver;

    .line 1210
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->S:Z

    if-eqz v1, :cond_1

    .line 1211
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lfzt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1212
    .local v0, "cacheKey":Ljava/lang/String;
    invoke-static {v0}, Lfzt;->a(Ljava/lang/String;)V

    .line 1214
    .end local v0    # "cacheKey":Ljava/lang/String;
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 1215
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 351
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    .line 352
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public final p()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1327
    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$7;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)V

    .line 1347
    .local v1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    invoke-interface {v2, v1, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v1, Lcma;

    .line 1348
    .restart local v1    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;-><init>()V

    .line 1349
    .local v0, "args":Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;->spaceId:Ljava/lang/String;

    .line 1350
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->h:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;->parentPath:Ljava/lang/String;

    .line 1351
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->q:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;->authFlag:Ljava/lang/String;

    .line 1352
    invoke-static {p0, v0, v1}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;Lcma;)V

    .line 1353
    return-void
.end method

.method public final q()V
    .locals 0

    .prologue
    .line 1868
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->showLoadingDialog()V

    .line 1869
    return-void
.end method

.method public final r()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1873
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->dismissLoadingDialog()V

    .line 1874
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "space_action_repath_cancel"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1876
    return-void
.end method

.method protected s()V
    .locals 0

    .prologue
    .line 2062
    return-void
.end method

.method protected final t()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2065
    sget v1, Lfzs$f;->ui_common_base_ui_activity_toolbar_divide:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2066
    .local v0, "actionBarDivider":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2067
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2069
    :cond_0
    return-void
.end method

.method protected final u()Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;
    .locals 1

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->T:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;

    if-nez v0, :cond_0

    .line 2078
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->T:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;

    .line 2080
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->T:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;

    return-object v0
.end method
