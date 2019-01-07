.class public Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;
.super Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;
.source "MailLoginH5Fragment.java"


# instance fields
.field private r:Landroid/webkit/WebView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View$OnClickListener;

.field private w:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

.field private x:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

.field private y:Lafq;

.field private z:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->r:Landroid/webkit/WebView;

    .line 58
    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->s:Landroid/widget/ImageView;

    .line 59
    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->t:Landroid/widget/TextView;

    .line 60
    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->u:Landroid/view/View;

    .line 61
    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->v:Landroid/view/View$OnClickListener;

    .line 65
    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->z:Ljava/lang/Boolean;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->z:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->g()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    .line 51
    .line 2321
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 2322
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 2324
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$4;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$4;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;)V

    const-class v4, Lcma;

    .line 2351
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 2324
    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-static {v1, p1, v2, v0}, Lacg;->a(Landroid/app/Activity;Lcom/alibaba/alimei/framework/model/UserAccountModel;ZLcma;)V

    .line 51
    return-void
.end method

.method private b(I)V
    .locals 5
    .param p1, "page"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 225
    packed-switch p1, :pswitch_data_0

    .line 247
    const/16 v0, 0x8

    .line 248
    .local v0, "authWebViewVisibility":I
    const/4 v1, 0x0

    .line 249
    .local v1, "loadingVisibility":I
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->t:Landroid/widget/TextView;

    sget v3, Laxo$i;->alm_cmail_auth_loading:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 250
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->s:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->u:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->r:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 256
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->r:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->u:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 259
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->u:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :cond_1
    return-void

    .line 227
    .end local v0    # "authWebViewVisibility":I
    .end local v1    # "loadingVisibility":I
    :pswitch_0
    const/4 v0, 0x0

    .line 228
    .restart local v0    # "authWebViewVisibility":I
    const/16 v1, 0x8

    .line 229
    .restart local v1    # "loadingVisibility":I
    goto :goto_0

    .line 231
    .end local v0    # "authWebViewVisibility":I
    .end local v1    # "loadingVisibility":I
    :pswitch_1
    const/16 v0, 0x8

    .line 232
    .restart local v0    # "authWebViewVisibility":I
    const/4 v1, 0x0

    .line 233
    .restart local v1    # "loadingVisibility":I
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->v:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_2

    .line 234
    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$2;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$2;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;)V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->v:Landroid/view/View$OnClickListener;

    .line 241
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->t:Landroid/widget/TextView;

    sget v3, Laxo$i;->alm_cmail_auth_loaderror:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 242
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->t:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->s:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->u:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private g()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 302
    const/4 v0, 0x1

    .line 303
    .local v0, "canModifyEmailAccount":Z
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->w:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    iget-object v4, v4, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->loginAccountRange:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->w:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    iget-object v4, v4, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->loginAccountRange:Ljava/util/List;

    .line 304
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v2, v1

    .line 307
    .local v2, "hasOrigEmails":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 308
    const/4 v0, 0x0

    .line 316
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->w:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    iput-boolean v0, v3, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->modifyAccount:Z

    .line 317
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->y:Lafq;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->w:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->x:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

    invoke-virtual {v3, v4, v5}, Lafq;->a(Lcom/alibaba/alimei/oauth/OAuthRequestClient;Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;)V

    .line 318
    return-void

    .end local v2    # "hasOrigEmails":Z
    :cond_1
    move v2, v3

    .line 304
    goto :goto_0

    .line 310
    .restart local v2    # "hasOrigEmails":Z
    :cond_2
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->w:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    iget-object v4, v4, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->loginAccount:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 312
    .local v1, "hasDefaultAccount":Z
    :goto_2
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->z:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->z:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 313
    const/4 v0, 0x0

    goto :goto_1

    .end local v1    # "hasDefaultAccount":Z
    :cond_3
    move v1, v3

    .line 310
    goto :goto_2
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 203
    sget v1, Laxo$f;->webview:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->r:Landroid/webkit/WebView;

    .line 204
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->r:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 205
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    if-eqz v0, :cond_0

    .line 206
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 207
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->r:Landroid/webkit/WebView;

    const-string/jumbo v2, "searchBoxJavaBridge_"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->r:Landroid/webkit/WebView;

    const-string/jumbo v2, "accessibilityTraversal"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->r:Landroid/webkit/WebView;

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 212
    new-instance v1, Lafq;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->r:Landroid/webkit/WebView;

    invoke-direct {v1, v2}, Lafq;-><init>(Landroid/webkit/WebView;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->y:Lafq;

    .line 213
    sget v1, Laxo$f;->image:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->s:Landroid/widget/ImageView;

    .line 214
    sget v1, Laxo$f;->text1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->t:Landroid/widget/TextView;

    .line 215
    sget v1, Laxo$f;->loading:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->u:Landroid/view/View;

    .line 216
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "distributionMails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->b()V

    .line 79
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->r:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 82
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->c()V

    .line 87
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->r:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 90
    :cond_0
    return-void
.end method

.method protected final c(Z)V
    .locals 5
    .param p1, "shouldJudgeCanUnbind"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 267
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->b(I)V

    .line 269
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->G:Landroid/app/Application;

    invoke-static {v1}, Lcms;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->b(I)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->z:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 276
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$3;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$3;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;)V

    const-class v3, Lcma;

    .line 291
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 276
    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 292
    .local v0, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    .line 1356
    new-instance v2, Lro$4;

    invoke-direct {v2, v1, v0}, Lro$4;-><init>(Lro;Lcma;)V

    .line 1372
    iget-object v1, v1, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/idl/service/CMailIService;->canUnbindEmail(Liyv;)V

    goto :goto_0

    .line 294
    .end local v0    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->g()V

    goto :goto_0
.end method

.method public final d()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 94
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->d()V

    .line 95
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->r:Landroid/webkit/WebView;

    .line 96
    .local v2, "webView":Landroid/webkit/WebView;
    if-eqz v2, :cond_0

    .line 98
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "handleDestroy"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 99
    .local v1, "handleDestroy":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1    # "handleDestroy":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    iput-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->r:Landroid/webkit/WebView;

    .line 105
    iput-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->s:Landroid/widget/ImageView;

    .line 106
    iput-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->t:Landroid/widget/TextView;

    .line 107
    iput-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->u:Landroid/view/View;

    .line 108
    iput-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->x:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

    .line 109
    iput-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->w:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    .line 110
    iput-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->v:Landroid/view/View$OnClickListener;

    .line 111
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->y:Lafq;

    .line 112
    .local v0, "delegate":Lafq;
    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Lafq;->a()V

    .line 115
    :cond_1
    iput-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->y:Lafq;

    .line 116
    return-void

    .end local v0    # "delegate":Lafq;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 120
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->w:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    invoke-direct {v0}, Lcom/alibaba/alimei/oauth/OAuthRequestClient;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->w:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    .line 123
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->w:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    sget-object v1, Lacf;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->clientId:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->w:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->loginAccount:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->w:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->state:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->w:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    iput-boolean v4, v0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->modifyAccount:Z

    .line 127
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->w:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->loginAccount:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->w:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->d:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->loginAccountRange:Ljava/util/List;

    .line 129
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->w:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->lang:Ljava/lang/String;

    .line 132
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$1;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->x:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

    .line 193
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->G:Landroid/app/Application;

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->c(Z)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->b(I)V

    goto :goto_0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 73
    sget v0, Laxo$g;->alm_cmail_fragment_login_h5:I

    return v0
.end method
