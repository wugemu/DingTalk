.class public Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "JoinTeamActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 76
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->n:Ljava/lang/String;

    .line 302
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 165
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->g:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 166
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->i:Landroid/view/View;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->a:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 168
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->b:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 169
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->c:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->b:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 172
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->f:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 173
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->e:Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 174
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->d:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 175
    return-void
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 179
    invoke-static {v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->a:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->g:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->i:Landroid/view/View;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 187
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->b:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->c:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 189
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->b:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->f:Landroid/widget/RelativeLayout;

    invoke-static {v0, v3}, Lfxp;->a(Landroid/view/View;I)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->e:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lfxp;->a(Landroid/view/View;I)V

    .line 193
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->l:Z

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->d:Landroid/widget/RelativeLayout;

    invoke-static {v0, v3}, Lfxp;->a(Landroid/view/View;I)V

    .line 201
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->h:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_register_find_your_team_by_name:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 203
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :cond_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->a:Landroid/widget/RelativeLayout;

    invoke-static {v0, v3}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->m:Ljava/lang/String;

    const-string/jumbo v1, "from_jsapi"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->m:Ljava/lang/String;

    const-string/jumbo v1, "intent_value_from_contact"

    .line 196
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->d:Landroid/widget/RelativeLayout;

    invoke-static {v0, v3}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 199
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->d:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->l:Z

    if-eqz v0, :cond_0

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->l:Z

    .line 293
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->c()V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 210
    .local v3, "id":I
    sget v6, Lezg$h;->rl_search:I

    if-ne v3, v6, :cond_2

    .line 212
    const-string/jumbo v6, "find_more_team_search_name"

    invoke-static {v6}, Lfxo;->a(Ljava/lang/String;)V

    .line 213
    const-string/jumbo v1, ""

    .line 215
    .local v1, "encodedOrgName":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->j:Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->b()Z

    move-result v6

    if-nez v6, :cond_0

    .line 216
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->j:Ljava/lang/String;

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 221
    :cond_0
    :goto_0
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "https://h5.dingtalk.com/h5-join-team/nameSearchJoin.html?referer=%s&source=%d&companyName=%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->n:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->o:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v1, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, p0, v7, v8}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .end local v1    # "encodedOrgName":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 218
    .restart local v1    # "encodedOrgName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 222
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "encodedOrgName":Ljava/lang/String;
    :cond_2
    sget v6, Lezg$h;->rl_id:I

    if-ne v3, v6, :cond_3

    .line 224
    const-string/jumbo v6, "find_more_team_org_code"

    invoke-static {v6}, Lfxo;->a(Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "https://h5.dingtalk.com/h5-join-team/idSearchJoin.html?referer=%s&source=%d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->n:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->o:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, p0, v7, v8}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 226
    :cond_3
    sget v6, Lezg$h;->rl_qrcode:I

    if-ne v3, v6, :cond_6

    .line 228
    const-string/jumbo v6, "find_more_team_qr"

    invoke-static {v6}, Lfxo;->a(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    .line 231
    .local v5, "userEngine":Lccr;
    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Lccr;->g(J)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "encodedUid":Ljava/lang/String;
    const-string/jumbo v4, "https://h5.dingtalk.com/scan-join/index.html"

    .line 233
    .local v4, "url":Ljava/lang/String;
    const-string/jumbo v6, "targetUid"

    invoke-static {v4, v6, v2}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 234
    const-string/jumbo v6, "targetUname"

    invoke-virtual {v5}, Lccr;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 235
    const-string/jumbo v6, "https://h5.dingtalk.com/scan-join/index.html"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    if-nez v4, :cond_5

    .line 236
    :cond_4
    const-string/jumbo v6, "JoinTeamActivity"

    const-string/jumbo v7, "Url cannot be used!"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 239
    :cond_5
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p0, v4, v7}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 240
    .end local v2    # "encodedUid":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "userEngine":Lccr;
    :cond_6
    sget v6, Lezg$h;->rl_create:I

    if-ne v3, v6, :cond_8

    .line 242
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->b()Z

    move-result v6

    if-nez v6, :cond_7

    .line 243
    const-string/jumbo v6, "find_more_team_create_team"

    invoke-static {v6}, Lfxo;->a(Ljava/lang/String;)V

    .line 247
    :goto_2
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    invoke-static {p0, v6}, Lfls;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    goto/16 :goto_1

    .line 245
    :cond_7
    const-string/jumbo v6, "join_matched_team_create_team"

    invoke-static {v6}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 248
    :cond_8
    sget v6, Lezg$h;->rl_join_other:I

    if-ne v3, v6, :cond_9

    .line 249
    const-string/jumbo v6, "join_matched_team_join_others"

    invoke-static {v6}, Lfxo;->a(Ljava/lang/String;)V

    .line 251
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->l:Z

    .line 252
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->d()V

    goto/16 :goto_1

    .line 253
    :cond_9
    sget v6, Lezg$h;->btn_next:I

    if-ne v3, v6, :cond_1

    .line 254
    const-string/jumbo v6, "join_matched_team_join"

    invoke-static {v6}, Lfxo;->a(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "https://h5.dingtalk.com/invite-page/index.html?corpId=%s&referer=%s&source=%d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->k:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "nativeRegister"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget v11, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->o:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, p0, v7, v8}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    sget v1, Lezg$j;->activity_join_team:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->setContentView(I)V

    .line 1104
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1105
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1106
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1107
    const-string/jumbo v2, "org_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->j:Ljava/lang/String;

    .line 1108
    const-string/jumbo v2, "corp_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->k:Ljava/lang/String;

    .line 1109
    const-string/jumbo v2, "from"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->m:Ljava/lang/String;

    .line 1110
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->m:Ljava/lang/String;

    const-string/jumbo v2, "intent_value_from_register"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1111
    const-string/jumbo v1, "nativeRegister"

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->n:Ljava/lang/String;

    .line 1112
    sget-object v1, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;->FROM_REGISTER:Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->o:I

    .line 1122
    :cond_0
    :goto_0
    sget v1, Lezg$h;->rl_search:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->a:Landroid/widget/RelativeLayout;

    .line 1123
    sget v1, Lezg$h;->rl_id:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->b:Landroid/widget/RelativeLayout;

    .line 1124
    sget v1, Lezg$h;->rl_qrcode:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->c:Landroid/widget/RelativeLayout;

    .line 1125
    sget v1, Lezg$h;->rl_create:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->d:Landroid/widget/RelativeLayout;

    .line 1126
    sget v1, Lezg$h;->ll_join_team:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->e:Landroid/widget/LinearLayout;

    .line 1127
    sget v1, Lezg$h;->rl_join_other:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->f:Landroid/widget/RelativeLayout;

    .line 1129
    sget v1, Lezg$h;->tv_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->g:Landroid/widget/TextView;

    .line 1130
    sget v1, Lezg$h;->tv_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->i:Landroid/view/View;

    .line 1131
    sget v1, Lezg$h;->tv_find_team_hint:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->h:Landroid/widget/TextView;

    .line 1133
    sget v1, Lezg$h;->tv_org_name:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->p:Landroid/widget/TextView;

    .line 1136
    sget v1, Lezg$h;->tv_team_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;

    .line 1137
    sget v2, Lezg$h;->btn_next:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1139
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1140
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1141
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1142
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1143
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1144
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1145
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->m:Ljava/lang/String;

    const-string/jumbo v3, "from_jsapi"

    .line 1146
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1147
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->d()V

    .line 92
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 93
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "join_matched_team_view_show"

    .line 94
    invoke-interface {v1, p0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->enterPage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    :goto_2
    return-void

    .line 1113
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->m:Ljava/lang/String;

    const-string/jumbo v2, "intent_value_from_contact"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1114
    sget-object v1, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;->FROM_CONTACT:Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->o:I

    goto/16 :goto_0

    .line 1115
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->m:Ljava/lang/String;

    const-string/jumbo v2, "from_jsapi"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1116
    sget-object v1, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;->FROM_URL:Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->o:I

    goto/16 :goto_0

    .line 1149
    :cond_4
    sget v2, Lezg$f;->dp24:I

    invoke-static {v2}, Leda;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->setNormalTextSize(I)V

    .line 1150
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->c()V

    goto :goto_1

    .line 96
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "source"

    iget v2, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->o:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "find_more_team_view_show"

    .line 99
    invoke-interface {v1, p0, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->enterPage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 264
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->m:Ljava/lang/String;

    const-string/jumbo v2, "from_jsapi"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->m:Ljava/lang/String;

    const-string/jumbo v2, "intent_value_from_contact"

    .line 265
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    const/4 v1, 0x1

    sget v2, Lezg$l;->jump:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 267
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 269
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 274
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->l:Z

    if-eqz v1, :cond_0

    .line 275
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->l:Z

    .line 276
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->c()V

    .line 286
    :goto_0
    return v0

    .line 278
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 280
    const-string/jumbo v0, "find_more_team_skip"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 284
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->j(Landroid/app/Activity;)V

    .line 286
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 282
    :cond_2
    const-string/jumbo v0, "join_matched_team_skip"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
