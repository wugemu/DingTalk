.class public Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;
.super Lcom/alibaba/android/rimet/BaseActivity;
.source "FileDownloadActivity.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:J

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/rimet/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 62
    .local v0, "config":Landroid/view/ViewConfiguration;
    const-class v5, Landroid/view/ViewConfiguration;

    const-string/jumbo v6, "sHasPermanentMenuKey"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 63
    .local v3, "menuKeyField":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_0

    .line 64
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 65
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    .end local v3    # "menuKeyField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    const v5, 0x7f040031

    invoke-virtual {p0, v5}, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->setContentView(I)V

    .line 72
    const v5, 0x7f110038

    invoke-virtual {p0, v5}, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->a:Landroid/widget/ImageView;

    .line 73
    const v5, 0x7f110039

    invoke-virtual {p0, v5}, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->b:Landroid/widget/TextView;

    .line 74
    const v5, 0x7f11000e

    invoke-virtual {p0, v5}, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->c:Landroid/widget/Button;

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 77
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "message_id"

    invoke-virtual {v2, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->d:J

    .line 78
    const-string/jumbo v5, "file_icon"

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->e:I

    .line 79
    const-string/jumbo v5, "file_size"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->f:Ljava/lang/String;

    .line 80
    const-string/jumbo v5, "file_name"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->g:Ljava/lang/String;

    .line 81
    const-string/jumbo v5, "file_url"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->h:Ljava/lang/String;

    .line 82
    const-string/jumbo v5, "file_type"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->i:Ljava/lang/String;

    .line 83
    const-string/jumbo v5, "org_id"

    invoke-virtual {v2, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->j:J

    .line 85
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->a:Landroid/widget/ImageView;

    iget v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->e:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->g:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->g:Ljava/lang/String;

    .line 89
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->f:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 90
    new-instance v4, Landroid/text/SpannableString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (%s)"

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->f:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 91
    .local v4, "text":Landroid/text/SpannableString;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10040f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->g:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x11

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 92
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .end local v4    # "text":Landroid/text/SpannableString;
    :goto_1
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->c:Landroid/widget/Button;

    new-instance v6, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity$1;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    return-void

    .line 67
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 94
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->b:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 138
    iget-wide v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->d:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 139
    const/4 v3, 0x3

    const v4, 0x7f09212c

    invoke-interface {p1, v8, v3, v8, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 140
    .local v1, "menuItemSend":Landroid/view/MenuItem;
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 142
    .end local v1    # "menuItemSend":Landroid/view/MenuItem;
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    .line 143
    .local v2, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    const/4 v3, 0x2

    const/4 v4, 0x1

    const v5, 0x7f09214d

    invoke-interface {p1, v8, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 145
    .local v0, "menuItemSave":Landroid/view/MenuItem;
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 147
    .end local v0    # "menuItemSave":Landroid/view/MenuItem;
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Lcom/alibaba/android/rimet/BaseActivity;->onDestroy()V

    .line 170
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 164
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 154
    :pswitch_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v7, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "choose_mode"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v7}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1175
    .end local v7    # "bundle":Landroid/os/Bundle;
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 1179
    :goto_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    .line 1180
    if-eqz v1, :cond_1

    .line 1181
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->g:Ljava/lang/String;

    const-string/jumbo v3, "&from=tfs"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1183
    :goto_2
    iget-wide v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->j:J

    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    .line 1184
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v4, v5}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 1176
    :catch_0
    move-exception v0

    .line 1177
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    move-object v1, v4

    goto :goto_1

    .line 1186
    :cond_0
    iget-wide v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->j:J

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->e()Lcma;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;JLandroid/os/Bundle;Ljava/lang/String;Lcma;)V

    goto :goto_0

    :cond_1
    move-object v5, v1

    goto :goto_2

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
