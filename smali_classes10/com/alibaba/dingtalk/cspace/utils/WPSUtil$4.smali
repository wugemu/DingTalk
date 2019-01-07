.class final Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$4;
.super Landroid/content/BroadcastReceiver;
.source "WPSUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$4;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 326
    if-nez p2, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    :try_start_0
    const-string/jumbo v0, "ThirdPackage"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 334
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cn.wps.moffice.file.close"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const-string/jumbo v0, "CloseFile"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 341
    .local v7, "filePathClosed":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$4;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v0, v7}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    move-result-object v9

    .line 343
    .local v9, "wpsEditingModel":Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;
    if-eqz v9, :cond_2

    iget-object v0, v9, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-nez v0, :cond_3

    .line 344
    :cond_2
    sget v0, Lfzs$h;->dt_space_error_inner:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 345
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$4;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    const/4 v1, 0x0

    const-string/jumbo v2, "onReceiveCloseBroadcast"

    const-string/jumbo v3, "2012"

    const-string/jumbo v4, "wpsEditingModel or spaceDo is null"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    .end local v7    # "filePathClosed":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "wpsEditingModel":Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;
    :catch_0
    move-exception v6

    .line 354
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "CSpace"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$4;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->f(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "BroadCast"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "wpsBroadCastReceiverException"

    invoke-static {v2, v3, v4, v6}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "filePathClosed":Ljava/lang/String;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "wpsEditingModel":Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;
    :cond_3
    :try_start_1
    sget-object v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;->STATUS_UPLOADING:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    iput-object v0, v9, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->b:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    .line 351
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$4;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v0, p1, v9}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
