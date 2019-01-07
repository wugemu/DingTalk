.class public Lcom/alibaba/android/search/activity/CategorySearchActivity;
.super Lcom/alibaba/android/search/activity/BaseSearchActivity;
.source "CategorySearchActivity.java"


# instance fields
.field private f:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

.field private g:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity;-><init>()V

    .line 103
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lemt$f;->activity_category_search:I

    return v0
.end method

.method protected final b()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 70
    sget-object v1, Lcom/alibaba/android/search/activity/CategorySearchActivity$1;->a:[I

    iget-object v2, p0, Lcom/alibaba/android/search/activity/CategorySearchActivity;->f:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 102
    sget v0, Lemt$g;->global_search:I

    .line 106
    .local v0, "hint":I
    :goto_0
    return v0

    .line 72
    .end local v0    # "hint":I
    :pswitch_0
    sget v0, Lemt$g;->global_search:I

    .line 73
    .restart local v0    # "hint":I
    goto :goto_0

    .line 75
    .end local v0    # "hint":I
    :pswitch_1
    sget v0, Lemt$g;->global_search:I

    .line 76
    .restart local v0    # "hint":I
    goto :goto_0

    .line 78
    .end local v0    # "hint":I
    :pswitch_2
    sget v0, Lemt$g;->global_search:I

    .line 79
    .restart local v0    # "hint":I
    goto :goto_0

    .line 81
    .end local v0    # "hint":I
    :pswitch_3
    sget v0, Lemt$g;->global_search:I

    .line 82
    .restart local v0    # "hint":I
    goto :goto_0

    .line 84
    .end local v0    # "hint":I
    :pswitch_4
    sget v0, Lemt$g;->search_group:I

    .line 85
    .restart local v0    # "hint":I
    goto :goto_0

    .line 87
    .end local v0    # "hint":I
    :pswitch_5
    sget v0, Lemt$g;->global_search:I

    .line 88
    .restart local v0    # "hint":I
    goto :goto_0

    .line 90
    .end local v0    # "hint":I
    :pswitch_6
    sget v0, Lemt$g;->search_box_hint_mail:I

    .line 91
    .restart local v0    # "hint":I
    goto :goto_0

    .line 93
    .end local v0    # "hint":I
    :pswitch_7
    sget v0, Lemt$g;->search_box_hint_cloud:I

    .line 94
    .restart local v0    # "hint":I
    goto :goto_0

    .line 96
    .end local v0    # "hint":I
    :pswitch_8
    sget v0, Lemt$g;->search_box_hint_lightapp:I

    .line 97
    .restart local v0    # "hint":I
    goto :goto_0

    .line 99
    .end local v0    # "hint":I
    :pswitch_9
    sget v0, Lemt$g;->global_search:I

    .line 100
    .restart local v0    # "hint":I
    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->b(Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/alibaba/android/search/activity/CategorySearchActivity;->a:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/search/activity/CategorySearchActivity;->g:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->a(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1053
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/CategorySearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/activity/CategorySearchActivity;->c:I

    .line 1054
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/CategorySearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "choose_people_from_contact_logic"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/CategorySearchActivity;->d:Ljava/io/Serializable;

    .line 1055
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/CategorySearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_search_category_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->valueOf(I)Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/CategorySearchActivity;->f:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 1056
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/CategorySearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/CategorySearchActivity;->a:Ljava/lang/String;

    .line 1111
    sget-object v0, Lcom/alibaba/android/search/activity/CategorySearchActivity$1;->a:[I

    iget-object v1, p0, Lcom/alibaba/android/search/activity/CategorySearchActivity;->f:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1120
    :goto_0
    :pswitch_0
    return-void

    .line 1141
    :pswitch_1
    new-instance v0, Lcoi;

    sget v1, Lemt$e;->ll_fragment_container:I

    invoke-direct {v0, p0, v1}, Lcoi;-><init>(Landroid/support/v4/app/FragmentActivity;I)V

    .line 1142
    new-instance v1, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    invoke-direct {v1}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/search/activity/CategorySearchActivity;->g:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 1143
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1144
    const-string/jumbo v2, "choose_mode"

    iget v3, p0, Lcom/alibaba/android/search/activity/CategorySearchActivity;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1145
    const-string/jumbo v2, "keyword"

    iget-object v3, p0, Lcom/alibaba/android/search/activity/CategorySearchActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    iget-object v2, p0, Lcom/alibaba/android/search/activity/CategorySearchActivity;->g:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1147
    const-class v1, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/activity/CategorySearchActivity;->g:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 2082
    invoke-virtual {v0, v1, v2, v4}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    goto :goto_0

    .line 2152
    :pswitch_2
    new-instance v0, Lcoi;

    sget v1, Lemt$e;->ll_fragment_container:I

    invoke-direct {v0, p0, v1}, Lcoi;-><init>(Landroid/support/v4/app/FragmentActivity;I)V

    .line 2153
    new-instance v1, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    invoke-direct {v1}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/search/activity/CategorySearchActivity;->g:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 2154
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2155
    const-string/jumbo v2, "choose_mode"

    iget v3, p0, Lcom/alibaba/android/search/activity/CategorySearchActivity;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2156
    const-string/jumbo v2, "keyword"

    iget-object v3, p0, Lcom/alibaba/android/search/activity/CategorySearchActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    iget-object v2, p0, Lcom/alibaba/android/search/activity/CategorySearchActivity;->g:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2158
    const-class v1, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/activity/CategorySearchActivity;->g:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 3082
    invoke-virtual {v0, v1, v2, v4}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    goto :goto_0

    .line 1111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
