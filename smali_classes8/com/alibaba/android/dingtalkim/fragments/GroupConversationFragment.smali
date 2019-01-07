.class public Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "GroupConversationFragment.java"


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field private A:J

.field private B:Landroid/content/BroadcastReceiver;

.field private C:Z

.field private D:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

.field public a:Lcvu;

.field public c:J

.field public d:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/widget/ListView;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private h:Landroid/widget/AdapterView$OnItemClickListener;

.field private i:Landroid/view/View;

.field private j:Landroid/os/Handler;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:J

.field private r:J

.field private s:I

.field private t:I

.field private u:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

.field private w:Lcom/alibaba/android/dingtalkim/base/fetcher/ConfirmFetcher;

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->e:Ljava/util/List;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->o:Z

    .line 102
    const/16 v0, 0x9

    iput v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->t:I

    .line 113
    new-instance v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$1;-><init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->B:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;)Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->D:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    const/16 v2, 0x8

    .line 78
    .line 3711
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    invoke-virtual {v0}, Lcvu;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3712
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->f:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3713
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    invoke-virtual {v0}, Lcvu;->notifyDataSetChanged()V

    .line 3714
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    .line 3716
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3717
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 78
    .line 4502
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4503
    sget v1, Lctk$i;->chat_forward_dialog_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->chat_forward_yes:I

    new-instance v2, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$8;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$8;-><init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 4504
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->chat_forward_no:I

    const/4 v2, 0x0

    .line 4514
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 78
    .line 4524
    iget v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->s:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 4526
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.conversation.FORWARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4527
    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4528
    const-string/jumbo v1, "conversation_id"

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4529
    const-string/jumbo v1, "message_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4530
    const-string/jumbo v1, "intent_key_menu_seed"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->r:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4531
    const-string/jumbo v1, "intent_key_im_forward_mode"

    iget v2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->s:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4532
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 4534
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 4535
    :goto_0
    return-void

    .line 4536
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4537
    sget v1, Lctk$i;->chat_forward_dialog_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->chat_forward_yes:I

    new-instance v2, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$9;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$9;-><init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V

    .line 4538
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->chat_forward_no:I

    const/4 v2, 0x0

    .line 4553
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    const/4 v2, 0x0

    .line 265
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->w:Lcom/alibaba/android/dingtalkim/base/fetcher/ConfirmFetcher;

    if-nez v3, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v2

    .line 268
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 273
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->w:Lcom/alibaba/android/dingtalkim/base/fetcher/ConfirmFetcher;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/alibaba/android/dingtalkim/base/fetcher/ConfirmFetcher;->title(Landroid/content/Context;Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->w:Lcom/alibaba/android/dingtalkim/base/fetcher/ConfirmFetcher;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/alibaba/android/dingtalkim/base/fetcher/ConfirmFetcher;->message(Landroid/content/Context;Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 278
    :cond_2
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->w:Lcom/alibaba/android/dingtalkim/base/fetcher/ConfirmFetcher;

    .line 279
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/fetcher/ConfirmFetcher;->positiveButton()I

    move-result v4

    new-instance v5, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$5;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$5;-><init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->w:Lcom/alibaba/android/dingtalkim/base/fetcher/ConfirmFetcher;

    .line 285
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/fetcher/ConfirmFetcher;->negativeButton()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 286
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    const/4 v2, 0x1

    goto :goto_0

    .line 291
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Lcvu;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->y:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 78
    .line 4295
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "choose_enterprise_group_conversation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4296
    const-string/jumbo v1, "conversation"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4297
    const-string/jumbo v1, "activity_identify"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "activity_identify"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4298
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 4299
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 78
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->m:Z

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->n:Z

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->q:J

    return-wide v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->z:Z

    return v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->u:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->l:Z

    return v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->k:Z

    return v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->p:Z

    return v0
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->C:Z

    return v0
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->D:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->r:J

    return-wide v0
.end method

.method static synthetic t(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 78
    iget v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->s:I

    return v0
.end method

.method static synthetic u(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->v:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 561
    .line 2699
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2700
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i:Landroid/view/View;

    new-instance v3, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$2;-><init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2706
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i:Landroid/view/View;

    sget v3, Lctk$f;->progress_bar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2707
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i:Landroid/view/View;

    sget v3, Lctk$f;->tv_empty:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lctk$i;->loading:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 562
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 563
    .local v1, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v2, "group_conversation"

    const-string/jumbo v3, "list_conversations"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;-><init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;Lcom/alibaba/doraemon/statistics/Statistics;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    .line 687
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 565
    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 689
    .local v0, "callback":Lcom/alibaba/wukong/Callback;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->A:J

    invoke-static {v2, v3}, Libb;->a(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 690
    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/ConversationService;

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->A:J

    invoke-interface {v2, v4, v5, v0}, Lcom/alibaba/wukong/im/ConversationService;->listSecondaryConversationsByEntranceId(JLcom/alibaba/wukong/Callback;)V

    .line 696
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->m:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->o:Z

    if-eqz v2, :cond_1

    .line 692
    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v2, v0, v6}, Lcom/alibaba/wukong/im/ConversationService;->listOwnGroup(Lcom/alibaba/wukong/Callback;I)V

    goto :goto_0

    .line 694
    :cond_1
    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/ConversationService;

    const/16 v3, 0x3e8

    invoke-interface {v2, v0, v3}, Lcom/alibaba/wukong/im/ConversationService;->listLocalGroupConversations(Lcom/alibaba/wukong/Callback;I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v12, 0x9

    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 127
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 128
    const-string/jumbo v5, "STATISTICS"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 129
    .local v4, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v5, "group_conversation"

    const-string/jumbo v8, "to_group_fragement"

    invoke-interface {v4, v5, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v5, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$3;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$3;-><init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)V

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->j:Landroid/os/Handler;

    .line 142
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "msg_forward"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->k:Z

    .line 143
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "choose_enterprise_group_conversation"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->m:Z

    .line 144
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "choose_cooperative_group_conversation"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->n:Z

    .line 145
    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->m:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->n:Z

    if-eqz v5, :cond_1

    .line 146
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "org_id"

    invoke-virtual {v5, v8, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->q:J

    .line 147
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "user_id"

    invoke-virtual {v5, v8, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->c:J

    .line 149
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "intent_key_menu_seed"

    invoke-virtual {v5, v8, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->r:J

    .line 150
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "name_card_forward"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->l:Z

    .line 151
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "intent_key_only_show_my_group"

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->o:Z

    .line 152
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "intent_key_group_selection_do_logic"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->p:Z

    .line 154
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "key_direct_open_conversation"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->C:Z

    .line 156
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "choose_mode"

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_4

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->z:Z

    .line 157
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "intent_key_message_multiple_send"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->y:Z

    .line 158
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "conversation"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->x:Ljava/util/ArrayList;

    .line 159
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "intent_key_im_forward_mode"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->s:I

    .line 160
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "entranceCid"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "entranceCid":Ljava/lang/String;
    invoke-static {v1}, Libb;->a(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->A:J

    .line 162
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "count_limit"

    invoke-virtual {v5, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->t:I

    .line 164
    iget v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->t:I

    if-gtz v5, :cond_2

    .line 165
    iput v12, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->t:I

    .line 168
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "conversation_ids"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 169
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "conversation_ids"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "selectCidArray":[Ljava/lang/String;
    if-eqz v2, :cond_5

    array-length v5, v2

    if-lez v5, :cond_5

    .line 171
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->u:Ljava/util/HashSet;

    .line 172
    array-length v8, v2

    move v5, v7

    :goto_1
    if-ge v5, v8, :cond_5

    aget-object v0, v2, v5

    .line 173
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 174
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->u:Ljava/util/HashSet;

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "entranceCid":Ljava/lang/String;
    .end local v2    # "selectCidArray":[Ljava/lang/String;
    :cond_4
    move v5, v7

    .line 156
    goto :goto_0

    .line 178
    .restart local v1    # "entranceCid":Ljava/lang/String;
    .restart local v2    # "selectCidArray":[Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "conversation_ids"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 179
    .local v3, "selectCidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 180
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->u:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 183
    .end local v2    # "selectCidArray":[Ljava/lang/String;
    .end local v3    # "selectCidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "confirm_fetcher"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkim/base/fetcher/ConfirmFetcher;

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->w:Lcom/alibaba/android/dingtalkim/base/fetcher/ConfirmFetcher;

    .line 184
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v8, "conversation_filter"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->v:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    .line 186
    new-instance v5, Lcvu;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v5, v8}, Lcvu;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    .line 187
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->u:Ljava/util/HashSet;

    .line 1055
    iput-object v8, v5, Lcvu;->g:Ljava/util/HashSet;

    .line 188
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->e:Ljava/util/List;

    invoke-virtual {v5, v8}, Lcvu;->b(Ljava/util/List;)V

    .line 189
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v9, "intent_key_choose_control"

    .line 190
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 1064
    iput-object v5, v8, Lcvu;->f:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 1372
    new-instance v5, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;-><init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)V

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->h:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1200
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->I:Landroid/view/View;

    sget v8, Lctk$f;->rl_progress:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i:Landroid/view/View;

    .line 1201
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->I:Landroid/view/View;

    sget v8, Lctk$f;->group_list:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->f:Landroid/widget/ListView;

    .line 1202
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->f:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->h:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1204
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->f:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1206
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->I:Landroid/view/View;

    sget v8, Lctk$f;->list_empty_view:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 1207
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v8, Lctk$e;->icon_no_conversation_list:I

    invoke-virtual {v5, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 1208
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v8, Lctk$i;->no_group_conversation:I

    invoke-virtual {v5, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 1209
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v8, Lctk$f;->btn_empty_action:I

    invoke-virtual {v5, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1211
    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->z:Z

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    instance-of v5, v5, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    if-eqz v5, :cond_9

    .line 1212
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->I:Landroid/view/View;

    sget v8, Lctk$f;->message_recipients_view:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    .line 1213
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    iget v8, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->t:I

    invoke-virtual {v5, v8}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->setRecipientsLimitCount(I)V

    .line 1214
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v5, v7}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->setVisibility(I)V

    .line 1215
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->y:Z

    if-nez v5, :cond_a

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->b(Z)V

    .line 1216
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    new-instance v8, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$4;

    invoke-direct {v8, p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$4;-><init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)V

    invoke-virtual {v5, v8}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->setCallback(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$a;)V

    .line 1248
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->x:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1249
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Ljava/util/List;)Z

    .line 1251
    :cond_7
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    iget-boolean v8, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->y:Z

    if-nez v8, :cond_b

    :goto_3
    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Z)V

    .line 1252
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v6, "count_limit"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_8

    .line 1253
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v7, "count_limit"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->setRecipientsLimitCount(I)V

    .line 1256
    :cond_8
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    sget v6, Lctk$f;->btn_finish_select:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1257
    sget v6, Lctk$i;->sure:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 1259
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    .line 2241
    iput-object v6, v5, Lcvu;->e:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    .line 1260
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    invoke-virtual {v5}, Lcvu;->notifyDataSetChanged()V

    .line 192
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->c()V

    .line 194
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->B:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v8, "action_message_multi_forward_completed"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 196
    return-void

    :cond_a
    move v5, v7

    .line 1215
    goto :goto_2

    :cond_b
    move v6, v7

    .line 1251
    goto :goto_3
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 770
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    .line 3189
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a:Z

    if-eqz v1, :cond_0

    .line 3190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3191
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3193
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "action_message_forward_recipient_updated"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3194
    const-string/jumbo v3, "conversation"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3195
    const-string/jumbo v1, "intent_key_identity"

    iget v3, v0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->b:I

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3196
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 3197
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a:Z

    .line 773
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->B:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 774
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 775
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 779
    sget v0, Lctk$g;->fragment_group_conversation:I

    return v0
.end method
