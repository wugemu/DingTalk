.class final Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$1;
.super Lgdc;
.source "AppsFileFilterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$1;->a:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    invoke-direct {p0}, Lgdc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;ZLjava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "fragment"    # Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;
    .param p2, "isSelected"    # Z
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "fileUri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 278
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$1;->a:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a(Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$1;->a:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a(Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    :cond_0
    return-void

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$1;->a:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a(Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    .line 283
    .local v0, "filePickerFragment":Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;
    if-eqz v0, :cond_2

    if-eq p1, v0, :cond_2

    .line 287
    invoke-virtual {v0, p2, p3}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method
