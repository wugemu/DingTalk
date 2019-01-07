.class public Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "GroupDescEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$GroupDescEditActionCallback;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$GroupDescEditActionCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;)Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$GroupDescEditActionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;->b:Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$GroupDescEditActionCallback;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;->b:Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$GroupDescEditActionCallback;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;->b:Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$GroupDescEditActionCallback;

    invoke-interface {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$GroupDescEditActionCallback;->onCancel(Landroid/app/Activity;)V

    .line 54
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onBackPressed()V

    .line 55
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget v2, Lctk$g;->group_desc_edit:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "intent_key_group_desc"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;->a:Ljava/lang/String;

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "intent_key_group_desc_edit_action"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 27
    .local v1, "serializable":Ljava/io/Serializable;
    instance-of v2, v1, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$GroupDescEditActionCallback;

    if-eqz v2, :cond_0

    .line 28
    check-cast v1, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$GroupDescEditActionCallback;

    .end local v1    # "serializable":Ljava/io/Serializable;
    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;->b:Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$GroupDescEditActionCallback;

    .line 30
    :cond_0
    sget v2, Lctk$f;->group_desc_edit_text:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 31
    .local v0, "editText":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 32
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 35
    :cond_1
    sget v2, Lctk$f;->save_and_complete:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 66
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;->b:Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$GroupDescEditActionCallback;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;->b:Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$GroupDescEditActionCallback;

    invoke-interface {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$GroupDescEditActionCallback;->onCancel(Landroid/app/Activity;)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
