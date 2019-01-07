.class final Levu$1$1;
.super Ljava/lang/Object;
.source "TeleConfNotificationListeners.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Levu$1;->a(Lcjo$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leyj;

.field final synthetic b:I

.field final synthetic c:Levu$1;


# direct methods
.method constructor <init>(Levu$1;Leyj;I)V
    .locals 0
    .param p1, "this$1"    # Levu$1;

    .prologue
    .line 223
    iput-object p1, p0, Levu$1$1;->c:Levu$1;

    iput-object p2, p0, Levu$1$1;->a:Leyj;

    iput p3, p0, Levu$1$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 223
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1226
    if-eqz p1, :cond_9

    .line 1227
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Levu;->i()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ACTION_BEGIN_CONFERENCE success"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    iget-object v0, p0, Levu$1$1;->a:Leyj;

    iget-object v1, v0, Leyj;->d:Ljava/lang/String;

    .line 1230
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 1231
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1234
    :goto_0
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1235
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->comming_tele_conf:I

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Levu$1$1;->a:Leyj;

    iget-object v4, v4, Leyj;->d:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 1236
    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1237
    iget-object v2, p0, Levu$1$1;->c:Levu$1;

    iget-object v2, v2, Levu$1;->a:Levu;

    invoke-static {v2, v1, v6}, Levu;->a(Levu;Ljava/lang/String;I)V

    .line 1241
    :cond_0
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    .line 1242
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v1, v2, v3}, Levi;->c(J)V

    .line 1243
    iget-object v2, p0, Levu$1$1;->a:Leyj;

    iget-object v2, v2, Leyj;->c:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 1244
    iget-object v2, p0, Levu$1$1;->a:Leyj;

    iget-object v2, v2, Leyj;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Levi;->d(J)V

    .line 1246
    :cond_1
    iget-object v2, p0, Levu$1$1;->a:Leyj;

    iget-object v2, v2, Leyj;->a:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 1247
    iget-object v2, p0, Levu$1$1;->a:Leyj;

    iget-object v2, v2, Leyj;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Levi;->b(J)V

    .line 1249
    :cond_2
    invoke-virtual {v1, v0}, Levi;->b(Ljava/lang/String;)V

    .line 1250
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Levi;->c(Ljava/lang/String;)V

    .line 1251
    iget-object v0, p0, Levu$1$1;->a:Leyj;

    iget-object v0, v0, Leyj;->h:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 1252
    iget-object v0, p0, Levu$1$1;->a:Leyj;

    iget-object v0, v0, Leyj;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Levi;->e(J)V

    .line 1254
    :cond_3
    iget v0, p0, Levu$1$1;->b:I

    .line 1255
    iget-object v2, p0, Levu$1$1;->a:Leyj;

    iget-object v2, v2, Leyj;->k:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 1256
    iget-object v0, p0, Levu$1$1;->a:Leyj;

    iget-object v0, v0, Leyj;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1259
    :cond_4
    invoke-virtual {v1, v0}, Levi;->b(I)V

    .line 1261
    if-eqz v0, :cond_5

    const/4 v2, 0x2

    if-ne v2, v0, :cond_6

    .line 1263
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1264
    iget-object v4, p0, Levu$1$1;->a:Leyj;

    iget-object v4, v4, Leyj;->g:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_7

    .line 1268
    :cond_6
    iget-object v2, p0, Levu$1$1;->a:Leyj;

    iget-object v2, v2, Leyj;->g:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-long/2addr v2, v8

    .line 1270
    :cond_7
    invoke-virtual {v1, v2, v3}, Levi;->a(J)V

    .line 1271
    sget v2, Levh;->b:I

    invoke-virtual {v1, v2}, Levi;->a(I)V

    .line 1272
    iget-object v2, p0, Levu$1$1;->a:Leyj;

    iget-object v2, v2, Leyj;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Levi;->a(Ljava/lang/String;)V

    .line 1273
    iget-object v2, p0, Levu$1$1;->a:Leyj;

    iget-object v2, v2, Leyj;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Levi;->e(Ljava/lang/String;)V

    .line 1274
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    .line 2059
    iput-boolean v7, v1, Levi;->t:Z

    .line 1277
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_8

    .line 1278
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;->TYPE_CONF_2_8_0:Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;

    invoke-virtual {v1, v2}, Lewh;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;)V

    .line 1281
    :cond_8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1282
    const-string/jumbo v2, "isFromService"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1283
    const-string/jumbo v2, "conf_type"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1285
    const-string/jumbo v0, "conf_next_title"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const-string/jumbo v0, "conf_caller_id"

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1287
    iget-object v0, p0, Levu$1$1;->c:Levu$1;

    iget-object v0, v0, Levu$1;->a:Levu;

    invoke-static {v0}, Levu;->a(Levu;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    .line 223
    :cond_9
    return-void

    :cond_a
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 299
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Levu;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ACTION_BEGIN_CONFERENCE exp "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 295
    return-void
.end method
