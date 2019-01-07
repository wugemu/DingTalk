.class final Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity$2;
.super Ljava/lang/Object;
.source "FilesHelperSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ToggleButton;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;Landroid/widget/ToggleButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity$2;->b:Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity$2;->a:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity$2;->b:Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity$2;->b:Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity$2;->a:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/Conversation;->stayOnTop(ZLcom/alibaba/wukong/Callback;)V

    .line 76
    :cond_0
    return-void
.end method
