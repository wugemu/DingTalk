.class public Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailSignatureDetailConfigActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$a;
    }
.end annotation


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private B:Landroid/content/BroadcastReceiver;

.field a:Ljava/lang/String;

.field b:Z

.field private c:Lrz;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laca;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private k:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private m:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private o:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private p:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/view/View;

.field private s:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

.field private t:Laca;

.field private u:Laca;

.field private v:J

.field private w:Landroid/app/Activity;

.field private x:Z

.field private y:[Ljava/lang/String;

.field private z:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 62
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->c:Lrz;

    .line 92
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "avatar"

    aput-object v1, v0, v3

    const-string/jumbo v1, "email"

    aput-object v1, v0, v4

    const-string/jumbo v1, "nickName"

    aput-object v1, v0, v5

    const-string/jumbo v1, "fax"

    aput-object v1, v0, v6

    const-string/jumbo v1, "position"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "zipcode"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "extension"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "mobile"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "address"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "orgName"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->y:[Ljava/lang/String;

    .line 316
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "function replaceNodeValue(nodeName, nodeValue, show) {\n"

    aput-object v1, v0, v3

    const-string/jumbo v1, "var elements = document.getElementsByName(nodeName);\n"

    aput-object v1, v0, v4

    const-string/jumbo v1, "var len = elements.length;\n"

    aput-object v1, v0, v5

    const-string/jumbo v1, "for (var i = 0; i < len; i++) {\n"

    aput-object v1, v0, v6

    const-string/jumbo v1, "    var element = elements[i];\n"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "    element.innerText=nodeValue;\n"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "    element.style.display=show;\n"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "}\n"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    invoke-static {v0}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a:Ljava/lang/String;

    .line 572
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->A:Landroid/view/View$OnClickListener;

    .line 703
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->b:Z

    .line 770
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->v:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Laca;)Laca;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;
    .param p1, "x1"    # Laca;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->t:Laca;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->f:Ljava/util/List;

    return-object p1
.end method

.method private a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$a;)V
    .locals 8
    .param p1, "cb"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$a;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 286
    new-instance v0, Lsh;

    invoke-direct {v0}, Lsh;-><init>()V

    .line 287
    .local v0, "config":Lsh;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 288
    .local v2, "localDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 289
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v3, v4

    iput v3, v0, Lsh;->b:F

    .line 290
    const/high16 v3, 0x41900000    # 18.0f

    iget v4, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v3, v4

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    iput v3, v0, Lsh;->c:F

    .line 291
    const-string/jumbo v3, "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no\" ></head><body>%s</body></html>"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->t:Laca;

    iget-object v5, v5, Laca;->t:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "htmlContent":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->s:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 293
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->s:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v3, v1, v1, v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(Ljava/lang/String;Ljava/lang/String;Lsh;)Z

    .line 294
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->s:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 296
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->s:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-static {v3}, Lafh;->a(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)V

    .line 298
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->s:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    new-instance v4, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$5;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$a;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 312
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->s:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v3, v6}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setVerticalScrollBarEnabled(Z)V

    .line 313
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->s:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v3, v6}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 314
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    .line 22212
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->x:Z

    if-eqz v0, :cond_1

    .line 22213
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22214
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22216
    .end local p2    # "x2":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "none"

    .line 22217
    :goto_1
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "javascript:"

    aput-object v2, v1, v3

    const-string/jumbo v2, "replaceNodeValue(\""

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    const-string/jumbo v2, "\", \""

    aput-object v2, v1, v6

    const/4 v2, 0x4

    aput-object p2, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "\", \""

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aput-object v0, v1, v2

    const/4 v0, 0x7

    const-string/jumbo v2, "\")"

    aput-object v2, v1, v0

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22218
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->s:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->loadUrl(Ljava/lang/String;)V

    .line 59
    :cond_1
    return-void

    .line 22214
    .restart local p2    # "x2":Ljava/lang/String;
    :cond_2
    new-array v0, v6, [Ljava/lang/String;

    aput-object p3, v0, v3

    const-string/jumbo v1, "\uff1a"

    aput-object v1, v0, v4

    aput-object p2, v0, v5

    invoke-static {v0}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 22216
    .end local p2    # "x2":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;ZLjava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 59
    .line 24612
    if-eqz p1, :cond_0

    .line 24613
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->q:Landroid/widget/TextView;

    sget v1, Laxo$i;->dt_mail_signature_relief_open:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24617
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    invoke-virtual {v0, p1}, Laca;->b(Z)V

    .line 59
    return-void

    .line 24615
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->q:Landroid/widget/TextView;

    sget v1, Laxo$i;->dt_mail_mailsetting_org_mailsignature_closed:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "et"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 195
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$11;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$11;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 209
    return-void
.end method

.method private a(Z)V
    .locals 4
    .param p1, "isRefreshAvatar"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->showLoadingDialog()V

    .line 337
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$12;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Z)V

    .line 387
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Laca;>;>;"
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Laca;>;>;"
    check-cast v0, Lcma;

    .line 388
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Laca;>;>;"
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lacr;->a(Ljava/lang/String;ZLcma;)V

    .line 389
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->x:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method private b()Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 428
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    if-nez v3, :cond_1

    .line 429
    const-string/jumbo v2, "CMailSignatureDetail"

    const-string/jumbo v3, "mNewSign == null"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_0
    :goto_0
    return v1

    .line 433
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Laca;->u:Ljava/lang/String;

    .line 434
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Laca;->g:Ljava/lang/String;

    .line 435
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Laca;->h:Ljava/lang/String;

    .line 438
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Laca;->p:Ljava/lang/String;

    .line 443
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-wide v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->v:J

    iput-wide v4, v3, Laca;->o:J

    .line 445
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Laca;->k:Ljava/lang/String;

    .line 446
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Laca;->l:Ljava/lang/String;

    .line 447
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Laca;->f:Ljava/lang/String;

    .line 448
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Laca;->i:Ljava/lang/String;

    .line 449
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Laca;->j:Ljava/lang/String;

    .line 451
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "reliefStatus":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    sget v4, Laxo$i;->dt_mail_signature_relief_open:I

    .line 453
    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 452
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v3, v4}, Laca;->b(Z)V

    .line 455
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->t:Laca;

    .line 19236
    if-nez v4, :cond_2

    move v3, v1

    .line 455
    :goto_1
    if-nez v3, :cond_0

    move v1, v2

    goto/16 :goto_0

    .line 19240
    :cond_2
    if-eq v3, v4, :cond_13

    .line 19244
    iget-wide v6, v3, Laca;->b:J

    iget-wide v8, v4, Laca;->b:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    iget v5, v3, Laca;->d:I

    iget v6, v4, Laca;->d:I

    if-ne v5, v6, :cond_3

    iget v5, v3, Laca;->c:I

    iget v6, v4, Laca;->c:I

    if-ne v5, v6, :cond_3

    iget v5, v3, Laca;->s:I

    iget v6, v4, Laca;->s:I

    if-ne v5, v6, :cond_3

    iget v5, v3, Laca;->q:I

    iget v6, v4, Laca;->q:I

    if-ne v5, v6, :cond_3

    iget-wide v6, v3, Laca;->o:J

    iget-wide v8, v4, Laca;->o:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    :cond_3
    move v3, v1

    .line 19247
    goto :goto_1

    .line 19250
    :cond_4
    iget-object v5, v3, Laca;->e:Ljava/lang/String;

    invoke-static {v5}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Laca;->e:Ljava/lang/String;

    invoke-static {v6}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v3, Laca;->u:Ljava/lang/String;

    invoke-static {v5}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Laca;->u:Ljava/lang/String;

    invoke-static {v6}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    move v3, v1

    .line 19251
    goto :goto_1

    .line 19254
    :cond_6
    iget-object v5, v3, Laca;->t:Ljava/lang/String;

    invoke-static {v5}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Laca;->t:Ljava/lang/String;

    invoke-static {v6}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v3, Laca;->j:Ljava/lang/String;

    invoke-static {v5}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Laca;->j:Ljava/lang/String;

    invoke-static {v6}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    move v3, v1

    .line 19255
    goto/16 :goto_1

    .line 19258
    :cond_8
    iget-object v5, v3, Laca;->r:Ljava/lang/String;

    invoke-static {v5}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Laca;->r:Ljava/lang/String;

    invoke-static {v6}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v3, Laca;->v:Ljava/lang/String;

    .line 19259
    invoke-static {v5}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Laca;->v:Ljava/lang/String;

    invoke-static {v6}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    move v3, v1

    .line 19260
    goto/16 :goto_1

    .line 19263
    :cond_a
    iget-object v5, v3, Laca;->g:Ljava/lang/String;

    invoke-static {v5}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Laca;->g:Ljava/lang/String;

    invoke-static {v6}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v3, Laca;->p:Ljava/lang/String;

    invoke-static {v5}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Laca;->p:Ljava/lang/String;

    invoke-static {v6}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    move v3, v1

    .line 19264
    goto/16 :goto_1

    .line 19267
    :cond_c
    iget-object v5, v3, Laca;->l:Ljava/lang/String;

    invoke-static {v5}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Laca;->l:Ljava/lang/String;

    invoke-static {v6}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v3, Laca;->i:Ljava/lang/String;

    invoke-static {v5}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Laca;->i:Ljava/lang/String;

    invoke-static {v6}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    :cond_d
    move v3, v1

    .line 19268
    goto/16 :goto_1

    .line 19271
    :cond_e
    iget-object v5, v3, Laca;->f:Ljava/lang/String;

    invoke-static {v5}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Laca;->f:Ljava/lang/String;

    invoke-static {v6}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, v3, Laca;->h:Ljava/lang/String;

    invoke-static {v5}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Laca;->h:Ljava/lang/String;

    invoke-static {v6}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    :cond_f
    move v3, v1

    .line 19272
    goto/16 :goto_1

    .line 19275
    :cond_10
    iget-object v5, v3, Laca;->k:Ljava/lang/String;

    invoke-static {v5}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Laca;->k:Ljava/lang/String;

    invoke-static {v6}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, v3, Laca;->m:Ljava/lang/String;

    invoke-static {v5}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Laca;->m:Ljava/lang/String;

    invoke-static {v6}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    :cond_11
    move v3, v1

    .line 19276
    goto/16 :goto_1

    .line 19279
    :cond_12
    iget-object v3, v3, Laca;->n:Ljava/lang/String;

    invoke-static {v3}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v4, Laca;->n:Ljava/lang/String;

    invoke-static {v4}, Laca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    move v3, v1

    .line 19280
    goto/16 :goto_1

    :cond_13
    move v3, v2

    .line 19283
    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    const/4 v0, 0x0

    .line 59
    .line 21527
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 21528
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 21529
    :cond_0
    :goto_0
    return-void

    .line 21532
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 21533
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 21536
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    move v2, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 21537
    if-eqz v0, :cond_4

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 21538
    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21539
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21540
    iget-wide v6, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->v:J

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_2

    move v2, v1

    .line 21543
    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    move v1, v2

    :goto_2
    move v2, v1

    move v1, v0

    .line 21545
    goto :goto_1

    .line 21546
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 21547
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 21549
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 21550
    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$15;

    invoke-direct {v3, p0, v0, v4}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$15;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 21560
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Laxo$i;->dt_mail_orgmail_select:I

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 21561
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    :cond_4
    move v0, v1

    move v1, v2

    goto :goto_2
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->w:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 59
    .line 22392
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->t:Laca;

    if-eqz v0, :cond_0

    .line 22393
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$a;)V

    .line 59
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    const/4 v1, 0x0

    .line 59
    .line 23223
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->t:Laca;

    if-eqz v0, :cond_2

    .line 23227
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$a;)V

    .line 23228
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->t:Laca;

    invoke-virtual {v0}, Laca;->e()Laca;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    .line 23229
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v0, v0, Laca;->u:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 23230
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->d:Ljava/lang/String;

    iput-object v2, v0, Laca;->u:Ljava/lang/String;

    .line 23232
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v2, v2, Laca;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 23233
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v2, v2, Laca;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 23234
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v2, v2, Laca;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 23236
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v0, v0, Laca;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 23237
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v2, v2, Laca;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 23249
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v2, v2, Laca;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 23250
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v2, v2, Laca;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 23251
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v2, v2, Laca;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 23252
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v2, v2, Laca;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 23253
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v2, v2, Laca;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 23255
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    invoke-virtual {v0}, Laca;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23256
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->q:Landroid/widget/TextView;

    sget v2, Laxo$i;->dt_mail_signature_relief_open:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23260
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->r:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23262
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-wide v2, v0, Laca;->o:J

    iput-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->v:J

    .line 23268
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->t:Laca;

    iget-object v0, v0, Laca;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->t:Laca;

    iget-object v0, v0, Laca;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 23282
    :cond_2
    :goto_1
    return-void

    .line 23258
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->q:Landroid/widget/TextView;

    sget v2, Laxo$i;->dt_mail_mailsetting_org_mailsignature_closed:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 23274
    :cond_4
    :try_start_0
    const-string/jumbo v0, "axo$f"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move v2, v1

    .line 23275
    :goto_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->y:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_2

    .line 23276
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->y:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 23277
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->t:Laca;

    iget-object v0, v0, Laca;->a:Ljava/util/List;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->y:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23275
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 23277
    :cond_5
    const/16 v0, 0x8

    goto :goto_3

    .line 23279
    :catch_0
    move-exception v0

    .line 23280
    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 23281
    const-string/jumbo v1, "CMailSignatureDetail"

    const-string/jumbo v2, "updateViewField"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method private h()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 20172
    const-string/jumbo v2, "mail_sign_save"

    invoke-static {v2}, Lafe;->a(Ljava/lang/String;)V

    .line 476
    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->b:Z

    if-nez v2, :cond_1

    .line 477
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 478
    const-string/jumbo v1, "CMailSignatureDetail"

    const-string/jumbo v2, "mDataChanged == false"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->finish()V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 20459
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    if-nez v2, :cond_2

    .line 20460
    const-string/jumbo v2, "CMailSignatureDetail"

    const-string/jumbo v3, "mNewSign == null"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20461
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->finish()V

    .line 484
    :goto_1
    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->showLoadingDialog()V

    .line 489
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$14;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$14;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V

    .line 522
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v0, Lcma;

    .line 523
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    invoke-virtual {v2}, Laca;->a()Labr;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lro;->a(Labr;Lcma;)V

    goto :goto_0

    .line 20466
    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    iget-object v2, v2, Laca;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 20467
    sget v2, Laxo$i;->dt_mail_signature_fields_name_hint:I

    invoke-static {v2}, Lhcn;->a(I)V

    goto :goto_1

    .line 20471
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method private i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 706
    const-string/jumbo v1, "CMailSignatureDetail"

    const-string/jumbo v2, "mDataChanged == false"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->finish()V

    .line 731
    :goto_0
    return-void

    .line 711
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->b:Z

    .line 712
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 713
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Laxo$i;->dt_mail_signatureedit_quit_confirm:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 714
    sget v1, Laxo$i;->dt_mail_save:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$6;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 722
    sget v1, Laxo$i;->cancel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$7;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 730
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method private j()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 775
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 776
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_0

    .line 777
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 778
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v2, Laxo$e;->cmail_icon_default_avatar:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    .line 21167
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 59
    .line 23632
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_mail_signature_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23633
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 59
    return-void
