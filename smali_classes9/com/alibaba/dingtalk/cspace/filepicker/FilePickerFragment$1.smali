.class final Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$1;
.super Ljava/lang/Object;
.source "FilePickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$1;->b:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$1;->b:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 210
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$1;->b:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->b(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "TargetPath cannot be dir or back!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$1;->b:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$1;->a:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$1;->b:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendEmptyMessage(I)Z

    .line 217
    return-void
.end method
