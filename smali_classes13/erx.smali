.class public final Lerx;
.super Ljava/lang/Object;
.source "TabPresenter.java"

# interfaces
.implements Lerw$a;


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field private c:Lerw$b;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leob;",
            ">;"
        }
    .end annotation
.end field

.field private e:Leob;

.field private f:Lcom/alibaba/android/search/SearchGroupType;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerw$b;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Lerw$b;

    .prologue
    .line 56
    invoke-static {}, Lerx;->d()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lerx;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerw$b;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerw$b;I)V
    .locals 3
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Lerw$b;
    .param p3, "tabShowFlag"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lerx;->d:Ljava/util/List;

    .line 47
    new-instance v0, Leob;

    invoke-direct {v0}, Leob;-><init>()V

    iput-object v0, p0, Lerx;->e:Leob;

    .line 49
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    iput-object v0, p0, Lerx;->f:Lcom/alibaba/android/search/SearchGroupType;

    .line 60
    iput-object p1, p0, Lerx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 61
    iput-object p2, p0, Lerx;->c:Lerw$b;

    .line 62
    iget-object v0, p0, Lerx;->c:Lerw$b;

    invoke-interface {v0, p0}, Lerw$b;->setPresenter(Lcjd;)V

    .line 63
    iput p3, p0, Lerx;->g:I

    .line 1093
    invoke-direct {p0}, Lerx;->e()V

    .line 1094
    iget-object v0, p0, Lerx;->c:Lerw$b;

    iget-object v1, p0, Lerx;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Lerw$b;->a(Ljava/util/List;)V

    .line 1095
    iget-object v0, p0, Lerx;->c:Lerw$b;

    iget-object v1, p0, Lerx;->f:Lcom/alibaba/android/search/SearchGroupType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lerw$b;->a(Lcom/alibaba/android/search/SearchGroupType;Z)V

    .line 66
    return-void
.end method

.method public static d()I
    .locals 4

    .prologue
    .line 69
    const/16 v0, 0x1e1f

    .line 79
    .local v0, "flag":I
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "search_dept_type_enable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const/16 v0, 0x1e5f

    .line 83
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    or-int/lit16 v0, v0, 0x100

    .line 87
    :cond_1
    return v0
.end method

