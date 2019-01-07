.class public final Lekg$4;
.super Ljava/lang/Object;
.source "MessageNotificationManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lekg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lekg$a;

.field final synthetic c:Lcom/alibaba/wukong/im/Message;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lekg;


# direct methods
.method public constructor <init>(Lekg;JLekg$a;Lcom/alibaba/wukong/im/Message;II)V
    .locals 0
    .param p1, "this$0"    # Lekg;

    .prologue
    .line 1187
    iput-object p1, p0, Lekg$4;->f:Lekg;

    iput-wide p2, p0, Lekg$4;->a:J

    iput-object p4, p0, Lekg$4;->b:Lekg$a;

    iput-object p5, p0, Lekg$4;->c:Lcom/alibaba/wukong/im/Message;

    iput p6, p0, Lekg$4;->d:I

    iput p7, p0, Lekg$4;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1256
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1187
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v8, 0x32

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1187
    check-cast p1, [Ljava/lang/String;

    .line 2192
    iget-wide v0, p0, Lekg$4;->a:J

    iget-object v3, p0, Lekg$4;->b:Lekg$a;

    iget-wide v4, v3, Lekg$a;->a:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 2196
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 2251
    :cond_0
    :goto_0
    return-void

    .line 2200
    :cond_1
    aget-object v0, p1, v6

    .line 2201
    if-eqz v0, :cond_0

    .line 2204
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_2

    .line 2205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2209
    :cond_2
    array-length v1, p1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_b

    .line 2210
    aget-object v1, p1, v7

    .line 2215
    :goto_1
    :try_start_0
    iget-object v3, p0, Lekg$4;->f:Lekg;

    .line 3082
    iget-object v3, v3, Lekg;->a:Landroid/content/Context;

    .line 2215
    sget-object v4, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Message:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-static {v3, v4}, Lekf;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)Lekf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2219
    :goto_2
    if-eqz v2, :cond_0

    .line 2223
    :try_start_1
    iget-object v3, p0, Lekg$4;->f:Lekg;

    iget-object v4, p0, Lekg$4;->c:Lcom/alibaba/wukong/im/Message;

    .line 4122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4123
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 4125
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 4126
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 4129
    :cond_4
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 4130
    invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 4131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v5, 0x0

    .line 4132
    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v5, -0xffff01

    const/16 v6, 0x3e8

    const/16 v7, 0x3e8

    .line 4133
    invoke-virtual {v0, v5, v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 4134
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 4135
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f020dfe

    invoke-static {v1, v5}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 4137
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    .line 4138
    if-eqz v0, :cond_9

    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4139
    const v1, 0x7f020dfc

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 4144
    :goto_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4145
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 4146
    const-string/jumbo v6, "to_page"

    const-string/jumbo v7, "to_chat"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4148
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->i(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 4149
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->j(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 4150
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->k(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4151
    :cond_5
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    .line 4152
    const-string/jumbo v6, "cid"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4154
    :cond_6
    const-string/jumbo v0, "apn_nav_url"

    invoke-interface {v4, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 4156
    const-string/jumbo v6, "apn_nav_url"

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4159
    :cond_7
    const-string/jumbo v0, "/ding/home.html"

    invoke-static {v0, v5}, Lemd;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4160
    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4161
    iget-object v0, v3, Lekg;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4162
    iget-object v0, v3, Lekg;->a:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v0, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 4163
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 4164
    invoke-virtual {v3, v2}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 4165
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 4166
    invoke-virtual {v3, v2, v4}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v0

    .line 2224
    iget-object v1, p0, Lekg$4;->b:Lekg$a;

    iget-object v3, p0, Lekg$4;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    iput-wide v4, v1, Lekg$a;->b:J

    .line 2225
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2226
    iget-object v0, p0, Lekg$4;->f:Lekg;

    iget v1, p0, Lekg$4;->d:I

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iget v3, p0, Lekg$4;->e:I

    invoke-virtual {v0, v1, v2, v3}, Lekg;->a(ILandroid/app/Notification;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2249
    :catch_0
    move-exception v0

    .line 2250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2216
    :catch_1
    move-exception v3

    .line 2217
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    move-object v0, v1

    .line 4134
    goto/16 :goto_3

    .line 4141
    :cond_9
    const v1, 0x7f020dff

    :try_start_2
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_4

    .line 2229
    :cond_a
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v3, p0, Lekg$4;->f:Lekg;

    .line 5082
    iget-object v3, v3, Lekg;->a:Landroid/content/Context;

    .line 2229
    new-instance v4, Lekg$4$1;

    invoke-direct {v4, p0, v2}, Lekg$4$1;-><init>(Lekg$4;Landroid/support/v4/app/NotificationCompat$Builder;)V

    invoke-virtual {v1, v3, v0, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_b
    move-object v1, v2

    goto/16 :goto_1
.end method
