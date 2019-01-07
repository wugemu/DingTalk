.class final Lapm$2;
.super Ljava/lang/Object;
.source "CalendarShareSettingReceiverPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapm;->a(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lapm;


# direct methods
.method constructor <init>(Lapm;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lapm;

    .prologue
    .line 131
    iput-object p1, p0, Lapm$2;->c:Lapm;

    iput-object p2, p0, Lapm$2;->a:Ljava/util/List;

    iput-object p3, p0, Lapm$2;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lapm$2;->c:Lapm;

    .line 1042
    iget-object v0, v0, Lapm;->a:Lapl$b;

    .line 155
    invoke-interface {v0}, Lapl$b;->H_()V

    .line 156
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 131
    check-cast p1, Ljava/lang/Integer;

    .line 1134
    iget-object v0, p0, Lapm$2;->c:Lapm;

    .line 2042
    iget-object v0, v0, Lapm;->a:Lapl$b;

    .line 1134
    invoke-interface {v0}, Lapl$b;->H_()V

    .line 1135
    if-nez p1, :cond_0

    .line 1136
    iget-object v0, p0, Lapm$2;->c:Lapm;

    .line 3042
    iget-object v0, v0, Lapm;->b:Landroid/app/Activity;

    .line 1136
    sget v1, Laow$f;->dt_errmsg_network_abnormal:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1137
    :goto_0
    return-void

    .line 1139
    :cond_0
    iget-object v0, p0, Lapm$2;->c:Lapm;

    .line 4042
    iget-object v0, v0, Lapm;->b:Landroid/app/Activity;

    .line 1139
    sget v1, Laow$f;->dt_ding_share_add_receiver_success:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    iget-object v0, p0, Lapm$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1142
    if-eqz v0, :cond_1

    .line 1143
    new-instance v3, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    invoke-direct {v3}, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;-><init>()V

    .line 1144
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->from(I)Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;->setPrivilege(Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;)V

    .line 1145
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;->setUid(J)V

    .line 1146
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1149
    :cond_2
    iget-object v0, p0, Lapm$2;->c:Lapm;

    .line 5042
    iget-object v0, v0, Lapm;->c:Ljava/util/List;

    .line 1149
    invoke-interface {v0, v6, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1150
    iget-object v0, p0, Lapm$2;->c:Lapm;

    iget-object v1, p0, Lapm$2;->b:Ljava/util/List;

    invoke-static {v0, v1, v6}, Lapm;->a(Lapm;Ljava/util/List;Z)V

    goto :goto_0
.end method
