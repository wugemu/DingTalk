.class public Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
.super Ljava/lang/Object;
.source "ShareDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;,
        Lcom/alibaba/android/dingtalkim/models/ShareDelegate$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Landroid/app/Activity;

.field public k:Lcom/alibaba/doraemon/eventbus/AdapterCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/eventbus/AdapterCallback",
            "<",
            "Lcma;",
            ">;"
        }
    .end annotation
.end field

.field public l:Z

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:[B

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:[B

.field private u:Ljava/lang/String;

.field private v:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private w:Lcom/alibaba/doraemon/eventbus/AdapterCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/eventbus/AdapterCallback",
            "<",
            "Lcma;",
            ">;"
        }
    .end annotation
.end field

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string/jumbo v7, "[ShareDelegate] "

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->m:Ljava/lang/String;

    .line 90
    const-string/jumbo v7, "https://static.dingtalk.com/media/lALPBbCc1cHuh2xgYA_96_96.png"

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->n:Ljava/lang/String;

    .line 110
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->i:I

    .line 121
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->x:Z

    .line 122
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->l:Z

    .line 125
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    .line 126
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    if-nez v7, :cond_0

    .line 127
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "activity can not null"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 129
    :cond_0
    if-eqz p2, :cond_1

    .line 130
    const-string/jumbo v7, "android.intent.ding.EXTRA_MESSAGE_APP_PACKAGE_NAME"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->b:Ljava/lang/String;

    .line 131
    const-string/jumbo v7, "android.intent.ding.EXTRA_MESSAGE_APP_SIGNATURE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->c:Ljava/lang/String;

    .line 132
    const-string/jumbo v7, "android.intent.ding.EXTRA_MESSAGE_APP_ID"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->d:Ljava/lang/String;

    .line 133
    const-string/jumbo v7, "android.intent.ding.EXTRA_MESSAGE_SDK_VERSION"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 134
    .local v6, "sdkVersion":I
    const v7, 0x1339e65

    if-ge v6, v7, :cond_2

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_2

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->x:Z

    .line 136
    const v7, 0x1339e65

    if-ge v6, v7, :cond_3

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_3

    const-string/jumbo v7, "im_intent_key_is_new_task"

    const/4 v8, 0x0

    .line 137
    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 138
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v7

    const-string/jumbo v8, "f_im_share_new_task_move_to_back"

    invoke-virtual {v7, v8}, Lchx;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->l:Z

    .line 139
    const-string/jumbo v7, "im"

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "[ShareDelegate] "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, " ShareSDKVersion "

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$Builder;->fromBundle(Landroid/os/Bundle;)Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;

    move-result-object v1

    .line 142
    .local v1, "ddMediaMessage":Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;
    if-eqz v1, :cond_6

    .line 143
    iget-object v5, v1, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mMediaObject:Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;

    .line 144
    .local v5, "iMediaObject":Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;
    if-eqz v5, :cond_5

    .line 145
    invoke-interface {v5}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;->type()I

    move-result v7

    iput v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->i:I

    .line 146
    const-string/jumbo v7, "im"

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "[ShareDelegate] "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, " shareType "

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget v11, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->i:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->i:I

    packed-switch v7, :pswitch_data_0

    .line 189
    const-string/jumbo v7, "im"

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "[ShareDelegate] "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, " shareInfo not valid"

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .end local v1    # "ddMediaMessage":Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;
    .end local v5    # "iMediaObject":Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;
    .end local v6    # "sdkVersion":I
    :cond_1
    :goto_2
    return-void

    .line 134
    .restart local v6    # "sdkVersion":I
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 138
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 149
    .restart local v1    # "ddMediaMessage":Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;
    .restart local v5    # "iMediaObject":Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;
    :pswitch_0
    iget-object v2, v1, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mMediaObject:Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;

    check-cast v2, Lcom/android/dingtalk/share/ddsharemodule/message/DDTextMessage;

    .line 150
    .local v2, "ddTextMessage":Lcom/android/dingtalk/share/ddsharemodule/message/DDTextMessage;
    iget-object v7, v2, Lcom/android/dingtalk/share/ddsharemodule/message/DDTextMessage;->mText:Ljava/lang/String;

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->f:Ljava/lang/String;

    goto :goto_2

    .line 153
    .end local v2    # "ddTextMessage":Lcom/android/dingtalk/share/ddsharemodule/message/DDTextMessage;
    :pswitch_1
    iget-object v0, v1, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mMediaObject:Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;

    check-cast v0, Lcom/android/dingtalk/share/ddsharemodule/message/DDImageMessage;

    .line 154
    .local v0, "ddImageMessage":Lcom/android/dingtalk/share/ddsharemodule/message/DDImageMessage;
    iget-object v7, v0, Lcom/android/dingtalk/share/ddsharemodule/message/DDImageMessage;->mImageUrl:Ljava/lang/String;

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->o:Ljava/lang/String;

    .line 155
    iget-object v7, v0, Lcom/android/dingtalk/share/ddsharemodule/message/DDImageMessage;->mImagePath:Ljava/lang/String;

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->p:Ljava/lang/String;

    .line 156
    iget-object v7, v1, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mThumbUrl:Ljava/lang/String;

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->e:Ljava/lang/String;

    .line 157
    iget-object v7, v0, Lcom/android/dingtalk/share/ddsharemodule/message/DDImageMessage;->mImageData:[B

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->q:[B

    .line 158
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->o:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->e:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->q:[B

    if-eqz v7, :cond_1

    .line 159
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "[share-delegate]-Image-Data"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {}, Lcms;->u()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->r:Ljava/lang/String;

    .line 1883
    invoke-static {}, Lddq;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v7

    .line 160
    new-instance v8, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$1;

    invoke-direct {v8, p0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$1;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)V

    invoke-interface {v7, v8}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 170
    .end local v0    # "ddImageMessage":Lcom/android/dingtalk/share/ddsharemodule/message/DDImageMessage;
    :pswitch_2
    iget-object v3, v1, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mMediaObject:Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;

    check-cast v3, Lcom/android/dingtalk/share/ddsharemodule/message/DDWebpageMessage;

    .line 171
    .local v3, "ddWebpageMessage":Lcom/android/dingtalk/share/ddsharemodule/message/DDWebpageMessage;
    iget-object v7, v3, Lcom/android/dingtalk/share/ddsharemodule/message/DDWebpageMessage;->mUrl:Ljava/lang/String;

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->h:Ljava/lang/String;

    .line 172
    iget-object v7, v1, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mContent:Ljava/lang/String;

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->f:Ljava/lang/String;

    .line 173
    iget-object v7, v1, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mTitle:Ljava/lang/String;

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->g:Ljava/lang/String;

    .line 174
    iget-object v7, v1, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mThumbUrl:Ljava/lang/String;

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->e:Ljava/lang/String;

    .line 175
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->e:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 176
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->e:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->e:Ljava/lang/String;

    .line 178
    :cond_4
    iget-object v7, v1, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mThumbData:[B

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->t:[B

    goto/16 :goto_2

    .line 181
    .end local v3    # "ddWebpageMessage":Lcom/android/dingtalk/share/ddsharemodule/message/DDWebpageMessage;
    :pswitch_3
    iget-object v4, v1, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mMediaObject:Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;

    check-cast v4, Lcom/android/dingtalk/share/ddsharemodule/message/DDZhiFuBaoMesseage;

    .line 182
    .local v4, "ddZhiFuBaoMesseage":Lcom/android/dingtalk/share/ddsharemodule/message/DDZhiFuBaoMesseage;
    iget-object v7, v4, Lcom/android/dingtalk/share/ddsharemodule/message/DDZhiFuBaoMesseage;->mUrl:Ljava/lang/String;

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->h:Ljava/lang/String;

    .line 183
    iget-object v7, v1, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mContent:Ljava/lang/String;

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->f:Ljava/lang/String;

    .line 184
    iget-object v7, v1, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mTitle:Ljava/lang/String;

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->g:Ljava/lang/String;

    .line 185
    iget-object v7, v1, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mThumbUrl:Ljava/lang/String;

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->e:Ljava/lang/String;

    .line 186
    iget-object v7, v1, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mThumbData:[B

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->t:[B

    goto/16 :goto_2

    .line 193
    .end local v4    # "ddZhiFuBaoMesseage":Lcom/android/dingtalk/share/ddsharemodule/message/DDZhiFuBaoMesseage;
    :cond_5
    const-string/jumbo v7, "im"

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "[ShareDelegate] "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, " iMediaObject is null"

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 196
    .end local v5    # "iMediaObject":Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;
    :cond_6
    const-string/jumbo v7, "im"

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "[ShareDelegate] "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, " ddMediaMessage is null"

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/doraemon/eventbus/AdapterCallback;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
    .param p1, "x1"    # Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->k:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->u:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 972
    if-nez p0, :cond_0

    .line 977
    :goto_0
    return-void

    .line 975
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "im_action_move_task_to_back"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 976
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "errCode"    # I
    .param p3, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 838
    .line 4872
    new-instance v1, Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Resp;

    invoke-direct {v1}, Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Resp;-><init>()V

    .line 4873
    iput p2, v1, Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Resp;->mErrCode:I

    .line 4874
    iput-object p3, v1, Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Resp;->mErrStr:Ljava/lang/String;

    .line 4875
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4876
    const-string/jumbo v2, "android.intent.ding.EXTRA_MESSAGE_APP_PACKAGE_NAME"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4877
    invoke-virtual {v1, v0}, Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Resp;->toBundle(Landroid/os/Bundle;)V

    .line 5013
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p0, p1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5014
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5015
    new-instance v2, Landroid/content/ComponentName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".ddshare.DDShareActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5016
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5017
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5020
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5025
    :cond_0
    :goto_0
    return-void

    .line 5021
    :catch_0
    move-exception v1

    .line 5022
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 5023
    :catch_1
    move-exception v1

    .line 5024
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/alibaba/android/dingtalkim/models/ShareDelegate$a;)V
    .locals 4
    .param p1, "dialogView"    # Landroid/view/View;
    .param p2, "onAlertDialogClickListener"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 520
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 522
    .local v1, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    if-eqz p1, :cond_0

    .line 523
    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 525
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    sget v3, Lctk$i;->cancel:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 526
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    sget v3, Lctk$i;->share_link_dialog_btn:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$20;

    invoke-direct {v3, p0, p2}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$20;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/android/dingtalkim/models/ShareDelegate$a;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 534
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 535
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 536
    .local v0, "alertDialog":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->requestWindowFeature(I)Z

    .line 537
    new-instance v2, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$2;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$2;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 543
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 546
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 88
    .line 6268
    iget v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->i:I

    packed-switch v0, :pswitch_data_0

    .line 6280
    sget-object v0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a:Ljava/lang/String;

    const-string/jumbo v1, "unknown share type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6281
    const-string/jumbo v0, "im"

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "[ShareDelegate] "

    aput-object v2, v1, v9

    const-string/jumbo v2, "showDialog error, unknown shareType"

    aput-object v2, v1, v7

    .line 6282
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6281
    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6278
    :goto_0
    return-void

    .line 6288
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->dialog_external_share_text:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 6291
    sget v0, Lctk$f;->edt_share_say_words:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 6292
    sget v1, Lctk$f;->share_text:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6293
    sget v2, Lctk$f;->share_from:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6294
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    sget v5, Lctk$i;->share_from:I

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->s:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6296
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6297
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6298
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6303
    :goto_1
    new-instance v1, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$14;

    invoke-direct {v1, p0, v0, p1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$14;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Landroid/widget/EditText;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-direct {p0, v3, v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Landroid/view/View;Lcom/alibaba/android/dingtalkim/models/ShareDelegate$a;)V

    goto :goto_0

    .line 6300
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 6315
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->dialog_external_share_image:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 6318
    sget v0, Lctk$f;->share_image:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 6319
    new-instance v1, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$15;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$15;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 6336
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 6338
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->o:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6339
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->o:Ljava/lang/String;

    invoke-interface {v1, v0, v3, v4}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 6350
    :goto_2
    sget v0, Lctk$f;->edt_share_say_words:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 6351
    sget v1, Lctk$f;->share_from:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6352
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    sget v4, Lctk$i;->share_from:I

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->s:Ljava/lang/String;

    aput-object v6, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6354
    new-instance v1, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$16;

    invoke-direct {v1, p0, v0, p1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$16;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Landroid/widget/EditText;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-direct {p0, v2, v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Landroid/view/View;Lcom/alibaba/android/dingtalkim/models/ShareDelegate$a;)V

    goto/16 :goto_0

    .line 6340
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->p:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6341
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->p:Ljava/lang/String;

    invoke-interface {v1, v0, v3, v4}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_2

    .line 6342
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->q:[B

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->r:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 6343
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->r:Ljava/lang/String;

    invoke-interface {v1, v0, v3, v4}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_2

    .line 6345
    :cond_3
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "[ShareDelegate] "

    aput-object v1, v0, v9

    const-string/jumbo v1, " share image, no url or path or data"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6346
    sget-object v1, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6347
    const-string/jumbo v1, "im"

    invoke-static {v1, v4, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6414
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->dialog_external_share_link:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 6417
    sget v0, Lctk$f;->share_title:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6418
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6420
    sget v0, Lctk$f;->share_link_default_icon:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 6421
    sget v1, Lctk$f;->share_link_text_description:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6422
    sget v2, Lctk$f;->share_from:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6423
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    sget v6, Lctk$i;->share_from:I

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->s:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-virtual {v3, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6425
    sget v2, Lctk$f;->edt_share_say_words:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 6427
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 6428
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6434
    :cond_4
    :goto_3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 6435
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 6438
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 6442
    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 6444
    invoke-interface {v1, v0, v3, v4}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 6468
    :cond_5
    :goto_5
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$18;

    invoke-direct {v0, p0, v2, p1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$18;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Landroid/widget/EditText;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-direct {p0, v5, v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Landroid/view/View;Lcom/alibaba/android/dingtalkim/models/ShareDelegate$a;)V

    goto/16 :goto_0

    .line 6429
    :cond_6
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 6430
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 6439
    :catch_0
    move-exception v3

    .line 6440
    invoke-virtual {v3}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    move-object v3, v4

    goto :goto_4

    .line 6447
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->t:[B

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->t:[B

    array-length v1, v1

    if-lez v1, :cond_a

    .line 6448
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->t:[B

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->t:[B

    array-length v3, v3

    invoke-static {v1, v9, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6449
    if-eqz v1, :cond_9

    .line 6450
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 6451
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v1, v4, :cond_8

    .line 6452
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 6454
    :cond_8
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 6457
    :cond_9
    iget v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->i:I

    if-nez v1, :cond_5

    .line 6458
    sget v1, Lctk$e;->alipay_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5

    .line 6462
    :cond_a
    iget v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->i:I

    if-nez v1, :cond_5

    .line 6463
    sget v1, Lctk$e;->alipay_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5

    .line 6268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 88
    .line 9368
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9369
    sget v0, Lctk$i;->loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(I)V

    .line 9370
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 9371
    new-instance v1, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$17;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    const-class v2, Lcma;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newAdapterCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->w:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    .line 9393
    invoke-static {}, Ldsc;->a()Ldsc;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->w:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/eventbus/AdapterCallback;->asInterface()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, v3, v0}, Ldsc;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    .line 9395
    :goto_0
    return-void

    .line 9396
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 88
    .line 7565
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7566
    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7567
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "text"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7568
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "share_in"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 7570
    new-instance v0, Ldiz;

    invoke-direct {v0, p1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 7571
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->s:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7572
    new-instance v1, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$3;

    invoke-direct {v1, p0, p1, p3}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$3;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 8131
    iput-object v1, v0, Ldiz;->b:Ldiz$a;

    .line 8883
    invoke-static {}, Lddq;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    .line 7597
    sget-object v2, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 7598
    new-instance v2, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$4;

    invoke-direct {v2, p0, v0, p2}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$4;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Ldiz;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Ldiz;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
    .param p1, "x1"    # Ldiz;

    .prologue
    const/4 v5, 0x0

    .line 88
    .line 12778
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12779
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->e:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 12781
    :goto_0
    return-void

    .line 12780
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->t:[B

    if-eqz v0, :cond_1

    .line 12781
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->t:[B

    .line 13733
    invoke-static {v0}, Ldiz;->a([B)Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 12783
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->f:Ljava/lang/String;

    const-string/jumbo v4, "https://static.dingtalk.com/media/lALPBbCc1cHuh2xgYA_96_96.png"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method private a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 6
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "extraMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 608
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 609
    .local v1, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "app_id"

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->d:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "image"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "share_in"

    invoke-interface {v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 614
    new-instance v0, Ldiz;

    invoke-direct {v0, p1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 615
    .local v0, "messageSender":Ldiz;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->s:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->u:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    new-instance v3, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$5;

    invoke-direct {v3, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$5;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 2131
    iput-object v3, v0, Ldiz;->b:Ldiz$a;

    .line 2883
    invoke-static {}, Lddq;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    .line 643
    .local v2, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v3, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 644
    new-instance v3, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$6;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$6;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Ldiz;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 689
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1033
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    const/4 v0, 0x1

    .line 1036
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 402
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lebj;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ldjy;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)[B
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->q:[B

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/doraemon/eventbus/AdapterCallback;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
    .param p1, "x1"    # Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->w:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 88
    invoke-static {p0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p3}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 88
    .line 6854
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->x:Z

    if-eqz v0, :cond_0

    .line 6855
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6856
    new-instance v1, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->x:Z

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->l:Z

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;-><init>(ZZ)V

    .line 6857
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;->sharePackage:Ljava/lang/String;

    .line 6858
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->s:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;->shareAppName:Ljava/lang/String;

    .line 6860
    const-string/jumbo v2, "attach_window_action"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 6861
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 6862
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 6863
    :goto_0
    return-void

    .line 6864
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->x:Z

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->l:Z

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;-><init>(ZZ)V

    .line 6865
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;->sharePackage:Ljava/lang/String;

    .line 6866
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->s:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;->shareAppName:Ljava/lang/String;

    .line 6867
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;->doAction(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 6
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "extraMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 716
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 717
    .local v1, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "app_id"

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->d:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "link"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "share_in"

    invoke-interface {v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 721
    new-instance v0, Ldiz;

    invoke-direct {v0, p1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 722
    .local v0, "messageSender":Ldiz;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->s:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->u:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    new-instance v3, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$8;

    invoke-direct {v3, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$8;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 3131
    iput-object v3, v0, Ldiz;->b:Ldiz$a;

    .line 3883
    invoke-static {}, Lddq;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    .line 751
    .local v2, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v3, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 752
    new-instance v3, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Ldiz;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 775
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 88
    .line 6007
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->v:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->v:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6008
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->v:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 88
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 88
    .line 9484
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9485
    sget v0, Lctk$i;->loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(I)V

    .line 9486
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 9487
    new-instance v1, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$19;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$19;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    const-class v2, Lcma;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newAdapterCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->w:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    .line 9513
    invoke-static {}, Ldsc;->a()Ldsc;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->w:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/eventbus/AdapterCallback;->asInterface()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, v3, v0}, Ldsc;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    .line 9514
    :goto_0
    return-void

    .line 9515
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->b(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 88
    .line 9788
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9789
    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9790
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "alipayRedPocket"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9791
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "share_in"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 9794
    new-instance v0, Ldiz;

    invoke-direct {v0, p1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 9795
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->s:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9796
    new-instance v1, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$10;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 10131
    iput-object v1, v0, Ldiz;->b:Ldiz$a;

    .line 10883
    invoke-static {}, Lddq;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    .line 9822
    sget-object v2, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 9823
    new-instance v2, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$12;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$12;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Ldiz;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 88
    iget v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->i:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->b(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 88
    .line 11702
    new-instance v0, Ldiz;

    invoke-direct {v0, p1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 11703
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->s:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11883
    invoke-static {}, Lddq;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    .line 11705
    sget-object v2, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 11706
    new-instance v2, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$7;

    invoke-direct {v2, p0, v0, p2}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$7;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Ldiz;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)[B
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->t:[B

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->k:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->w:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .param p1, "desc"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 980
    .line 6001
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->v:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->v:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6002
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->v:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->cancel()V

    .line 981
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->v:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 982
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->v:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 983
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->v:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 984
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->v:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    new-instance v1, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$13;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 997
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->v:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 998
    return-void
.end method
