.class final Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$9;
.super Ljava/lang/Object;
.source "AnnounceEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

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
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->c(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->d(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->e(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;->setVisibility(I)V

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->d(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->e(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;->setVisibility(I)V

    goto :goto_0
.end method
