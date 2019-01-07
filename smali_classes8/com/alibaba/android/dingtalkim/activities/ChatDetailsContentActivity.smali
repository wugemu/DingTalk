.class public Lcom/alibaba/android/dingtalkim/activities/ChatDetailsContentActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "ChatDetailsContentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 26
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatDetailsContentActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 29
    sget v9, Lctk$g;->activity_chat_details:I

    invoke-virtual {p0, v9}, Lcom/alibaba/android/dingtalkim/activities/ChatDetailsContentActivity;->setContentView(I)V

    .line 31
    sget v9, Lctk$f;->chatting_content_tv:I

    invoke-virtual {p0, v9}, Lcom/alibaba/android/dingtalkim/activities/ChatDetailsContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 32
    .local v0, "chatTextView":Landroid/widget/TextView;
    sget v9, Lctk$f;->chatting_content_translate_tv:I

    invoke-virtual {p0, v9}, Lcom/alibaba/android/dingtalkim/activities/ChatDetailsContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 33
    .local v8, "translateTv":Landroid/widget/TextView;
    sget v9, Lctk$f;->chatting_divide_line_v:I

    invoke-virtual {p0, v9}, Lcom/alibaba/android/dingtalkim/activities/ChatDetailsContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 37
    .local v2, "dividerView":Landroid/view/View;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-le v9, v10, :cond_0

    .line 43
    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 44
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextIsSelectable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatDetailsContentActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v10, Lctk$i;->chat_details_content_title:I

    invoke-virtual {v9, v10}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 52
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v4

    .line 53
    .local v4, "emotionUtil":Lcok;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatDetailsContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v10, "chat_details"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "contentString":Ljava/lang/String;
    invoke-virtual {v4, p0, v1}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v5

    .line 55
    .local v5, "spannableString":Landroid/text/SpannableString;
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    invoke-static {v0, v12, v11}, Lcql;->a(Landroid/widget/TextView;IZ)V

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatDetailsContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v10, "chat_details_translate"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "translateString":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 60
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 63
    invoke-virtual {v4, p0, v7}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v6

    .line 64
    .local v6, "translateSpanStr":Landroid/text/SpannableString;
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2071
    invoke-static {v8, v12, v11}, Lcql;->a(Landroid/widget/TextView;IZ)V

    .line 70
    .end local v6    # "translateSpanStr":Landroid/text/SpannableString;
    :goto_1
    return-void

    .line 45
    .end local v1    # "contentString":Ljava/lang/String;
    .end local v4    # "emotionUtil":Lcok;
    .end local v5    # "spannableString":Landroid/text/SpannableString;
    .end local v7    # "translateString":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 46
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "contentString":Ljava/lang/String;
    .restart local v4    # "emotionUtil":Lcok;
    .restart local v5    # "spannableString":Landroid/text/SpannableString;
    .restart local v7    # "translateString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
