.class final Lgfg$2;
.super Ljava/lang/Object;
.source "OnlineEditHelper.java"

# interfaces
.implements Lfzo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfg;->a(Landroid/app/Activity;JZLcom/alibaba/alimei/cspace/model/DentryModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic d:Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;


# direct methods
.method constructor <init>(ZLandroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;)V
    .locals 0

    .prologue
    .line 306
    iput-boolean p1, p0, Lgfg$2;->a:Z

    iput-object p2, p0, Lgfg$2;->b:Landroid/content/Context;

    iput-object p3, p0, Lgfg$2;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object p4, p0, Lgfg$2;->d:Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "userNick"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-boolean v1, p0, Lgfg$2;->a:Z

    if-eqz v1, :cond_1

    .line 314
    iget-object v1, p0, Lgfg$2;->b:Landroid/content/Context;

    sget v2, Lfzs$h;->dt_cspace_files_locked_tp:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lgfg$2;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 315
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    .line 314
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "title":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lgfg$2;->d:Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    .end local v0    # "title":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lgfg$2;->b:Landroid/content/Context;

    sget v2, Lfzs$h;->dt_cspace_single_file_locked_tip:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/String;
    goto :goto_1
.end method