.end method

.method static synthetic p(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 59
    .line 23637
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 23638
    const-string/jumbo v0, "CMailSignatureDetail"

    const-string/jumbo v1, "mMailNewSignatureDos == null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23639
    :goto_0
    return-void

    .line 23641
    :cond_0
    const-string/jumbo v0, "1"

    invoke-static {v0}, Lacq;->a(Ljava/lang/String;)V

    .line 23643
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laca;

    .line 23644
    if-eqz v0, :cond_1

    .line 23645
    invoke-virtual {v0}, Laca;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 23646
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Laca;->a(Z)V

    goto :goto_1

    .line 23648
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Laca;->a(Z)V

    goto :goto_1

    .line 23653
    :cond_3
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(J)V

    .line 23654
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->f:Ljava/util/List;

    invoke-static {v0}, Laca;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 23655
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V

    .line 23681
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    invoke-interface {v2, v0, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 23682
    invoke-static {}, Lro;->a()Lro;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lro;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method static synthetic r(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lrz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->c:Lrz;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->r:Landroid/view/View;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Laca;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->u:Laca;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->h()V

    return-void
.end method

.method static synthetic v(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 59
    .line 24762
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->j()V

    .line 24767
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Z)V

    .line 59
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 735
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 737
    const/16 v1, 0x271a

    if-ne p1, v1, :cond_0

    if-eqz p3, :cond_0

    .line 738
    const-string/jumbo v1, "key_select_motto"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 740
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 743
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 328
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onAttachedToWindow()V

    .line 18333
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Z)V

    .line 330
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->i()V

    .line 688
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    sget v1, Laxo$g;->alm_cmail_fragment_mail_sign_config_detail:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->setContentView(I)V

    .line 2160
    const-string/jumbo v1, "JustForStatisticActivity"

    const-string/jumbo v2, "mail_sign_edit"

    invoke-static {v1, v2, v4}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 113
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->finish()V

    .line 116
    const-string/jumbo v1, "CMailSignatureDetail"

    const-string/jumbo v2, "data error"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->d:Ljava/lang/String;

    .line 121
    const-string/jumbo v1, "nav_source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->e:Ljava/lang/String;

    .line 122
    iput-object p0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->w:Landroid/app/Activity;

    .line 123
    sget v1, Laxo$f;->user_profile_avatar:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 124
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->j()V

    .line 126
    sget v1, Laxo$f;->avatar_item:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3142
    sget v1, Laxo$f;->et_signature_name:I

    .line 3372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3142
    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 3143
    sget v1, Laxo$f;->et_signature_position:I

    .line 4372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3143
    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 3144
    sget v1, Laxo$f;->et_signature_company:I

    .line 5372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3144
    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 3145
    sget v1, Laxo$f;->et_signature_mobile:I

    .line 6372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3145
    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 3146
    sget v1, Laxo$f;->et_signature_address:I

    .line 7372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3146
    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 3147
    sget v1, Laxo$f;->et_signature_fax:I

    .line 8372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3147
    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 3148
    sget v1, Laxo$f;->et_signature_zipcode:I

    .line 9372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3148
    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 3149
    sget v1, Laxo$f;->et_signature_custom:I

    .line 10372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3149
    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 3151
    sget v1, Laxo$f;->tv_signature_email:I

    .line 11372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3151
    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 3154
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v2, "nick_name"

    .line 12191
    invoke-direct {p0, v1, v2, v4}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;Ljava/lang/String;Ljava/lang/String;)V

    .line 3155
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v2, "position"

    .line 13191
    invoke-direct {p0, v1, v2, v4}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;Ljava/lang/String;Ljava/lang/String;)V

    .line 3156
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v2, "org_name"

    .line 14191
    invoke-direct {p0, v1, v2, v4}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;Ljava/lang/String;Ljava/lang/String;)V

    .line 3157
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v2, "mobile"

    sget v3, Laxo$i;->dt_mail_signature_fields_mobile:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;Ljava/lang/String;Ljava/lang/String;)V

    .line 3158
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v2, "address"

    sget v3, Laxo$i;->dt_mail_signature_fields_address:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;Ljava/lang/String;Ljava/lang/String;)V

    .line 3159
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v2, "fax"

    sget v3, Laxo$i;->dt_mail_signature_fields_fax:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;Ljava/lang/String;Ljava/lang/String;)V

    .line 3160
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v2, "zipcode"

    sget v3, Laxo$i;->dt_mail_signature_fields_zipcode:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;Ljava/lang/String;Ljava/lang/String;)V

    .line 3161
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v2, "extension"

    .line 15191
    invoke-direct {p0, v1, v2, v4}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;Ljava/lang/String;Ljava/lang/String;)V

    .line 3162
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v2, "email"

    sget v3, Laxo$i;->dt_mail_user_lable:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;Ljava/lang/String;Ljava/lang/String;)V

    .line 3164
    sget v1, Laxo$f;->tv_signature_disclaimer_status:I

    .line 15372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3164
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->q:Landroid/widget/TextView;

    .line 3165
    sget v1, Laxo$f;->rl_signature_relief:I

    .line 16372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3165
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->r:Landroid/view/View;

    .line 3167
    sget v1, Laxo$f;->mail_sign_template:I

    .line 17372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3167
    check-cast v1, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->s:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .line 3168
    sget v1, Laxo$f;->suggest_btn:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$9;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$9;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3182
    sget v1, Laxo$f;->select_company_btn:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$10;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$10;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17591
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->B:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 17592
    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->B:Landroid/content/BroadcastReceiver;

    .line 17605
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "action_mail_signature_disclaimer_changed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 17606
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->B:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 17746
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->z:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_2

    .line 17747
    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$8;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->z:Landroid/content/BroadcastReceiver;

    .line 17757
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.workapp.PROFILE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 17758
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 422
    const/4 v1, 0x1

    sget v2, Laxo$i;->dt_mail_save:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 423
    .local v0, "menuItemSendCancel":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 424
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 412
    .line 18621
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->B:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 18622
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->B:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 18623
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->B:Landroid/content/BroadcastReceiver;

    .line 18625
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->z:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 18626
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 18627
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->z:Landroid/content/BroadcastReceiver;

    .line 413
    :cond_1
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 414
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->s:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->s:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->removeAllViews()V

    .line 416
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->s:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->destroy()V

    .line 418
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 692
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 700
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 694
    :sswitch_0
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->i()V

    .line 695
    const/4 v0, 0x1

    goto :goto_1

    .line 697
    :sswitch_1
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->h()V

    goto :goto_0

    .line 692
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method