.method private e(Lcom/alibaba/android/search/SearchGroupType;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Lcom/alibaba/android/search/SearchGroupType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    sget-object v1, Lerx$1;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/search/SearchGroupType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 177
    iget-object v1, p0, Lerx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Lemt$g;->dt_search_group_all:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "groupName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 138
    .end local v0    # "groupName":Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Lerx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Lemt$g;->dt_search_group_all:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    .restart local v0    # "groupName":Ljava/lang/String;
    goto :goto_0

    .line 141
    .end local v0    # "groupName":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lerx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Lemt$g;->search_group_contact:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    .restart local v0    # "groupName":Ljava/lang/String;
    goto :goto_0

    .line 144
    .end local v0    # "groupName":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lerx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Lemt$g;->search_group_group:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    .restart local v0    # "groupName":Ljava/lang/String;
    goto :goto_0

    .line 147
    .end local v0    # "groupName":Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lerx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Lemt$g;->search_group_message:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    .restart local v0    # "groupName":Ljava/lang/String;
    goto :goto_0

    .line 150
    .end local v0    # "groupName":Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Lerx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Lemt$g;->search_function:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    .restart local v0    # "groupName":Ljava/lang/String;
    goto :goto_0

    .line 153
    .end local v0    # "groupName":Ljava/lang/String;
    :pswitch_5
    iget-object v1, p0, Lerx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Lemt$g;->dt_search_dept_title:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .restart local v0    # "groupName":Ljava/lang/String;
    goto :goto_0

    .line 156
    .end local v0    # "groupName":Ljava/lang/String;
    :pswitch_6
    iget-object v1, p0, Lerx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Lemt$g;->search_ding:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    .restart local v0    # "groupName":Ljava/lang/String;
    goto :goto_0

    .line 159
    .end local v0    # "groupName":Ljava/lang/String;
    :pswitch_7
    iget-object v1, p0, Lerx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Lemt$g;->dt_search_external_contact:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    .restart local v0    # "groupName":Ljava/lang/String;
    goto :goto_0

    .line 162
    .end local v0    # "groupName":Ljava/lang/String;
    :pswitch_8
    iget-object v1, p0, Lerx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Lemt$g;->dt_public_group_conversation:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    .restart local v0    # "groupName":Ljava/lang/String;
    goto :goto_0

    .line 165
    .end local v0    # "groupName":Ljava/lang/String;
    :pswitch_9
    iget-object v1, p0, Lerx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Lemt$g;->search_mail:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    .restart local v0    # "groupName":Ljava/lang/String;
    goto :goto_0

    .line 168
    .end local v0    # "groupName":Ljava/lang/String;
    :pswitch_a
    iget-object v1, p0, Lerx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Lemt$g;->space_name:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    .restart local v0    # "groupName":Ljava/lang/String;
    goto :goto_0

    .line 171
    .end local v0    # "groupName":Ljava/lang/String;
    :pswitch_b
    iget-object v1, p0, Lerx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Lemt$g;->search_light_app:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    .restart local v0    # "groupName":Ljava/lang/String;
    goto/16 :goto_0

    .line 174
    .end local v0    # "groupName":Ljava/lang/String;
    :pswitch_c
    iget-object v1, p0, Lerx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Lemt$g;->dt_org_homepage_title:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    .restart local v0    # "groupName":Ljava/lang/String;
    goto/16 :goto_0

    .line 136
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
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private e()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v2, "tabTypes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/SearchGroupType;>;"
    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget v3, p0, Lerx;->g:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 102
    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    iget v3, p0, Lerx;->g:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 105
    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->MY_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_1
    iget v3, p0, Lerx;->g:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_2

    .line 108
    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->DEPT:Lcom/alibaba/android/search/SearchGroupType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_2
    iget v3, p0, Lerx;->g:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_3

    .line 111
    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->FUNCTION:Lcom/alibaba/android/search/SearchGroupType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_3
    iget v3, p0, Lerx;->g:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4

    .line 114
    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_4
    iget v3, p0, Lerx;->g:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    .line 117
    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/SearchGroupType;

    .line 121
    .local v0, "groupType":Lcom/alibaba/android/search/SearchGroupType;
    new-instance v1, Leob;

    invoke-direct {v1}, Leob;-><init>()V

    .line 122
    .local v1, "tabModel":Leob;
    invoke-direct {p0, v0}, Lerx;->e(Lcom/alibaba/android/search/SearchGroupType;)Ljava/lang/String;

    move-result-object v4

    .line 2041
    iput-object v4, v1, Leob;->b:Ljava/lang/String;

    .line 2049
    iput v5, v1, Leob;->c:I

    .line 124
    invoke-virtual {v0}, Lcom/alibaba/android/search/SearchGroupType;->getValue()I

    move-result v4

    .line 3033
    iput v4, v1, Leob;->a:I

    .line 125
    iget-object v4, p0, Lerx;->d:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    .end local v0    # "groupType":Lcom/alibaba/android/search/SearchGroupType;
    .end local v1    # "tabModel":Leob;
    :cond_6
    iget-object v3, p0, Lerx;->e:Leob;

    sget-object v4, Lcom/alibaba/android/search/SearchGroupType;->RECOMMEND:Lcom/alibaba/android/search/SearchGroupType;

    invoke-direct {p0, v4}, Lerx;->e(Lcom/alibaba/android/search/SearchGroupType;)Ljava/lang/String;

    move-result-object v4

    .line 3041
    iput-object v4, v3, Leob;->b:Ljava/lang/String;

    .line 129
    iget-object v3, p0, Lerx;->e:Leob;

    .line 3049
    iput v5, v3, Leob;->c:I

    .line 130
    iget-object v3, p0, Lerx;->e:Leob;

    sget-object v4, Lcom/alibaba/android/search/SearchGroupType;->RECOMMEND:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {v4}, Lcom/alibaba/android/search/SearchGroupType;->getValue()I

    move-result v4

    .line 4033
    iput v4, v3, Leob;->a:I

    .line 131
    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/search/SearchGroupType;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lerx;->f:Lcom/alibaba/android/search/SearchGroupType;

    return-object v0
.end method

.method public final a(Lcom/alibaba/android/search/SearchGroupType;)V
    .locals 4
    .param p1, "currentSelectedTab"    # Lcom/alibaba/android/search/SearchGroupType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 291
    iput-object p1, p0, Lerx;->f:Lcom/alibaba/android/search/SearchGroupType;

    .line 8335
    iget-object v1, p0, Lerx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-nez v1, :cond_1

    .line 8336
    const/4 v0, 0x0

    .line 293
    .local v0, "hint":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lerx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    instance-of v1, v1, Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lerx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    check-cast v1, Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    if-ne p1, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lerx;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    return-void

    .line 8340
    .end local v0    # "hint":Ljava/lang/String;
    :cond_1
    sget-object v1, Lerx$1;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/search/SearchGroupType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 8374
    sget v1, Lemt$g;->global_search:I

    .line 8378
    :goto_2
    iget-object v2, p0, Lerx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8342
    :pswitch_0
    invoke-static {}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a()Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8344
    :pswitch_1
    sget v1, Lemt$g;->dt_seach_hint_global_contact:I

    goto :goto_2

    .line 8347
    :pswitch_2
    sget v1, Lemt$g;->dt_seach_hint_global_my_group:I

    goto :goto_2

    .line 8350
    :pswitch_3
    sget v1, Lemt$g;->dt_seach_hint_global_msg:I

    goto :goto_2

    .line 8353
    :pswitch_4
    sget v1, Lemt$g;->dt_seach_hint_global_function:I

    goto :goto_2

    .line 8356
    :pswitch_5
    sget v1, Lemt$g;->dt_search_hint_global_dept:I

    goto :goto_2

    .line 8359
    :pswitch_6
    sget v1, Lemt$g;->dt_seach_hint_global_ding:I

    goto :goto_2

    .line 8362
    :pswitch_7
    sget v1, Lemt$g;->dt_seach_hint_global_external_contact:I

    goto :goto_2

    .line 8365
    :pswitch_8
    sget v1, Lemt$g;->dt_seach_hint_global_public_group:I

    goto :goto_2

    .line 8368
    :pswitch_9
    sget v1, Lemt$g;->dt_seach_hint_global_mail:I

    goto :goto_2

    .line 8371
    :pswitch_a
    sget v1, Lemt$g;->dt_seach_hint_global_space:I

    goto :goto_2

    .line 294
    .restart local v0    # "hint":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 8340
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
        :pswitch_a
    .end packed-switch
.end method

.method public final declared-synchronized a(Lcom/alibaba/android/search/SearchGroupType;I)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/android/search/SearchGroupType;
    .param p2, "count"    # I

    .prologue
    .line 188
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lerx;->a:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public final b(Lcom/alibaba/android/search/SearchGroupType;)I
    .locals 5
    .param p1, "type"    # Lcom/alibaba/android/search/SearchGroupType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 227
    if-nez p1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v1

    .line 231
    :cond_1
    iget-object v2, p0, Lerx;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leob;

    .line 232
    .local v0, "tabModel":Leob;
    if-eqz v0, :cond_2

    .line 5029
    iget v3, v0, Leob;->a:I

    .line 236
    invoke-virtual {p1}, Lcom/alibaba/android/search/SearchGroupType;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 5045
    iget v1, v0, Leob;->c:I

    goto :goto_0

    .line 241
    .end local v0    # "tabModel":Leob;
    :cond_3
    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->RECOMMEND:Lcom/alibaba/android/search/SearchGroupType;

    if-ne p1, v2, :cond_0

    .line 242
    iget-object v1, p0, Lerx;->e:Leob;

    .line 6045
    iget v1, v1, Leob;->c:I

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 251
    iget-object v0, p0, Lerx;->c:Lerw$b;

    invoke-interface {v0}, Lerw$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lerx;->c:Lerw$b;

    iget-object v1, p0, Lerx;->f:Lcom/alibaba/android/search/SearchGroupType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lerw$b;->a(Lcom/alibaba/android/search/SearchGroupType;Z)V

    .line 256
    iget-object v0, p0, Lerx;->c:Lerw$b;

    invoke-interface {v0}, Lerw$b;->a()V

    goto :goto_0
.end method

.method public final c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 272
    iget-object v1, p0, Lerx;->e:Leob;

    .line 6049
    iput v4, v1, Leob;->c:I

    .line 274
    iget-object v1, p0, Lerx;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leob;

    .line 275
    .local v0, "tabModel":Leob;
    if-eqz v0, :cond_0

    .line 7049
    iput v4, v0, Leob;->c:I

    .line 280
    iget-object v2, p0, Lerx;->c:Lerw$b;

    .line 8029
    iget v3, v0, Leob;->a:I

    .line 280
    invoke-static {v3}, Lcom/alibaba/android/search/SearchGroupType;->valueOf(I)Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Lerw$b;->a(Lcom/alibaba/android/search/SearchGroupType;I)V

    goto :goto_0

    .line 282
    .end local v0    # "tabModel":Leob;
    :cond_1
    return-void
.end method

.method public final c(Lcom/alibaba/android/search/SearchGroupType;)V
    .locals 1
    .param p1, "type"    # Lcom/alibaba/android/search/SearchGroupType;

    .prologue
    .line 262
    iget-object v0, p0, Lerx;->c:Lerw$b;

    invoke-interface {v0}, Lerw$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lerx;->c:Lerw$b;

    invoke-interface {v0, p1}, Lerw$b;->a(Lcom/alibaba/android/search/SearchGroupType;)V

    goto :goto_0
.end method

.method public final d(Lcom/alibaba/android/search/SearchGroupType;)I
    .locals 6
    .param p1, "type"    # Lcom/alibaba/android/search/SearchGroupType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 301
    if-nez p1, :cond_1

    move v0, v3

    .line 315
    :cond_0
    :goto_0
    return v0

    .line 305
    :cond_1
    iget-object v4, p0, Lerx;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 306
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 307
    iget-object v4, p0, Lerx;->d:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leob;

    .line 308
    .local v2, "tabModel":Leob;
    if-eqz v2, :cond_2

    .line 9029
    iget v4, v2, Leob;->a:I

    .line 308
    invoke-virtual {p1}, Lcom/alibaba/android/search/SearchGroupType;->getValue()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 306
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "tabModel":Leob;
    :cond_3
    move v0, v3

    .line 315
    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method
