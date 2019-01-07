.class final Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;
.super Ljava/lang/Object;
.source "MailDetailCaptureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Z

.field final synthetic e:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;Ljava/lang/String;IJZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;->e:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;->b:I

    iput-wide p4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;->c:J

    iput-boolean p6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v12, 0x0

    .line 266
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;->a:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;->b:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "cTime":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 277
    .local v4, "tmpCreateAt":J
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;->a:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v2, "mailContentFile":Ljava/io/File;
    iget-wide v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;->c:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_1

    .line 281
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;->e:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    const-string/jumbo v7, "CMail"

    const-string/jumbo v8, "MailDetailCaptureActivity"

    const-string/jumbo v9, "initData"

    const-string/jumbo v10, "timecompare"

    const-string/jumbo v11, "createTime not same"

    .line 282
    invoke-static {v9, v10, v11, v12}, Lrv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    .line 281
    invoke-static {v6, v7, v8, v9}, Lacj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 285
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 288
    :cond_0
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;->e:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v6, v12}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;->a(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;Ljava/lang/String;)V

    .line 320
    .end local v2    # "mailContentFile":Ljava/io/File;
    .end local v4    # "tmpCreateAt":J
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;->e:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v6, v12}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;->a(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "mailContentFile":Ljava/io/File;
    .restart local v4    # "tmpCreateAt":J
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 294
    new-instance v3, Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/FileUtils;->readFile(Ljava/io/File;)[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 295
    .local v3, "mailContentInFile":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;->d:Z

    if-eqz v6, :cond_2

    .line 297
    :try_start_1
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;->e:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v6}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;->a(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v6

    invoke-static {}, Lzh;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lzh;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 308
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    new-instance v7, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1$1;

    invoke-direct {v7, p0}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;)V

    invoke-virtual {v6, v7}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 299
    :catch_1
    move-exception v6

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;->e:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v6, v12}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;->a(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_2
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;->e:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v6}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;->a(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v6

    iput-object v3, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    goto :goto_1

    .line 315
    .end local v3    # "mailContentInFile":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;->e:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    const-string/jumbo v7, "CMail"

    const-string/jumbo v8, "MailDetailCaptureActivity"

    const-string/jumbo v9, "initData"

    const-string/jumbo v10, "mailcontentfile"

    const-string/jumbo v11, "mailcontentfile not exist"

    .line 316
    invoke-static {v9, v10, v11, v12}, Lrv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    .line 315
    invoke-static {v6, v7, v8, v9}, Lacj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity$1;->e:Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;

    invoke-static {v6, v12}, Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;->a(Lcom/alibaba/alimei/mail/activity/MailDetailCaptureActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
