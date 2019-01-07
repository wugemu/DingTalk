.class public abstract Lcuz;
.super Lctv;
.source "EncryptMsgViewHolder.java"


# instance fields
.field private S:Landroid/widget/ImageView;

.field protected a:Landroid/widget/TextView;

.field private b:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 37
    iput-object v0, p0, Lcuz;->a:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcuz;->b:Landroid/widget/ProgressBar;

    .line 39
    iput-object v0, p0, Lcuz;->S:Landroid/widget/ImageView;

    .line 43
    return-void
.end method

.method static synthetic a(Lcuz;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcuz;

    .prologue
    .line 34
    iget-object v0, p0, Lcuz;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcuz;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V
    .locals 4
    .param p0, "x0"    # Lcuz;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "x2"    # Landroid/app/Activity;

    .prologue
    .line 34
    .line 3151
    iget-object v0, p0, Lcuz;->S:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3152
    iget-object v0, p0, Lcuz;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3153
    iget-object v0, p0, Lcuz;->a:Landroid/widget/TextView;

    new-instance v1, Lcuz$4;

    invoke-direct {v1, p0, p1, p2}, Lcuz$4;-><init>(Lcuz;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    return-void
.end method

.method static synthetic a(Lcuz;Lcom/alibaba/wukong/im/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcuz;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcuz;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcuz;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcuz;

    .prologue
    .line 34
    iget-object v0, p0, Lcuz;->S:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcuz;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V
    .locals 2
    .param p0, "x0"    # Lcuz;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "x2"    # Landroid/app/Activity;

    .prologue
    .line 34
    .line 4111
    iget-object v0, p0, Lcuz;->S:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4112
    iget-object v0, p0, Lcuz;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4113
    new-instance v0, Lcuz$3;

    invoke-direct {v0, p0, p1, p2}, Lcuz$3;-><init>(Lcuz;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V

    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->resetEncryptStatusAndContent(Lcom/alibaba/wukong/Callback;)V

    .line 34
    return-void
.end method

.method private b(Lcom/alibaba/wukong/im/Message;)Z
    .locals 8
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 97
    iget-object v1, p0, Lcuz;->b:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v1, v5

    .line 107
    :goto_0
    return v1

    .line 100
    :cond_1
    const-wide/16 v2, 0x0

    .line 102
    .local v2, "tag":J
    :try_start_0
    iget-object v1, p0, Lcuz;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 107
    :goto_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    move v1, v4

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "isMessageBinderToViewHolder get tag exception : "

    aput-object v7, v6, v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3018
    const-string/jumbo v7, "im"

    invoke-static {v1, v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move v1, v5

    .line 107
    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    iget-object v0, p0, Lcuz;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcuz;->a:Landroid/widget/TextView;

    .line 48
    sget v0, Lctk$f;->decrypt_progress:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcuz;->b:Landroid/widget/ProgressBar;

    .line 49
    sget v0, Lctk$f;->decrypt_retry:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcuz;->S:Landroid/widget/ImageView;

    .line 50
    return-void
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 54
    iget-object v1, p0, Lcuz;->b:Landroid/widget/ProgressBar;

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 55
    iget-object v1, p0, Lcuz;->b:Landroid/widget/ProgressBar;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 1290
    if-nez p2, :cond_0

    move v0, v6

    .line 60
    .local v0, "code":I
    :goto_0
    invoke-static {p2}, Ldkc;->w(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-nez v1, :cond_6

    .line 61
    iget-object v1, p0, Lcuz;->S:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object v1, p0, Lcuz;->a:Landroid/widget/TextView;

    sget v2, Lctk$i;->dt_message_decrypt_error_no_orgId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 94
    :goto_1
    return-void

    .line 1294
    .end local v0    # "code":I
    :cond_0
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v1

    .line 1295
    if-nez v1, :cond_1

    .line 1296
    const-string/jumbo v1, "crypto"

    const-string/jumbo v7, "decrypt message"

    new-array v8, v2, [Ljava/lang/String;

    const-string/jumbo v9, "getDecryptFailDescCode localExtras == null"

    aput-object v9, v8, v6

    const-string/jumbo v9, "; messageId:"

    aput-object v9, v8, v4

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 1297
    goto :goto_0

    .line 1300
    :cond_1
    const-string/jumbo v7, "decrypt_view_code"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1301
    const-string/jumbo v7, "crypto"

    const-string/jumbo v8, "decrypt message"

    new-array v9, v3, [Ljava/lang/String;

    const-string/jumbo v10, "getDecryptFailDescCode errCode:"

    aput-object v10, v9, v6

    aput-object v1, v9, v4

    const-string/jumbo v10, "; messageId:"

    aput-object v10, v9, v5

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1303
    sget-object v7, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyNotExist:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v7}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/dbappsecurity/utl/ErrorMsg$Err;->KeyLoading:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 1304
    invoke-virtual {v7}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v1, v5

    .line 1319
    :goto_2
    const-string/jumbo v7, "crypto"

    const-string/jumbo v8, "decrypt message"

    new-array v9, v3, [Ljava/lang/String;

    const-string/jumbo v10, "getDecryptFailDescCode ret:"

    aput-object v10, v9, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    const-string/jumbo v10, "; messageId:"

    aput-object v10, v9, v5

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1320
    goto/16 :goto_0

    .line 1307
    :cond_3
    const-string/jumbo v7, "-506"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v1, v2

    .line 1309
    goto :goto_2

    .line 1310
    :cond_4
    sget-object v7, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_Format_is_not_valid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v7}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    .line 1312
    goto :goto_2

    :cond_5
    move v1, v4

    .line 1315
    goto :goto_2

    .line 64
    .restart local v0    # "code":I
    :cond_6
    if-eq v5, v0, :cond_7

    if-nez v0, :cond_8

    .line 65
    :cond_7
    iget-object v1, p0, Lcuz;->S:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v1, p0, Lcuz;->a:Landroid/widget/TextView;

    sget v2, Lctk$i;->dt_message_decrypt_error_no_key:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 67
    iget-object v1, p0, Lcuz;->S:Landroid/widget/ImageView;

    new-instance v2, Lcuz$1;

    invoke-direct {v2, p0, p2, p1}, Lcuz$1;-><init>(Lcuz;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 74
    :cond_8
    if-ne v3, v0, :cond_9

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v3, "f_encrypt_format_error_retry"

    .line 2083
    invoke-virtual {v1, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 74
    if-eqz v1, :cond_9

    .line 75
    iget-object v1, p0, Lcuz;->S:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcuz;->a:Landroid/widget/TextView;

    sget v2, Lctk$i;->im_encrypt_decrypt_error_prefix:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 77
    iget-object v1, p0, Lcuz;->S:Landroid/widget/ImageView;

    new-instance v2, Lcuz$2;

    invoke-direct {v2, p0, p2, p1}, Lcuz$2;-><init>(Lcuz;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 86
    :cond_9
    iget-object v1, p0, Lcuz;->S:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    if-ne v2, v0, :cond_a

    .line 88
    iget-object v1, p0, Lcuz;->a:Landroid/widget/TextView;

    sget v2, Lctk$i;->dt_message_decrypt_error_dismission:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 90
    :cond_a
    iget-object v1, p0, Lcuz;->a:Landroid/widget/TextView;

    sget v2, Lctk$i;->im_encrypt_decrypt_error_prefix:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .end local v0    # "code":I
    :cond_b
    move v1, v6

    goto/16 :goto_2
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcuz;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send:I

    invoke-static {v2}, Lcuz;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcuz;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcuz;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcuz;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcuz;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
