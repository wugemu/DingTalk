.class final Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$1;
.super Ljava/lang/Object;
.source "CommonFilePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 141
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$1;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.choose.file.from.picker.cancel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$1;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 148
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$1;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->finish()V

    .line 149
    return-void
.end method
