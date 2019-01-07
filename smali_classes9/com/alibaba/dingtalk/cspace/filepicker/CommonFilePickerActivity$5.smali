.class final Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$5;
.super Lgdc;
.source "CommonFilePickerActivity.java"


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
    .line 259
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$5;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-direct {p0}, Lgdc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;ZLjava/lang/String;Landroid/net/Uri;)V
    .locals 9
    .param p1, "fragment"    # Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;
    .param p2, "isSelected"    # Z
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "fileUri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 266
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a(ZLjava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$5;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->c(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lgdb;

    move-result-object v1

    .line 1052
    iget-object v1, v1, Lgdb;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v0

    .line 269
    .local v0, "count":I
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$5;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v1, v0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->b(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;I)V

    .line 270
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$5;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->c(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lgdb;

    move-result-object v1

    .line 1060
    iget-wide v2, v1, Lgdb;->b:J

    .line 271
    .local v2, "size":J
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$5;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->d(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$5;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    sget v5, Lfzs$h;->filepicker_total_size:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 2046
    invoke-static {v2, v3}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v8

    .line 271
    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    return-void
.end method
