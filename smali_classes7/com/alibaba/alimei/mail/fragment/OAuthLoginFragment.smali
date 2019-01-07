.class public Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;
.super Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;
.source "OAuthLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$a;
    }
.end annotation


# instance fields
.field private final A:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lkkt;",
            ">;"
        }
    .end annotation
.end field

.field private B:Landroid/os/Handler;

.field private r:Ljava/lang/String;

.field private s:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

.field private t:Landroid/view/ViewGroup;

.field private u:Lnet/openid/appauth/AuthorizationService;

.field private v:Ladv;

.field private w:Lcom/alibaba/alimei/mail/oauth/Configuration;

.field private x:Lklm;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final y:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->s:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 99
    sget-object v0, Lklk;->a:Lklk;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->x:Lklm;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->y:Ljava/util/concurrent/atomic/AtomicReference;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->z:Ljava/util/concurrent/atomic/AtomicReference;

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->A:Ljava/util/concurrent/atomic/AtomicReference;

    .line 454
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$2;-><init>(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->B:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 120
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 123
    :cond_0
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    invoke-direct {v1}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;-><init>()V

    .line 124
    .local v1, "fragment":Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->setArguments(Landroid/os/Bundle;)V

    .line 125
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;)Lcom/alibaba/alimei/mail/oauth/Configuration;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->w:Lcom/alibaba/alimei/mail/oauth/Configuration;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    .line 13296
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 13381
    if-eqz v1, :cond_4

    .line 13382
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v2, "error"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13383
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationException;->fromOAuthRedirect(Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    invoke-virtual {v0}, Lnet/openid/appauth/AuthorizationException;->toIntent()Landroid/content/Intent;

    move-result-object v0

    .line 13298
    :goto_0
    if-nez v0, :cond_5

    .line 13299
    const-string/jumbo v0, "MailLoginBaseFragment"

    const-string/jumbo v1, "handleOAuthResponse fail for responseData is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13317
    :goto_1
    return-void

    .line 13385
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->A:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkkt;

    .line 13386
    new-instance v2, Lkku$a;

    invoke-direct {v2, v0}, Lkku$a;-><init>(Lkkt;)V

    .line 13387
    invoke-virtual {v2, v1}, Lkku$a;->a(Landroid/net/Uri;)Lkku$a;

    move-result-object v1

    .line 13388
    invoke-virtual {v1}, Lkku$a;->a()Lkku;

    move-result-object v1

    .line 13390
    iget-object v2, v0, Lkkt;->j:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, v0, Lkkt;->j:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, v0, Lkkt;->j:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lkkt;->j:Ljava/lang/String;

    iget-object v3, v1, Lkku;->b:Ljava/lang/String;

    .line 13391
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 13393
    :cond_2
    const-string/jumbo v2, "MailLoginBaseFragment"

    const-string/jumbo v3, "State returned in authorization response (%s) does not match state from request (%s) - discarding response"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v1, v1, Lkku;->b:Ljava/lang/String;

    aput-object v1, v4, v5

    const/4 v1, 0x1

    iget-object v0, v0, Lkkt;->j:Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13398
    sget-object v0, Lnet/openid/appauth/AuthorizationException$a;->j:Lnet/openid/appauth/AuthorizationException;

    invoke-virtual {v0}, Lnet/openid/appauth/AuthorizationException;->toIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 13401
    :cond_3
    invoke-virtual {v1}, Lkku;->b()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 13404
    :cond_4
    const-string/jumbo v0, "MailLoginBaseFragment"

    const-string/jumbo v1, "extractResponseData fail for responseUri is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13407
    const/4 v0, 0x0

    goto :goto_0

    .line 13305
    :cond_5
    invoke-static {v0}, Lkku;->a(Landroid/content/Intent;)Lkku;

    move-result-object v1

    .line 13306
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationException;->fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    .line 13308
    if-nez v1, :cond_6

    if-eqz v0, :cond_7

    .line 13309
    :cond_6
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->v:Ladv;

    invoke-virtual {v2, v1, v0}, Ladv;->a(Lkku;Lnet/openid/appauth/AuthorizationException;)Lkks;

    .line 13312
    :cond_7
    if-eqz v1, :cond_a

    iget-object v2, v1, Lkku;->d:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 13314
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->v:Ladv;

    invoke-virtual {v2, v1, v0}, Ladv;->a(Lkku;Lnet/openid/appauth/AuthorizationException;)Lkks;

    .line 14327
    const-string/jumbo v0, "MailLoginBaseFragment"

    const-string/jumbo v2, "Exchanging authorization code"

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14444
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 14454
    const-string/jumbo v2, "additionalExchangeParameters cannot be null"

    invoke-static {v0, v2}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14457
    iget-object v2, v1, Lkku;->d:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 14458
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "authorizationCode not available for exchange request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14461
    :cond_8
    new-instance v2, Lklh$a;

    iget-object v3, v1, Lkku;->a:Lkkt;

    iget-object v3, v3, Lkkt;->a:Lkkv;

    iget-object v4, v1, Lkku;->a:Lkkt;

    iget-object v4, v4, Lkkt;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lklh$a;-><init>(Lkkv;Ljava/lang/String;)V

    iget-object v3, v1, Lkku;->a:Lkkt;

    iget-object v3, v3, Lkkt;->c:Ljava/lang/String;

    .line 15275
    iput-object v3, v2, Lklh$a;->a:Ljava/lang/String;

    .line 14464
    const-string/jumbo v3, "authorization_code"

    .line 14465
    invoke-virtual {v2, v3}, Lklh$a;->a(Ljava/lang/String;)Lklh$a;

    move-result-object v2

    iget-object v3, v1, Lkku;->a:Lkkt;

    iget-object v3, v3, Lkkt;->h:Landroid/net/Uri;

    .line 14466
    invoke-virtual {v2, v3}, Lklh$a;->a(Landroid/net/Uri;)Lklh$a;

    move-result-object v2

    iget-object v3, v1, Lkku;->a:Lkkt;

    iget-object v3, v3, Lkkt;->k:Ljava/lang/String;

    .line 15397
    if-eqz v3, :cond_9

    .line 15398
    invoke-static {v3}, Lkkz;->a(Ljava/lang/String;)V

    .line 15401
    :cond_9
    iput-object v3, v2, Lklh$a;->c:Ljava/lang/String;

    .line 14467
    iget-object v1, v1, Lkku;->d:Ljava/lang/String;

    .line 14468
    invoke-virtual {v2, v1}, Lklh$a;->b(Ljava/lang/String;)Lklh$a;

    move-result-object v1

    .line 14469
    invoke-virtual {v1, v0}, Lklh$a;->a(Ljava/util/Map;)Lklh$a;

    move-result-object v0

    .line 14470
    invoke-virtual {v0}, Lklh$a;->a()Lklh;

    move-result-object v0

    .line 14329
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$1;-><init>(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;)V

    .line 14328
    invoke-direct {p0, v0, v1}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a(Lklh;Lnet/openid/appauth/AuthorizationService$b;)V

    goto/16 :goto_1

    .line 13316
    :cond_a
    if-eqz v0, :cond_b

    .line 13317
    const-string/jumbo v1, "MailLoginBaseFragment"

    invoke-static {v1, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 13319
    :cond_b
    const-string/jumbo v0, "MailLoginBaseFragment"

    const-string/jumbo v1, "No authorization state retained - reauthorization required"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    .line 15571
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 16218
    iput-object p1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 16230
    iput-boolean v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 15583
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v3

    const-string/jumbo v2, ":"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v1}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 15584
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 16275
    iput-boolean v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 15586
    sget v1, Laxo$i;->sure:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 17259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 15588
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;Lkli;Lnet/openid/appauth/AuthorizationException;)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;
    .param p1, "x1"    # Lkli;
    .param p2, "x2"    # Lnet/openid/appauth/AuthorizationException;

    .prologue
    const/4 v1, 0x0

    .line 67
    .line 10366
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->v:Ladv;

    invoke-virtual {v0, p1, p2}, Ladv;->a(Lkli;Lnet/openid/appauth/AuthorizationException;)Lkks;

    .line 10367
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->v:Ladv;

    invoke-virtual {v0}, Ladv;->a()Lkks;

    move-result-object v2

    .line 11311
    iget-object v0, v2, Lkks;->g:Lnet/openid/appauth/AuthorizationException;

    if-nez v0, :cond_5

    .line 12225
    iget-object v0, v2, Lkks;->g:Lnet/openid/appauth/AuthorizationException;

    if-nez v0, :cond_2

    .line 12229
    iget-object v0, v2, Lkks;->e:Lkli;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lkks;->e:Lkli;

    iget-object v0, v0, Lkli;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 12230
    iget-object v0, v2, Lkks;->e:Lkli;

    iget-object v0, v0, Lkli;->c:Ljava/lang/String;

    .line 11312
    :goto_0
    if-nez v0, :cond_0

    .line 12266
    iget-object v0, v2, Lkks;->g:Lnet/openid/appauth/AuthorizationException;

    if-nez v0, :cond_4

    .line 12270
    iget-object v0, v2, Lkks;->e:Lkli;

    if-eqz v0, :cond_3

    iget-object v0, v2, Lkks;->e:Lkli;

    iget-object v0, v0, Lkli;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 12271
    iget-object v0, v2, Lkks;->e:Lkli;

    iget-object v0, v0, Lkli;->e:Ljava/lang/String;

    .line 11312
    :goto_1
    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    .line 10367
    :goto_2
    if-nez v0, :cond_7

    .line 10368
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Authorization Code exchange failed"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_6

    iget-object v0, p2, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10373
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 10374
    :goto_4
    return-void

    .line 12233
    :cond_1
    iget-object v0, v2, Lkks;->d:Lkku;

    if-eqz v0, :cond_2

    .line 12234
    iget-object v0, v2, Lkks;->d:Lkku;

    iget-object v0, v0, Lkku;->e:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 12237
    goto :goto_0

    .line 12274
    :cond_3
    iget-object v0, v2, Lkks;->d:Lkku;

    if-eqz v0, :cond_4

    .line 12275
    iget-object v0, v2, Lkks;->d:Lkku;

    iget-object v0, v0, Lkku;->g:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 12278
    goto :goto_1

    .line 11312
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 10368
    :cond_6
    const-string/jumbo v0, ""

    goto :goto_3

    .line 10375
    :cond_7
    iget-object v0, p1, Lkli;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v3, p1, Lkli;->e:Ljava/lang/String;

    .line 10376
    :goto_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->y:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p1, Lkli;->f:Ljava/lang/String;

    iget-object v5, p1, Lkli;->d:Ljava/lang/Long;

    .line 12446
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v6, :cond_8

    .line 12447
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 12449
    :cond_8
    const/16 v6, 0x64

    sget-object v7, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;->UNKNOWN:Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    .line 12523
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v8

    new-instance v9, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$3;

    invoke-direct {v9, p0}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$3;-><init>(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;)V

    const-class v10, Lcma;

    .line 12551
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    .line 12523
    invoke-interface {v8, v9, v10, v11}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcma;

    move-object v8, v1

    .line 12449
    invoke-static/range {v0 .. v9}, Lacg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILcom/alibaba/alimei/mail/account/AgentServerSSLLevel;Lcma;Lcma;)V

    goto :goto_4

    .line 10375
    :cond_9
    iget-object v3, p1, Lkli;->c:Ljava/lang/String;

    goto :goto_5
