.class final Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$1;
.super Ljava/lang/Object;
.source "AvatarSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;->onUploadFinished(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$1;->b:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$1;->b:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$1;->b:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$1;->b:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->b(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;Z)Z

    .line 337
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$1;->b:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$1;->b:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;Z)Z

    .line 340
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$1;->b:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->c()V

    .line 342
    :cond_1
    return-void
.end method
