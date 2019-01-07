.class public Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "MessageRecipientsSelectResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;,
        Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private d:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->a:I

    .line 258
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v0, Lctk$g;->activity_message_recipients_select:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->setContentView(I)V

    .line 1097
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "intent_key_message_recipients"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1099
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->b:Ljava/util/List;

    .line 1101
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 1104
    if-eqz v0, :cond_0

    .line 1107
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->GROUP_CONVERSATION:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v6, v7, :cond_1

    .line 1108
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1110
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1113
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1114
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v0, v1

    .line 65
    :goto_1
    if-eqz v0, :cond_4

    .line 1121
    sget v0, Lctk$f;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 1122
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setDividerHeight(I)V

    .line 1123
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;-><init>(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->d:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;

    .line 1124
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->d:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1126
    sget v0, Lctk$i;->dt_im_trans_to_multiple_select_result_title:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    :goto_2
    return-void

    :cond_3
    move v0, v2

    .line 1117
    goto :goto_1

    .line 68
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->finish()V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 81
    const/4 v1, 0x1

    sget v2, Lctk$i;->sure:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 82
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 83
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 2073
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_message_forward_recipient_updated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2074
    const-string/jumbo v1, "conversation"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->b:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2075
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2076
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->finish()V

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
