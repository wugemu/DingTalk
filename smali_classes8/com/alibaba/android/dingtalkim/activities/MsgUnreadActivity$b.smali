.class final Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;
.super Ljava/lang/Object;
.source "MsgUnreadActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ldrs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 305
    check-cast p1, Ldrs;

    .line 1308
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->a()Ljava/lang/String;

    .line 1309
    if-eqz p1, :cond_5

    .line 1312
    iget-object v0, p1, Ldrs;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1313
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->d(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1314
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "member list size "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Ldrs;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1315
    iget-object v0, p1, Ldrs;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1317
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1318
    iget-object v0, p1, Ldrs;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsa;

    .line 1319
    if-eqz v0, :cond_0

    iget-object v3, v0, Ldsa;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_0

    .line 1320
    iget-object v3, v0, Ldsa;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v0, v0, Ldsa;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1323
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1324
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->b(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;Ljava/util/List;)Ljava/util/List;

    .line 1328
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->i(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->i(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1330
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->i(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1331
    new-instance v3, Ldqw;

    invoke-direct {v3}, Ldqw;-><init>()V

    .line 1332
    iput-object v0, v3, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1333
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1335
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->c(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Lcwh;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcwh;->c(Ljava/util/List;)V

    .line 1336
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->c(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Lcwh;

    move-result-object v0

    invoke-virtual {v0}, Lcwh;->notifyDataSetChanged()V

    .line 1337
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->j(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    sget v2, Lctk$i;->msg_read_count:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->i(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    :cond_4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    :cond_5
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 356
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->d(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 357
    sget v0, Lctk$i;->load_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 358
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 352
    return-void
.end method
