.class final Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$6;
.super Ljava/lang/Object;
.source "CommonFilePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$6;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

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
    .line 305
    const-wide/16 v10, 0x0

    .line 306
    .local v10, "fileSize":J
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$6;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->c(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lgdb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$6;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->c(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lgdb;

    move-result-object v0

    .line 1060
    iget-wide v10, v0, Lgdb;->b:J

    .line 309
    :cond_0
    invoke-static {v10, v11}, Lgpy;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$6;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$6;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    sget v4, Lfzs$h;->dt_cspace_upload_free_flow:I

    .line 311
    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$6;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    sget v6, Lfzs$h;->dt_cspace_upload_network_ok:I

    .line 312
    invoke-virtual {v5, v6}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$6$1;

    invoke-direct {v6, p0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$6$1;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$6;)V

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$6;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    sget v8, Lfzs$h;->dt_conference_dingcard_free_flow_notice_title:I

    .line 318
    invoke-virtual {v7, v8}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$6;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    sget v9, Lfzs$h;->dt_conference_dingcard_free_flow_upload_notice:I

    .line 319
    invoke-virtual {v8, v9}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 310
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)Z

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$6;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->e(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)V

    goto :goto_0
.end method
