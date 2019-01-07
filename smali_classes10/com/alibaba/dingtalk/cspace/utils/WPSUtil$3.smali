.class final Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;
.super Ljava/lang/Object;
.source "WPSUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic c:Lcma;

.field final synthetic d:Lgob;

.field final synthetic e:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;

.field final synthetic f:Landroid/content/Context;

.field final synthetic g:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;Lgob;Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->g:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-object p4, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->c:Lcma;

    iput-object p5, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->d:Lgob;

    iput-object p6, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->e:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;

    iput-object p7, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->f:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 235
    :try_start_0
    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->a:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v7, "originFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->g:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const-string/jumbo v2, "originFile not Exists"

    const-string/jumbo v3, "2012"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lfzs$h;->dt_space_error_inner:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->c:Lcma;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 274
    .end local v7    # "originFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 242
    .restart local v7    # "originFile":Ljava/io/File;
    :cond_1
    invoke-static {}, Lgpr;->a()Ljava/lang/String;

    move-result-object v8

    .line 244
    .local v8, "spaceTempDir":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->g:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const-string/jumbo v2, "getSpaceTempDir"

    const-string/jumbo v3, "2012"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lfzs$h;->dt_space_error_inner:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->c:Lcma;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    .end local v7    # "originFile":Ljava/io/File;
    .end local v8    # "spaceTempDir":Ljava/lang/String;
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->g:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const-string/jumbo v2, "openFile"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "open file failed"

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->c:Lcma;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 250
    .restart local v7    # "originFile":Ljava/io/File;
    .restart local v8    # "spaceTempDir":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->g:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->b(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v1}, Lgpr;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    .line 252
    .local v9, "wpsEditingModel":Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;
    if-eqz v9, :cond_3

    iget-object v0, v9, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->g:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->d:Lgob;

    invoke-static {v0, v8, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Lgob;)Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    move-result-object v9

    .line 256
    :cond_4
    if-eqz v9, :cond_5

    .line 257
    sget-object v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;->STATUS_EDITING:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    iput-object v0, v9, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->b:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    .line 258
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->e:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;

    iget-object v1, v9, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->d:Ljava/lang/String;

    .line 1598
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;->d:Ljava/lang/String;

    .line 261
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->e:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;

    .line 2598
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;->a:Z

    .line 262
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->e:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;

    .line 3598
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;->b:Z

    .line 263
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->e:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    .line 4598
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;->c:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->g:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->b(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Landroid/content/Context;)V

    .line 266
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->e:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->c:Lcma;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)Z

    move-result v6

    .line 268
    .local v6, "openSuccess":Z
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->c:Lcma;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;->c:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
