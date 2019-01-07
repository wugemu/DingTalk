.class public Lelg;
.super Ljava/lang/Object;
.source "InvitationListener.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# static fields
.field private static final c:Ljava/util/regex/Pattern;

.field private static volatile d:Lelg;


# instance fields
.field public a:Landroid/content/ClipboardManager;

.field public b:Ljava/lang/String;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

.field private i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "(\uffe5[0-9a-zA-Z]+\uffe5)|(#[0-9a-zA-Z]+#)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lelg;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lelg$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lelg$1;-><init>(Lelg;Landroid/os/Looper;)V

    iput-object v0, p0, Lelg;->i:Landroid/os/Handler;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lelg;->g:Ljava/util/HashSet;

    .line 106
    return-void
.end method

.method public static a()Lelg;
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lelg;->d:Lelg;

    if-nez v0, :cond_1

    .line 110
    const-class v1, Lelg;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v0, Lelg;->d:Lelg;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lelg;

    invoke-direct {v0}, Lelg;-><init>()V

    sput-object v0, Lelg;->d:Lelg;

    .line 114
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_1
    sget-object v0, Lelg;->d:Lelg;

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lelg;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lelg;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lelg;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lelg;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lelg;

    .prologue
    .line 55
    iget-object v0, p0, Lelg;->e:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lelg;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Lelg;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 55
    iput-object p1, p0, Lelg;->e:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method private a(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 380
    invoke-direct {p0}, Lelg;->c()V

    .line 382
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 383
    iget-object v0, p0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    const v1, 0x7f020ce3

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a(I)V

    .line 384
    iget-object v0, p0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    const v1, 0x7f091a98

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->setTitle(I)V

    .line 385
    iget-object v0, p0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    const v1, 0x7f091a99

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->b(I)V

    .line 386
    iget-object v0, p0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    const v1, 0x7f09217c

    new-instance v2, Lelg$7;

    invoke-direct {v2, p0}, Lelg$7;-><init>(Lelg;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->b(ILandroid/view/View$OnClickListener;)V

    .line 394
    iget-object v0, p0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->show()V

    .line 395
    return-void
.end method

.method static synthetic a(Lelg;Landroid/app/Activity;Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;)V
    .locals 2
    .param p0, "x0"    # Lelg;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;

    .prologue
    .line 55
    .line 4300
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4303
    invoke-static {p2}, Lelg;->a(Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4307
    iget-boolean v0, p2, Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;->isExpired:Z

    if-eqz v0, :cond_1

    .line 4308
    invoke-direct {p0, p1}, Lelg;->a(Landroid/app/Activity;)V

    .line 4309
    :cond_0
    :goto_0
    return-void

    .line 4312
    :cond_1
    iget-object v0, p2, Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4313
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lelg;->a(Landroid/app/Activity;Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lelg;Landroid/app/Activity;Z)V
    .locals 4
    .param p0, "x0"    # Lelg;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Z

    .prologue
    .line 55
    .line 3245
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3248
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3251
    iget-object v0, p0, Lelg;->f:Ljava/lang/String;

    invoke-static {v0}, Lelg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3254
    iget-object v0, p0, Lelg;->g:Ljava/util/HashSet;

    iget-object v1, p0, Lelg;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3257
    invoke-static {p1}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3398
    invoke-direct {p0}, Lelg;->c()V

    .line 3400
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 3401
    iget-object v0, p0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    const v1, 0x7f020df1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a(I)V

    .line 3402
    iget-object v0, p0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    const v1, 0x7f091a9d

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->setTitle(I)V

    .line 3403
    iget-object v0, p0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    const v1, 0x7f091d75

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->b(I)V

    .line 3405
    if-eqz p2, :cond_0

    .line 3406
    iget-object v0, p0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    const v1, 0x7f09033d

    new-instance v2, Lelg$8;

    invoke-direct {v2, p0}, Lelg$8;-><init>(Lelg;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a(ILandroid/view/View$OnClickListener;)V

    .line 3415
    :cond_0
    iget-object v1, p0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    if-eqz p2, :cond_2

    const v0, 0x7f0902d7

    :goto_0
    new-instance v2, Lelg$9;

    invoke-direct {v2, p0, p2, p1}, Lelg$9;-><init>(Lelg;ZLandroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->b(ILandroid/view/View$OnClickListener;)V

    .line 3430
    iget-object v0, p0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->show()V

    .line 3259
    :cond_1
    :goto_1
    return-void

    .line 3415
    :cond_2
    const v0, 0x7f09217c

    goto :goto_0

    .line 3262
    :cond_3
    iget-object v1, p0, Lelg;->f:Ljava/lang/String;

    .line 3264
    iget-object v0, p0, Lelg;->g:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3266
    const-class v0, Libn;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libn;

    iget-object v2, p0, Lelg;->f:Ljava/lang/String;

    new-instance v3, Lelg$4;

    invoke-direct {v3, p0, v1, p1}, Lelg$4;-><init>(Lelg;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-interface {v0, v2, v3}, Libn;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 3296
    const/4 v0, 0x0

    iput-object v0, p0, Lelg;->f:Ljava/lang/String;

    goto :goto_1
.end method

.method private static a(Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;)Z
    .locals 4
    .param p0, "object"    # Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;

    .prologue
    const/4 v0, 0x0

    .line 441
    if-nez p0, :cond_0

    .line 449
    :goto_0
    return v0

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    const-string/jumbo v1, "share"

    const/4 v2, 0x0

    const-string/jumbo v3, "TaoPasswordObject url is empty"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lelg;Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;)Z
    .locals 1
    .param p0, "x0"    # Lelg;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;

    .prologue
    .line 55
    invoke-static {p1}, Lelg;->a(Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 9
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 456
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v4

    .line 459
    :cond_1
    const/4 v2, 0x0

    .line 460
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v5

    const-string/jumbo v6, "ding_word"

    const-string/jumbo v7, "ding_word_parten"

    .line 461
    invoke-virtual {v5, v6, v7}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 464
    :try_start_0
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 470
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 471
    sget-object v2, Lelg;->c:Ljava/util/regex/Pattern;

    .line 473
    :cond_3
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 474
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    goto :goto_0

    .line 465
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "im"

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "Pattern.compile failed, error="

    aput-object v8, v7, v4

    const/4 v4, 0x1

    .line 467
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 466
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b(Lelg;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lelg;

    .prologue
    .line 55
    iget-object v0, p0, Lelg;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 191
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    const-string/jumbo v9, "share_invitation_listener"

    .line 192
    invoke-virtual {v8, v9, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 193
    .local v4, "isSwitchOn":Z
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v8

    const-string/jumbo v9, "f_share_invitation_listener"

    .line 1083
    invoke-virtual {v8, v9, v12}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 195
    .local v3, "isFeatureOn":Z
    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-object v7

    .line 199
    :cond_1
    iget-object v8, p0, Lelg;->a:Landroid/content/ClipboardManager;

    if-eqz v8, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 204
    .local v0, "clipData":Landroid/content/ClipData;
    :try_start_0
    iget-object v8, p0, Lelg;->a:Landroid/content/ClipboardManager;

    invoke-virtual {v8}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 210
    :goto_1
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    .line 215
    .local v1, "clipDescription":Landroid/content/ClipDescription;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 216
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, "label":Ljava/lang/String;
    iget-object v8, p0, Lelg;->b:Ljava/lang/String;

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 222
    .end local v6    # "label":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 223
    invoke-virtual {v0, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    .line 224
    .local v5, "item":Landroid/content/ClipData$Item;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 225
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 205
    .end local v1    # "clipDescription":Landroid/content/ClipDescription;
    .end local v5    # "item":Landroid/content/ClipData$Item;
    :catch_0
    move-exception v2

    .line 207
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "share"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const-string/jumbo v10, "getClipText error="

    aput-object v10, v9, v11

    .line 208
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 207
    invoke-static {v8, v7, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic c(Lelg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lelg;

    .prologue
    .line 55
    invoke-direct {p0}, Lelg;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->dismiss()V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 438
    :cond_0
    return-void
.end method

.method static synthetic d(Lelg;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lelg;

    .prologue
    .line 55
    iget-object v0, p0, Lelg;->g:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic e(Lelg;)V
    .locals 6
    .param p0, "x0"    # Lelg;

    .prologue
    const/4 v5, 0x0

    .line 55
    .line 4232
    iget-object v0, p0, Lelg;->a:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    .line 4234
    :try_start_0
    iget-object v0, p0, Lelg;->a:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 4235
    iget-object v0, p0, Lelg;->a:Landroid/content/ClipboardManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 4236
    iget-object v0, p0, Lelg;->a:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4240
    :cond_0
    :goto_0
    return-void

    .line 4237
    :catch_0
    move-exception v0

    .line 4238
    const-string/jumbo v1, "share"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "clearPrimaryClipSilently error="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 4239
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4238
    invoke-static {v1, v5, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f(Lelg;)V
    .locals 0
    .param p0, "x0"    # Lelg;

    .prologue
    .line 55
    invoke-direct {p0}, Lelg;->c()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/net/Uri;Z)V
    .locals 16
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "checkExpired"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 317
    const-string/jumbo v12, "code"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "code":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 319
    const-string/jumbo v12, "share"

    const/4 v13, 0x0

    const-string/jumbo v14, "TaoPasswordObject url code is empty"

    invoke-static {v12, v13, v14}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :goto_0
    return-void

    .line 322
    :cond_0
    if-eqz p3, :cond_1

    .line 323
    const-string/jumbo v12, "expired"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 324
    .local v8, "expiredTimeStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 327
    :try_start_0
    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    .line 328
    .local v4, "currentTimeMillis":J
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 329
    .local v6, "expiredTimeMillis":J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-lez v12, :cond_1

    cmp-long v12, v6, v4

    if-gez v12, :cond_1

    .line 331
    invoke-direct/range {p0 .. p1}, Lelg;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v4    # "currentTimeMillis":J
    .end local v6    # "expiredTimeMillis":J
    :catch_0
    move-exception v12

    .line 339
    .end local v8    # "expiredTimeStr":Ljava/lang/String;
    :cond_1
    const-string/jumbo v12, "dest"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "dest":Ljava/lang/String;
    const-string/jumbo v12, "icon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 341
    .local v10, "icon":Ljava/lang/String;
    const-string/jumbo v12, "nick"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 342
    .local v11, "nickName":Ljava/lang/String;
    const-string/jumbo v12, "cname"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 344
    .local v9, "groupName":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lelg;->c()V

    .line 346
    new-instance v12, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 347
    move-object/from16 v0, p0

    iget-object v12, v0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 1091
    iget-object v13, v12, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;

    .line 1131
    iput-object v10, v13, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->c:Ljava/lang/String;

    .line 1092
    iget-object v12, v12, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;

    const/4 v13, 0x1

    .line 2131
    iput v13, v12, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->a:I

    .line 348
    move-object/from16 v0, p0

    iget-object v12, v0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    invoke-virtual {v12, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->setTitle(Ljava/lang/CharSequence;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v12, v0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    const v13, 0x7f090fae

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 3108
    iget-object v12, v12, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;

    .line 3131
    iput-object v13, v12, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->e:Ljava/lang/CharSequence;

    .line 350
    move-object/from16 v0, p0

    iget-object v12, v0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    const v13, 0x7f09033d

    new-instance v14, Lelg$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lelg$5;-><init>(Lelg;)V

    invoke-virtual {v12, v13, v14}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a(ILandroid/view/View$OnClickListener;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v12, v0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    const v13, 0x7f090faf

    new-instance v14, Lelg$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v2, v3, v1}, Lelg$6;-><init>(Lelg;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v12, v13, v14}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->b(ILandroid/view/View$OnClickListener;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v12, v0, Lelg;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    invoke-virtual {v12}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->show()V

    goto/16 :goto_0
.end method

.method public onPrimaryClipChanged()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 479
    invoke-direct {p0}, Lelg;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lelg;->f:Ljava/lang/String;

    .line 480
    iget-object v0, p0, Lelg;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 481
    iget-object v0, p0, Lelg;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 482
    return-void
.end method
