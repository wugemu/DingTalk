.class public Lgfg;
.super Ljava/lang/Object;
.source "OnlineEditHelper.java"


# static fields
.field public static a:Lgqy;

.field public static b:Lgqy;

.field public static c:Lgqy;

.field private static volatile e:Lgfg;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lgqy;

    const/4 v1, 0x1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->dt_cspace_online_document_edit:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgqy;-><init>(ILjava/lang/String;)V

    sput-object v0, Lgfg;->a:Lgqy;

    .line 59
    new-instance v0, Lgqy;

    const/4 v1, 0x2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->dt_cspace_local_edit_tip:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgqy;-><init>(ILjava/lang/String;)V

    sput-object v0, Lgfg;->b:Lgqy;

    .line 60
    new-instance v0, Lgqy;

    const/4 v1, -0x1

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lgqy;-><init>(ILjava/lang/String;)V

    sput-object v0, Lgfg;->c:Lgqy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string/jumbo v0, "OnlineEditHelper"

    iput-object v0, p0, Lgfg;->d:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static a()Lgfg;
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lgfg;->e:Lgfg;

    if-nez v0, :cond_1

    .line 67
    const-class v1, Lgfg;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lgfg;->e:Lgfg;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lgfg;

    invoke-direct {v0}, Lgfg;-><init>()V

    sput-object v0, Lgfg;->e:Lgfg;

    .line 71
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    sget-object v0, Lgfg;->e:Lgfg;

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/app/Activity;J)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "editor"    # J

    .prologue
    .line 282
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lgfg;->a(Landroid/app/Activity;JZLcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 283
    return-void
.end method

.method public static a(Landroid/app/Activity;JZLcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 17
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "editor"    # J
    .param p3, "isMultiFile"    # Z
    .param p4, "firstFile"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 287
    if-eqz p0, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v2, p1, v12

    if-gtz v2, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    move-object/from16 v3, p0

    .line 292
    .local v3, "context":Landroid/content/Context;
    new-instance v8, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;-><init>(Landroid/app/Activity;)V

    .line 294
    .local v8, "dialog":Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 295
    invoke-static/range {p4 .. p4}, Lgpv;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v9, 0x1

    .line 297
    .local v9, "isRealMultiFile":Z
    :goto_1
    if-eqz v9, :cond_3

    .line 298
    sget v2, Lfzs$h;->dt_cspace_files_locked_tp:I

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 299
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v6

    const/4 v6, 0x1

    sget v11, Lfzs$h;->dt_cspace_others:I

    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v6

    .line 298
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 304
    .local v10, "title":Ljava/lang/String;
    :goto_2
    invoke-virtual {v8, v10}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->a(Ljava/lang/String;)V

    .line 306
    new-instance v7, Lgfg$2;

    move-object/from16 v0, p4

    invoke-direct {v7, v9, v3, v0, v8}, Lgfg$2;-><init>(ZLandroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;)V

    .line 324
    .local v7, "listener":Lfzo$a;
    const-class v2, Lfzo$a;

    move-object/from16 v0, p0

    invoke-static {v7, v2, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "listener":Lfzo$a;
    check-cast v7, Lfzo$a;

    .line 325
    .restart local v7    # "listener":Lfzo$a;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide v14, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v12, v14

    double-to-int v5, v12

    .line 326
    .local v5, "flag":I
    invoke-static {}, Lfzo;->a()Lfzo;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move v6, v5

    invoke-virtual/range {v2 .. v7}, Lfzo;->a(Landroid/content/Context;Ljava/lang/String;IILfzo$a;)V

    .line 328
    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->c()V

    .line 329
    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->d()V

    .line 330
    sget v2, Lfzs$h;->dt_common_i_know:I

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->b(Ljava/lang/String;)V

    .line 331
    new-instance v2, Lgfg$3;

    invoke-direct {v2, v8}, Lgfg$3;-><init>(Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;)V

    invoke-virtual {v8, v2}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->a(Landroid/view/View$OnClickListener;)V

    .line 337
    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->show()V

    goto/16 :goto_0

    .line 295
    .end local v5    # "flag":I
    .end local v7    # "listener":Lfzo$a;
    .end local v9    # "isRealMultiFile":Z
    .end local v10    # "title":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 301
    .restart local v9    # "isRealMultiFile":Z
    :cond_3
    sget v2, Lfzs$h;->dt_cspace_single_file_locked_tip:I

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget v11, Lfzs$h;->dt_cspace_others:I

    .line 302
    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v6

    .line 301
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "title":Ljava/lang/String;
    goto :goto_2
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "fileId"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 266
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;-><init>(Landroid/app/Activity;)V

    .line 8031
    .local v0, "onlineEditFinishRemindDialog":Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;
    iput-object p1, v0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->a:Ljava/lang/String;

    .line 8035
    iput-object p2, v0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->b:Ljava/lang/String;

    .line 8039
    iput-object p3, v0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->c:Ljava/lang/String;

    .line 8043
    iput-object p4, v0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->d:Ljava/lang/String;

    .line 275
    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->setCancelable(Z)V

    .line 276
    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->setCanceledOnTouchOutside(Z)V

    .line 278
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lgfg;Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lgob;Lcma;)V
    .locals 3
    .param p0, "x0"    # Lgfg;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p3, "x3"    # Lgob;
    .param p4, "x4"    # Lcma;

    .prologue
    .line 57
    .line 8402
    new-instance v1, Lgfg$5;

    invoke-direct {v1, p0, p4, p1}, Lgfg$5;-><init>(Lgfg;Lcma;Landroid/content/Context;)V

    .line 8433
    const-class v2, Lcma;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v2, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 8434
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a()Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lgob;Lcma;)V

    .line 57
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lgqz;Lcma;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "param"    # Lgqz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lgqz;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 341
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lgqz;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-nez v0, :cond_2

    .line 342
    :cond_0
    sget v0, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 344
    if-eqz p3, :cond_1

    .line 345
    const-string/jumbo v0, "20170720"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_1
    :goto_0
    return-void

    .line 350
    :cond_2
    new-instance v5, Lgfg$4;

    invoke-direct {v5, p0, p1, p2, p3}, Lgfg$4;-><init>(Lgfg;Landroid/app/Activity;Lgqz;Lcma;)V

    .line 397
    .local v5, "getEditLocklistener":Lcma;, "Lcma<Lgob;>;"
    const-class v0, Lcma;

    invoke-static {v5, v0, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "getEditLocklistener":Lcma;, "Lcma<Lgob;>;"
    check-cast v5, Lcma;

    .line 398
    .restart local v5    # "getEditLocklistener":Lcma;, "Lcma<Lgob;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    iget-object v1, p2, Lgqz;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iget-object v2, p2, Lgqz;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    iget-object v3, p2, Lgqz;->b:Ljava/lang/String;

    iget-object v4, p2, Lgqz;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lgrb;JLcma;)V
    .locals 17
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "args"    # Lgrb;
    .param p3, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lgrb;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p5, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p2, :cond_1

    .line 84
    if-eqz p5, :cond_0

    .line 85
    const-string/jumbo v3, "20170720"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3724
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    move-object/from16 v0, p2

    iget-object v3, v0, Lgrb;->i:Ljava/lang/String;

    invoke-static {v3}, Lgpx;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "fileExtension":Ljava/lang/String;
    new-instance v2, Lgfg$1;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    move-wide/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lgfg$1;-><init>(Lgfg;Landroid/app/Activity;Lcma;Lgrb;Ljava/lang/String;J)V

    .line 214
    .local v2, "listener":Lcma;, "Lcma<Lgof;>;"
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v3, :cond_2

    move-object/from16 v3, p1

    .line 215
    check-cast v3, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 217
    :cond_2
    const-class v3, Lcma;

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "listener":Lcma;, "Lcma<Lgof;>;"
    check-cast v2, Lcma;

    .line 218
    .restart local v2    # "listener":Lcma;, "Lcma<Lgof;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lgrb;->a:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lgrb;->b:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Lgrb;->c:Ljava/lang/String;

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p2

    iget-object v9, v0, Lgrb;->d:Ljava/lang/String;

    .line 3718
    if-eqz v2, :cond_0

    .line 4109
    const-wide/16 v12, 0x0

    invoke-static {v4, v12, v13}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v12

    .line 3722
    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_3

    .line 5109
    const-wide/16 v12, 0x0

    invoke-static {v5, v12, v13}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v12

    .line 3722
    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gtz v12, :cond_4

    .line 3723
    :cond_3
    const-string/jumbo v3, "20170720"

    const-string/jumbo v4, "param error"

    invoke-interface {v2, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3727
    :cond_4
    new-instance v12, Lgji;

    invoke-direct {v12}, Lgji;-><init>()V

    .line 6109
    const-wide/16 v14, 0x0

    invoke-static {v4, v14, v15}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v14

    .line 3728
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v12, Lgji;->a:Ljava/lang/Long;

    .line 3729
    iput-object v5, v12, Lgji;->b:Ljava/lang/String;

    .line 3730
    iput-object v6, v12, Lgji;->c:Ljava/lang/String;

    .line 3731
    iput-object v8, v12, Lgji;->d:Ljava/util/List;

    .line 3732
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v12, Lgji;->e:Ljava/lang/Long;

    .line 7109
    const-wide/16 v4, 0x0

    invoke-static {v9, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3733
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v12, Lgji;->f:Ljava/lang/Long;

    .line 3735
    new-instance v4, Lgon$47;

    invoke-direct {v4, v3, v2}, Lgon$47;-><init>(Lgon;Lcma;)V

    .line 3742
    iget-object v3, v3, Lgon;->e:Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;

    invoke-interface {v3, v12, v4}, Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;->createDocForOnline(Lgji;Liyv;)V

    goto/16 :goto_0
.end method
