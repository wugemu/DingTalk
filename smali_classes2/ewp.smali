.class public Lewp;
.super Ljava/lang/Object;
.source "TeleConfTools.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lewp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lewp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rate"    # F

    .prologue
    .line 221
    const/4 v4, -0x1

    .line 223
    .local v4, "originVolume":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 226
    :try_start_0
    const-string/jumbo v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 227
    .local v1, "mAudioManager":Landroid/media/AudioManager;
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 228
    .local v2, "maxVolum":I
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 229
    int-to-float v5, v2

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 230
    .local v3, "neededVolum":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 231
    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v3, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1    # "mAudioManager":Landroid/media/AudioManager;
    .end local v2    # "maxVolum":I
    .end local v3    # "neededVolum":I
    :goto_0
    return v4

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Z)I
    .locals 1
    .param p0, "showEncrypt"    # Z

    .prologue
    .line 329
    if-eqz p0, :cond_0

    invoke-static {}, Lewx;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    sget v0, Leuj$l;->dt_conf_voip_call_v2_encrypt:I

    .line 333
    :goto_0
    return v0

    :cond_0
    sget v0, Leuj$l;->dt_conference_start_btntitle_voip_ext:I

    goto :goto_0
.end method

.method public static a(I)Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;
    .locals 2
    .param p0, "errCode"    # I

    .prologue
    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "stateType":Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallingTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 299
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p0, v1, :cond_2

    .line 300
    :cond_0
    sget-object v0, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->STATE_CALLING_TIMEOUT:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    .line 321
    :cond_1
    :goto_0
    return-object v0

    .line 301
    :cond_2
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInPSTN:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p0, v1, :cond_3

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInConference:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 302
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p0, v1, :cond_3

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInBusinessConf:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 303
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p0, v1, :cond_3

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInVideoConf:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 304
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p0, v1, :cond_3

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInVoIP:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 305
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p0, v1, :cond_3

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalBusy:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 306
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p0, v1, :cond_4

    .line 307
    :cond_3
    sget-object v0, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->STATE_BUSY:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    goto :goto_0

    .line 308
    :cond_4
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalReject:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p0, v1, :cond_5

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInLive:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 309
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p0, v1, :cond_5

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalRemoteDoNotDisturb:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 310
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p0, v1, :cond_5

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 311
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p0, v1, :cond_5

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallingTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 312
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p0, v1, :cond_5

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalInconvenience:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 313
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p0, v1, :cond_5

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalArriveImmediately:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 314
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p0, v1, :cond_5

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallbackLater:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 315
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p0, v1, :cond_6

    .line 316
    :cond_5
    sget-object v0, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->STATE_REJECTED:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    goto :goto_0

    .line 317
    :cond_6
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCancel:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p0, v1, :cond_1

    .line 318
    sget-object v0, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->STATE_CANCELED:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    goto/16 :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/ConfRecordItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v1, "recordItemList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 359
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 360
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v0, :cond_0

    .line 361
    new-instance v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-direct {v3, v0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;-><init>(Lcom/alibaba/wukong/im/Message;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    .end local v0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    return-object v1
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 96
    :try_start_0
    sget-object v1, Lewp;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 97
    sget-object v1, Lewp;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 98
    const/4 v1, 0x0

    sput-object v1, Lewp;->b:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 101
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 54
    sget-object v2, Lewp;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 67
    :goto_0
    return-void

    .line 58
    :cond_0
    :try_start_0
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 59
    .local v1, "pm":Landroid/os/PowerManager;
    const v2, 0x30000006

    sget-object v3, Lewp;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 63
    sput-object v2, Lewp;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v1    # "pm":Landroid/os/PowerManager;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originalVolume"    # I

    .prologue
    .line 240
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 242
    if-lez p1, :cond_0

    .line 244
    :try_start_0
    const-string/jumbo v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 245
    .local v2, "mAudioManager":Landroid/media/AudioManager;
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 246
    .local v0, "curVolume":I
    if-eq v0, p1, :cond_0

    .line 247
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v0    # "curVolume":I
    .end local v2    # "mAudioManager":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeOut"    # J

    .prologue
    const-wide/16 v6, 0xbb8

    .line 70
    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-gtz v3, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 77
    :try_start_0
    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 78
    .local v1, "pm":Landroid/os/PowerManager;
    const v3, 0x30000006

    sget-object v4, Lewp;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 82
    .local v2, "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v2    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 106
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SENDTO"

    const-string/jumbo v3, "smsto:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 110
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    const-string/jumbo v2, "sms_body"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 5
    .param p0, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 414
    if-nez p0, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 419
    .local v0, "decorView":Landroid/view/View;
    const/4 v2, 0x2

    .line 420
    .local v2, "uiOptions":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    .line 421
    const/16 v2, 0x402

    .line 423
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_3

    .line 424
    or-int/lit16 v2, v2, 0x800

    .line 426
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 428
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getImmersiveStatusBarPlaceholderId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 429
    .local v1, "placeholder":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 430
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;ZZZ)V
    .locals 7
    .param p0, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p1, "beLandscape"    # Z
    .param p2, "fullScreen"    # Z
    .param p3, "withStatusBar"    # Z

    .prologue
    const/16 v6, 0x200

    const/16 v5, 0x100

    .line 369
    if-nez p0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 373
    .local v2, "window":Landroid/view/Window;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_3

    .line 374
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 375
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz p2, :cond_2

    .line 377
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 378
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 379
    invoke-virtual {v2, v6}, Landroid/view/Window;->addFlags(I)V

    .line 380
    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 402
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getImmersiveStatusBarPlaceholderId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 403
    .local v1, "placeholder":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 404
    if-eqz p3, :cond_5

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 406
    :cond_1
    if-eqz p1, :cond_6

    .line 407
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 382
    .end local v1    # "placeholder":Landroid/view/View;
    .restart local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 383
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 384
    invoke-virtual {v2, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 385
    invoke-virtual {v2, v5}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    .line 388
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    if-eqz p2, :cond_4

    .line 395
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x1706

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 399
    :cond_4
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x500

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 404
    .restart local v1    # "placeholder":Landroid/view/View;
    :cond_5
    const/16 v3, 0x8

    goto :goto_2

    .line 409
    :cond_6
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public static b(Z)I
    .locals 1
    .param p0, "showEncrypt"    # Z

    .prologue
    .line 348
    invoke-static {}, Lewx;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    sget v0, Leuj$l;->dt_conf_video_call_encrypt:I

    .line 352
    :goto_0
    return v0

    :cond_0
    sget v0, Leuj$l;->dt_conference_start_btntitle_video:I

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "phoneNumber":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 205
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lewp;->d(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    :try_start_0
    const-string/jumbo v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 208
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_0

    .line 209
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 217
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-object v1

    .line 211
    :catch_0
    move-exception v2

    .line 212
    .local v2, "secEx":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 256
    if-nez p0, :cond_0

    .line 257
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 259
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.dingtalk.telebase.action.CONF_INCOMING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "call_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 262
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    if-nez p0, :cond_0

    .line 126
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 128
    :cond_0
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 129
    .local v0, "pm":Landroid/os/PowerManager;
    if-eqz v0, :cond_2

    .line 130
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 131
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 136
    :goto_0
    return v1

    .line 133
    :cond_1
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    goto :goto_0

    .line 136
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 265
    if-nez p0, :cond_0

    .line 266
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 268
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.dingtalk.telebase.action.CONF_ENDING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "call_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 271
    return-void
.end method

.method public static c()Z
    .locals 3

    .prologue
    .line 283
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->g()Z

    move-result v0

    .line 284
    .local v0, "isAnchorRunning":Z
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->b()Z

    move-result v1

    .line 285
    .local v1, "isLivePlaying":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 143
    const-string/jumbo v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 144
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 147
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static d()I
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-static {v0}, Lewp;->a(Z)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    if-nez p0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v2

    .line 157
    :cond_1
    :try_start_0
    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 159
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 160
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    move v2, v3

    .line 165
    goto :goto_0

    .line 167
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 168
    .local v0, "secEx":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public static e()I
    .locals 1

    .prologue
    .line 338
    invoke-static {}, Lewx;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Leuj$l;->dt_conference_history_conferencetype_voipoto_conftitle_ext:I

    :goto_0
    return v0

    :cond_0
    sget v0, Leuj$l;->dt_conference_history_conferencetype_voipoto_conftitle:I

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 275
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 278
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.android.babylon.action.voipstart"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 280
    return-void
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 289
    if-nez p0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v0

    .line 292
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;ZZ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 293
    invoke-static {}, Lcms;->d()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
