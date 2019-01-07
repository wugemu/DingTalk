.class final Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "AvatarSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 313
    const-string/jumbo v1, "com.workapp.choose.pictire.from.crop"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    const-string/jumbo v1, "choose_picture_ids"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 318
    .restart local v0    # "path":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->b(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;Z)Z

    .line 319
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 322
    :cond_2
    invoke-static {}, Lify;->a()Lify;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;-><init>(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;)V

    invoke-virtual {v1, v0, v2}, Lify;->a(Ljava/lang/String;Lifw;)V

    goto :goto_0
.end method
