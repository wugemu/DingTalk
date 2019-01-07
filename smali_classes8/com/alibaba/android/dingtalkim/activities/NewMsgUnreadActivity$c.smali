.class final Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;
.super Ljava/lang/Object;
.source "NewMsgUnreadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/CheckBox;

.field c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/view/View;

.field g:Landroid/view/View;

.field h:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

.field i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic j:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V
    .locals 2

    .prologue
    .line 522
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->j:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    sget v0, Lctk$g;->item_new_msg_unread_member:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->a:Landroid/view/View;

    .line 524
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->a:Landroid/view/View;

    sget v1, Lctk$f;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->b:Landroid/widget/CheckBox;

    .line 525
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->a:Landroid/view/View;

    sget v1, Lctk$f;->tv_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 526
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->a:Landroid/view/View;

    sget v1, Lctk$f;->tv_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->d:Landroid/widget/TextView;

    .line 527
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->a:Landroid/view/View;

    sget v1, Lctk$f;->tv_contact_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->e:Landroid/widget/TextView;

    .line 528
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->a:Landroid/view/View;

    sget v1, Lctk$f;->tv_no_active:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->f:Landroid/view/View;

    .line 529
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->a:Landroid/view/View;

    sget v1, Lctk$f;->divider_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->g:Landroid/view/View;

    .line 530
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->a:Landroid/view/View;

    sget v1, Lctk$f;->dd_user_status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->h:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    .line 531
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1589
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->b:Landroid/widget/CheckBox;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1610
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->a:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    return-void
.end method
