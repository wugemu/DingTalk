.class public final Lemf;
.super Ljava/lang/Object;
.source "ShortCutUtils.java"


# static fields
.field private static a:Lemf;


# instance fields
.field private b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lemf;

    invoke-direct {v0}, Lemf;-><init>()V

    sput-object v0, Lemf;->a:Lemf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 6
    .param p0, "encodeUid"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-static {p0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v0

    .line 92
    .local v0, "codedUid":Lcom/laiwang/protocol/media/MediaId;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaId;->getSequence()J
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    .line 100
    .end local v0    # "codedUid":Lcom/laiwang/protocol/media/MediaId;
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return-wide v4

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .line 100
    .end local v1    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_0
    :goto_1
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 95
    :catch_1
    move-exception v1

    .line 96
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lemf;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 1
    .param p0, "x0"    # Lemf;

    .prologue
    .line 65
    iget-object v0, p0, Lemf;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lemf;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 0
    .param p0, "x0"    # Lemf;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .prologue
    .line 65
    iput-object p1, p0, Lemf;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-object p1
.end method

.method public static a()Lemf;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lemf;->a:Lemf;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string/jumbo v1, "org_request_from_source_type"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v1, "choose_people_action"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const-string/jumbo v1, "hide_org_external"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    const-string/jumbo v1, "can_choose_current_user"

    const-string/jumbo v2, "can_choose_current_user"

    .line 83
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 85
    return-void
.end method

.method static synthetic a(Lemf;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;)V
    .locals 4
    .param p0, "x0"    # Lemf;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    .prologue
    .line 65
    .line 1215
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    .line 1216
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v2, Lemf$3;

    invoke-direct {v2, p0, p1}, Lemf$3;-><init>(Lemf;Landroid/app/Activity;)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1215
    invoke-virtual {v1, p2, p3, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V

    .line 65
    return-void
.end method

.method private static b(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 372
    const/4 v7, 0x0

    .line 373
    .local v7, "imgPath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 374
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 375
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    :try_start_0
    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 384
    .local v8, "index":I
    :goto_0
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 386
    .end local v8    # "index":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 388
    :cond_1
    return-object v7

    .line 382
    :catch_0
    move-exception v0

    const/4 v8, 0x1

    .restart local v8    # "index":I
    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 356
    if-eqz p2, :cond_0

    .line 357
    :try_start_0
    const-string/jumbo v2, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 367
    :cond_0
    :goto_0
    return-object v1

    .line 360
    :cond_1
    invoke-static {p1, p2}, Lemf;->b(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;JLcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J
    .param p4, "object"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 190
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lemf$2;

    invoke-direct {v1, p0, p1, p4}, Lemf$2;-><init>(Lemf;Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;)V

    new-array v6, v5, [Ljava/lang/Long;

    const/4 v3, 0x0

    .line 210
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v3

    move-object v3, v2

    move-object v4, v2

    .line 191
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    .line 211
    return-void
.end method

.method public final b(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 104
    const-string/jumbo v0, "user_id_string"

    invoke-static {p2, v0}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lemf;->a(Ljava/lang/String;)J

    move-result-wide v10

    .line 105
    .local v10, "uid":J
    cmp-long v0, v10, v6

    if-nez v0, :cond_0

    .line 106
    const v0, 0x7f09209c

    invoke-static {v0}, Lcms;->a(I)V

    .line 107
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 142
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string/jumbo v0, "send_user_id"

    invoke-static {p2, v0}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lemf;->a(Ljava/lang/String;)J

    move-result-wide v8

    .line 112
    .local v8, "sendUid":J
    cmp-long v0, v8, v6

    if-nez v0, :cond_1

    .line 113
    const-string/jumbo v0, "send_user_id"

    invoke-static {p2, v0, v6, v7}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v8

    .line 116
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_2

    .line 117
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 120
    :cond_2
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lemf$1;

    invoke-direct {v1, p0, p1}, Lemf$1;-><init>(Lemf;Landroid/app/Activity;)V

    new-array v6, v5, [Ljava/lang/Long;

    const/4 v3, 0x0

    .line 140
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v3

    move-object v3, v2

    move-object v4, v2

    .line 121
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    goto :goto_0
.end method
