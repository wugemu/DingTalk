.class final Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$2;
.super Ljava/lang/Object;
.source "AvatarSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;->onUploadFail(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$2;->c:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;

    iput p2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$2;->a:I

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 351
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$2;->c:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$2;->c:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$2;->c:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->b(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;Z)Z

    .line 355
    iget v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$2;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method
