.class public final Lglj$d;
.super Lglj;
.source "SpaceLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lglj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public b:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field private final d:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;J)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p3, "orgId"    # J

    .prologue
    .line 151
    invoke-direct {p0}, Lglj;-><init>()V

    .line 152
    iput-object p1, p0, Lglj$d;->a:Landroid/app/Activity;

    .line 153
    iput-object p2, p0, Lglj$d;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 154
    iput-wide p3, p0, Lglj$d;->d:J

    .line 155
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)V
    .locals 5
    .param p1, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 253
    invoke-virtual {p0}, Lglj$d;->c()V

    .line 254
    if-nez p1, :cond_1

    .line 255
    sget v2, Lfzs$h;->dt_cspace_send_failt:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    .local v1, "spaceLinkDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 263
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "msg_entity_list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 264
    const-string/jumbo v2, "im_navigator_from"

    const-string/jumbo v3, "cspace"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    iget-object v3, p0, Lglj$d;->a:Landroid/app/Activity;

    invoke-virtual {v2, v3, v4, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 268
    iget-object v2, p0, Lglj$d;->b:Lcma;

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Lglj$d;->b:Lcma;

    invoke-interface {v2, v4}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lglj$d;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)V
    .locals 0
    .param p0, "x0"    # Lglj$d;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lglj$d;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 162
    iget-object v1, p0, Lglj$d;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lglj$d;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v1, :cond_2

    .line 163
    :cond_0
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceLinkManager"

    const-string/jumbo v3, "chooseReceiverAndSendFileLink: dentry or activity is null "

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lglj$d;->b:Lcma;

    if-eqz v1, :cond_1

    .line 166
    const-string/jumbo v1, "null param"

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    .line 167
    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lglj$d;->b:Lcma;

    .line 166
    invoke-static {v1, v2, v3}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1209
    :goto_0
    return-void

    .line 169
    :cond_1
    sget v1, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p0}, Lglj$d;->a()V

    .line 176
    iget-object v1, p0, Lglj$d;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v1}, Lgoc;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    move-result-object v0

    .line 177
    .local v0, "spaceLinkDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    if-nez v0, :cond_4

    .line 178
    invoke-virtual {p0}, Lglj$d;->c()V

    .line 179
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceLinkManager"

    const-string/jumbo v3, "chooseReceiverAndSendFileLink: spaceLinkDo is null "

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lglj$d;->b:Lcma;

    if-eqz v1, :cond_3

    .line 182
    const-string/jumbo v1, "spaceLinkDo is null"

    sget v2, Lfzs$h;->dt_cspace_fail_tip:I

    .line 183
    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lglj$d;->b:Lcma;

    .line 182
    invoke-static {v1, v2, v3}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 185
    :cond_3
    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0

    .line 190
    :cond_4
    iget-wide v2, p0, Lglj$d;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->orgId:Ljava/lang/String;

    .line 191
    iget-wide v2, p0, Lglj$d;->d:J

    invoke-static {v2, v3}, Lgpz;->e(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->orgName:Ljava/lang/String;

    .line 1200
    if-nez v0, :cond_5

    .line 1201
    invoke-virtual {p0}, Lglj$d;->c()V

    goto :goto_0

    .line 1205
    :cond_5
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceType:Ljava/lang/String;

    invoke-static {v1}, Lgqu;->a(Ljava/lang/String;)I

    move-result v1

    .line 1206
    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lgpr;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceName:Ljava/lang/String;

    .line 1207
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1208
    invoke-direct {p0, v0}, Lglj$d;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)V

    goto :goto_0

    .line 1212
    :cond_6
    new-instance v1, Lglj$d$1;

    invoke-direct {v1, p0, v0}, Lglj$d$1;-><init>(Lglj$d;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)V

    .line 1248
    const-class v2, Lcma;

    iget-object v3, p0, Lglj$d;->a:Landroid/app/Activity;

    invoke-static {v1, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 1249
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lgon;->a(Ljava/lang/String;ZLcma;)V

    goto/16 :goto_0
.end method
