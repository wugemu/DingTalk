.class final Lfga$5;
.super Ljava/lang/Object;
.source "AcceptFriendPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfga;->a(JLcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;I)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lfga;


# direct methods
.method constructor <init>(Lfga;I)V
    .locals 0
    .param p1, "this$0"    # Lfga;

    .prologue
    .line 197
    iput-object p1, p0, Lfga$5;->b:Lfga;

    iput p2, p0, Lfga$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 197
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    .line 1200
    iget-object v0, p0, Lfga$5;->b:Lfga;

    invoke-static {v0}, Lfga;->l(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->dismissLoadingDialog()V

    .line 1201
    iget-object v0, p0, Lfga$5;->b:Lfga;

    invoke-static {v0, p1}, Lfga;->a(Lfga;Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;)Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    .line 197
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 211
    iget-object v0, p0, Lfga$5;->b:Lfga;

    invoke-static {v0}, Lfga;->m(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->dismissLoadingDialog()V

    .line 212
    const-string/jumbo v0, "BusinessRequestPresenter"

    const-string/jumbo v1, "update show mobile err %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v0, v1, v2}, Lfxo;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lfga$5;->b:Lfga;

    invoke-static {v0}, Lfga;->n(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    sget v1, Lezg$l;->dt_save_failed:I

    invoke-interface {v0, v1}, Lffz$b;->a(I)V

    .line 215
    iget v0, p0, Lfga$5;->a:I

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Lfga$5;->b:Lfga;

    invoke-static {v0}, Lfga;->o(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->g()V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget v0, p0, Lfga$5;->a:I

    if-ne v0, v4, :cond_0

    .line 218
    iget-object v0, p0, Lfga$5;->b:Lfga;

    invoke-static {v0}, Lfga;->p(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->h()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 207
    return-void
.end method
