.class final Lapk$3;
.super Ljava/lang/Object;
.source "CalendarShareReceiverDetailPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapk;->b()V
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
        "Ljava/lang/Void;",
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
    .line 158
    iput-object p1, p0, Lapk$3;->a:Lapk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 174
    iget-object v0, p0, Lapk$3;->a:Lapk;

    .line 1034
    iget-object v0, v0, Lapk;->a:Lapj$b;

    .line 174
    invoke-interface {v0}, Lapj$b;->H_()V

    .line 175
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarShareSetReceiverPresenter]removePrivilege onException code="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 158
    .line 1161
    iget-object v0, p0, Lapk$3;->a:Lapk;

    .line 2034
    iget-object v0, v0, Lapk;->a:Lapj$b;

    .line 1161
    invoke-interface {v0}, Lapj$b;->H_()V

    .line 1162
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "calendar_share_stop_share_fresh_list"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1163
    const-string/jumbo v1, "intent_key_detail_share_schedule"

    iget-object v2, p0, Lapk$3;->a:Lapk;

    .line 3034
    iget-object v2, v2, Lapk;->c:Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    .line 1163
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1164
    const-string/jumbo v1, "calendar_share_return_from_detail_update_or_delete"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1165
    iget-object v1, p0, Lapk$3;->a:Lapk;

    .line 4034
    iget-object v1, v1, Lapk;->b:Landroid/app/Activity;

    .line 1165
    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1166
    iget-object v0, p0, Lapk$3;->a:Lapk;

    .line 5034
    iget-object v0, v0, Lapk;->a:Lapj$b;

    .line 1166
    invoke-interface {v0}, Lapj$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lapk$3;->a:Lapk;

    .line 6034
    iget-object v0, v0, Lapk;->b:Landroid/app/Activity;

    .line 1169
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 158
    :cond_0
    return-void
.end method
