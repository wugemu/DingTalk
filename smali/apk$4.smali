.class final Lapk$4;
.super Ljava/lang/Object;
.source "CalendarShareReceiverDetailPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapk;
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
.field final synthetic a:Lapk;


# direct methods
.method constructor <init>(Lapk;)V
    .locals 0
    .param p1, "this$0"    # Lapk;

    .prologue
    .line 197
    iput-object p1, p0, Lapk$4;->a:Lapk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 197
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2200
    if-nez p1, :cond_1

    .line 2201
    iget-object v0, p0, Lapk$4;->a:Lapk;

    .line 3034
    iget-object v0, v0, Lapk;->a:Lapj$b;

    .line 2201
    invoke-interface {v0}, Lapj$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2202
    iget-object v0, p0, Lapk$4;->a:Lapk;

    .line 4034
    iget-object v0, v0, Lapk;->b:Landroid/app/Activity;

    .line 2202
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2204
    :cond_0
    const-string/jumbo v0, "[calendarShareReceiverDetailNullData]"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    :goto_0
    return-void

    .line 2207
    :cond_1
    iget-object v0, p0, Lapk$4;->a:Lapk;

    .line 5034
    iget-object v0, v0, Lapk;->a:Lapj$b;

    .line 2207
    iget-object v1, p0, Lapk$4;->a:Lapk;

    .line 6034
    iget-object v1, v1, Lapk;->c:Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    .line 2207
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 2209
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v3

    .line 2207
    invoke-interface {v0, v1, v2, v3}, Lapj$b;->a(Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v0, p0, Lapk$4;->a:Lapk;

    .line 1034
    iget-object v0, v0, Lapk;->a:Lapj$b;

    .line 218
    invoke-interface {v0}, Lapj$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lapk$4;->a:Lapk;

    .line 2034
    iget-object v0, v0, Lapk;->b:Landroid/app/Activity;

    .line 219
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 221
    :cond_0
    const-string/jumbo v0, "[calendarShareReceiverDetailNullData]"

    invoke-static {v0, p1, p2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 214
    return-void
.end method
