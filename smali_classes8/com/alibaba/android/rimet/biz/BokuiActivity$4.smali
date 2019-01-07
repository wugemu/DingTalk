.class final Lcom/alibaba/android/rimet/biz/BokuiActivity$4;
.super Ljava/lang/Object;
.source "BokuiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/BokuiActivity;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/BokuiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/BokuiActivity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/BokuiActivity;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$4;->b:Lcom/alibaba/android/rimet/biz/BokuiActivity;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$4;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const v10, 0x7f091e0c

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 130
    invoke-static {}, Lemf;->a()Lemf;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$4;->b:Lcom/alibaba/android/rimet/biz/BokuiActivity;

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$4;->a:Landroid/content/Intent;

    .line 1145
    const-string/jumbo v1, "user_id_string"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lemf;->a(Ljava/lang/String;)J

    move-result-wide v8

    .line 1146
    const-wide/16 v6, 0x0

    cmp-long v1, v8, v6

    if-nez v1, :cond_1

    .line 1147
    const v0, 0x7f09209c

    invoke-static {v0}, Lcms;->a(I)V

    .line 1148
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 1251
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1153
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 1154
    const-string/jumbo v7, "text/plain"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1155
    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1157
    const v0, 0x7f092115

    invoke-static {v0}, Lcms;->a(I)V

    .line 1158
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1161
    :cond_2
    new-instance v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;-><init>()V

    .line 1162
    iput v5, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 1163
    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    .line 1164
    invoke-virtual {v3, v4, v8, v9, v1}, Lemf;->a(Landroid/app/Activity;JLcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;)V

    goto :goto_0

    .line 1165
    :cond_3
    if-eqz v6, :cond_0

    .line 1166
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "image/*"

    invoke-static {v1, v0}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1167
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;-><init>()V

    .line 1168
    const/4 v1, 0x2

    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 1169
    new-instance v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;-><init>()V

    .line 1170
    invoke-virtual {v3, v4, v6}, Lemf;->a(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1171
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1173
    invoke-static {v10}, Lcms;->a(I)V

    .line 1174
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1177
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;->url:Ljava/lang/String;

    .line 1178
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;->filename:Ljava/lang/String;

    .line 1179
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;->fileSize:J

    .line 1180
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    .line 1181
    invoke-virtual {v3, v4, v8, v9, v0}, Lemf;->a(Landroid/app/Activity;JLcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;)V

    goto/16 :goto_0

    .line 1239
    :cond_5
    invoke-virtual {v3, v4, v6}, Lemf;->a(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 1243
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1244
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1247
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1249
    invoke-static {v10}, Lcms;->a(I)V

    .line 1250
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1254
    :cond_7
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lemf$4;

    invoke-direct {v1, v3, v4, v6}, Lemf$4;-><init>(Lemf;Landroid/app/Activity;Ljava/lang/String;)V

    new-array v6, v5, [Ljava/lang/Long;

    const/4 v3, 0x0

    .line 1349
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v3

    move-object v3, v2

    move-object v4, v2

    .line 1255
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    goto/16 :goto_0
.end method