.end method

.method private a(Lklh;Lnet/openid/appauth/AuthorizationService$b;)V
    .locals 5
    .param p1, "request"    # Lklh;
    .param p2, "callback"    # Lnet/openid/appauth/AuthorizationService$b;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 348
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->v:Ladv;

    invoke-virtual {v2}, Ladv;->a()Lkks;

    move-result-object v2

    invoke-virtual {v2}, Lkks;->b()Lnet/openid/appauth/ClientAuthentication;
    :try_end_0
    .catch Lnet/openid/appauth/ClientAuthentication$UnsupportedAuthenticationMethod; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 356
    .local v0, "clientAuthentication":Lnet/openid/appauth/ClientAuthentication;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->u:Lnet/openid/appauth/AuthorizationService;

    invoke-virtual {v2, p1, v0, p2}, Lnet/openid/appauth/AuthorizationService;->a(Lklh;Lnet/openid/appauth/ClientAuthentication;Lnet/openid/appauth/AuthorizationService$b;)V

    .line 360
    .end local v0    # "clientAuthentication":Lnet/openid/appauth/ClientAuthentication;
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, "ex":Lnet/openid/appauth/ClientAuthentication$UnsupportedAuthenticationMethod;
    const-string/jumbo v2, "MailLoginBaseFragment"

    const-string/jumbo v3, "obtain token fail"

    const-string/jumbo v4, "Token request cannot be made, client authentication for the token endpoint could not be constructed (%s)"

    invoke-static {v2, v3, v4, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->B:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, -0x1

    .line 130
    sget v2, Laxo$f;->root_view:I

    invoke-static {p1, v2}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->t:Landroid/view/ViewGroup;

    .line 131
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v2

    const-class v3, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    invoke-virtual {v2, v3}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    .line 132
    .local v0, "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->createWebViewWrapper(Landroid/content/Context;)Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->s:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 133
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 137
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->t:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->s:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
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
    .line 143
    .local p1, "distributionMails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 152
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1166
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 1167
    const-string/jumbo v3, "account_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->r:Ljava/lang/String;

    .line 1169
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->r:Ljava/lang/String;

    invoke-static {v2}, Lacn;->g(Ljava/lang/String;)Z

    move-result v2

    .line 154
    if-nez v2, :cond_1

    .line 155
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    .line 9290
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->s:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v2

    .line 1174
    invoke-virtual {v2, v0}, Lcom/uc/webview/export/WebSettings;->setSupportZoom(Z)V

    .line 1175
    invoke-virtual {v2, v1}, Lcom/uc/webview/export/WebSettings;->setAppCacheEnabled(Z)V

    .line 1176
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->s:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    new-instance v3, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$a;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$a;-><init>(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;B)V

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 1180
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->F()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1183
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1184
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->r:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/alimei/mail/oauth/Configuration;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/alimei/mail/oauth/Configuration;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->w:Lcom/alibaba/alimei/mail/oauth/Configuration;

    .line 1185
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->r:Ljava/lang/String;

    invoke-static {v2, v3}, Ladv;->a(Landroid/content/Context;Ljava/lang/String;)Ladv;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->v:Ladv;

    .line 1186
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->w:Lcom/alibaba/alimei/mail/oauth/Configuration;

    .line 2120
    iget-object v2, v2, Lcom/alibaba/alimei/mail/oauth/Configuration;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v0

    .line 1186
    :goto_1
    if-nez v2, :cond_3

    .line 1187
    const-string/jumbo v2, "MailLoginBaseFragment"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "accountName: "

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->r:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string/jumbo v1, " configuration is valid"

    aput-object v1, v3, v0

    invoke-static {v3}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    goto :goto_0

    :cond_2
    move v2, v1

    .line 2120
    goto :goto_1

    .line 1192
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->w:Lcom/alibaba/alimei/mail/oauth/Configuration;

    .line 3196
    iget-object v3, v2, Lcom/alibaba/alimei/mail/oauth/Configuration;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "lastHash"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3113
    iget-object v2, v2, Lcom/alibaba/alimei/mail/oauth/Configuration;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1192
    :goto_2
    if-eqz v0, :cond_4

    .line 1194
    const-string/jumbo v0, "MailLoginBaseFragment"

    const-string/jumbo v2, "Configuration change detected, discarding old state"

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->v:Ladv;

    new-instance v2, Lkks;

    invoke-direct {v2}, Lkks;-><init>()V

    invoke-virtual {v0, v2}, Ladv;->a(Lkks;)Lkks;

    .line 1196
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->w:Lcom/alibaba/alimei/mail/oauth/Configuration;

    .line 4136
    iget-object v2, v0, Lcom/alibaba/alimei/mail/oauth/Configuration;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "lastHash"

    iget-object v0, v0, Lcom/alibaba/alimei/mail/oauth/Configuration;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4250
    :cond_4
    const-string/jumbo v0, "MailLoginBaseFragment"

    const-string/jumbo v2, "Creating authorization service"

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4251
    new-instance v0, Lkkq$a;

    invoke-direct {v0}, Lkkq$a;-><init>()V

    .line 4252
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->x:Lklm;

    .line 5081
    const-string/jumbo v3, "browserMatcher cannot be null"

    invoke-static {v2, v3}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5082
    iput-object v2, v0, Lkkq$a;->a:Lklm;

    .line 4253
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->w:Lcom/alibaba/alimei/mail/oauth/Configuration;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/oauth/Configuration;->a()Lklo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkkq$a;->a(Lklo;)Lkkq$a;

    .line 4255
    new-instance v2, Lnet/openid/appauth/AuthorizationService;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lkkq$a;->a()Lkkq;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lnet/openid/appauth/AuthorizationService;-><init>(Landroid/content/Context;Lkkq;)V

    .line 1199
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->u:Lnet/openid/appauth/AuthorizationService;

    .line 1201
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->y:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->w:Lcom/alibaba/alimei/mail/oauth/Configuration;

    .line 5141
    iget-object v2, v2, Lcom/alibaba/alimei/mail/oauth/Configuration;->d:Ljava/lang/String;

    .line 1201
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1202
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->z:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->w:Lcom/alibaba/alimei/mail/oauth/Configuration;

    .line 5146
    iget-object v2, v2, Lcom/alibaba/alimei/mail/oauth/Configuration;->e:Ljava/lang/String;

    .line 1202
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1203
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->r:Ljava/lang/String;

    .line 5259
    const-string/jumbo v0, "MailLoginBaseFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Creating auth request for login hint: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5260
    new-instance v0, Lkkv;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->w:Lcom/alibaba/alimei/mail/oauth/Configuration;

    .line 6166
    iget-object v3, v3, Lcom/alibaba/alimei/mail/oauth/Configuration;->h:Landroid/net/Uri;

    .line 5261
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->w:Lcom/alibaba/alimei/mail/oauth/Configuration;

    .line 6171
    iget-object v4, v4, Lcom/alibaba/alimei/mail/oauth/Configuration;->i:Landroid/net/Uri;

    .line 5262
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->w:Lcom/alibaba/alimei/mail/oauth/Configuration;

    .line 6176
    iget-object v5, v5, Lcom/alibaba/alimei/mail/oauth/Configuration;->j:Landroid/net/Uri;

    .line 5263
    invoke-direct {v0, v3, v4, v5}, Lkkv;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 5264
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->v:Ladv;

    invoke-virtual {v3}, Ladv;->a()Lkks;

    move-result-object v3

    .line 5265
    invoke-virtual {v3}, Lkks;->a()Lkkv;

    move-result-object v4

    if-nez v4, :cond_5

    .line 6214
    iput-object v0, v3, Lkks;->c:Lkkv;

    .line 5268
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->v:Ladv;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->v:Ladv;

    invoke-virtual {v3}, Ladv;->a()Lkks;

    move-result-object v3

    invoke-virtual {v0, v3}, Ladv;->a(Lkks;)Lkks;

    .line 5270
    new-instance v3, Lkkt$a;

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->v:Ladv;

    .line 5271
    invoke-virtual {v0}, Ladv;->a()Lkks;

    move-result-object v0

    invoke-virtual {v0}, Lkks;->a()Lkkv;

    move-result-object v4

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->y:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5272
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v5, "code"

    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->w:Lcom/alibaba/alimei/mail/oauth/Configuration;

    .line 7156
    iget-object v6, v6, Lcom/alibaba/alimei/mail/oauth/Configuration;->g:Landroid/net/Uri;

    .line 5274
    invoke-direct {v3, v4, v0, v5, v6}, Lkkt$a;-><init>(Lkkv;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->z:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5275
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7607
    iput-object v0, v3, Lkkt$a;->a:Ljava/lang/String;

    .line 5275
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->w:Lcom/alibaba/alimei/mail/oauth/Configuration;

    .line 8151
    iget-object v0, v0, Lcom/alibaba/alimei/mail/oauth/Configuration;->f:Ljava/lang/String;

    .line 8719
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 8720
    iput-object v7, v3, Lkkt$a;->d:Ljava/lang/String;

    .line 5278
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 5279
    invoke-virtual {v3, v2}, Lkkt$a;->a(Ljava/lang/String;)Lkkt$a;

    .line 5282
    :cond_6
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->A:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Lkkt$a;->a()Lkkt;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 9286
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->A:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkkt;

    .line 9287
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lkkt;->a()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 9288
    invoke-virtual {v0}, Lkkt;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9289
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->s:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 3113
    goto/16 :goto_2

    .line 8722
    :cond_8
    const-string/jumbo v4, " +"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 8737
    if-nez v0, :cond_9

    .line 8738
    new-array v0, v1, [Ljava/lang/String;

    .line 8740
    :cond_9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lkkt$a;->a(Ljava/lang/Iterable;)Lkkt$a;

    goto :goto_3

    .line 9291
    :cond_a
    const-string/jumbo v0, "MailLoginBaseFragment"

    const-string/jumbo v1, "executeAuthRequest fail for request is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 226
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->onDestroy()V

    .line 227
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->s:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v2, :cond_0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->s:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 230
    .local v1, "webViewWrapper":Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->b()V

    .line 231
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleDestroy()V

    .line 232
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->a()V

    .line 233
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->c()V

    .line 234
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->a(Z)V

    .line 10246
    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uc/webview/export/CookieManager;->removeAllCookie()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v1    # "webViewWrapper":Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->s:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 241
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MailLoginBaseFragment"

    invoke-static {v2, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->onPause()V

    .line 219
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->s:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->s:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handlePause()V

    .line 222
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->onResume()V

    .line 211
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->s:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->s:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleResume()V

    .line 214
    :cond_0
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 147
    sget v0, Laxo$g;->cmail_fragment_oauth:I

    return v0
.end method
