.class final Lfga$6;
.super Ljava/lang/Object;
.source "AcceptFriendPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfga;->b(J)V
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
.field final synthetic a:Lfga;


# direct methods
.method constructor <init>(Lfga;)V
    .locals 0
    .param p1, "this$0"    # Lfga;

    .prologue
    .line 252
    iput-object p1, p0, Lfga$6;->a:Lfga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 252
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    .line 1255
    iget-object v0, p0, Lfga$6;->a:Lfga;

    invoke-static {v0}, Lfga;->q(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->dismissLoadingDialog()V

    .line 1256
    iget-object v0, p0, Lfga$6;->a:Lfga;

    invoke-static {v0, p1}, Lfga;->a(Lfga;Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;)Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    .line 1257
    if-nez p1, :cond_0

    .line 1258
    const-string/jumbo v0, "BusinessRequestPresenter"

    const-string/jumbo v1, "getFriendSetting null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1259
    :goto_0
    return-void

    .line 1261
    :cond_0
    iget-object v0, p0, Lfga$6;->a:Lfga;

    invoke-static {v0}, Lfga;->r(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    invoke-interface {v0, p1}, Lffz$b;->a(Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 271
    iget-object v0, p0, Lfga$6;->a:Lfga;

    invoke-static {v0}, Lfga;->s(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->dismissLoadingDialog()V

    .line 272
    const-string/jumbo v0, "BusinessRequestPresenter"

    const-string/jumbo v1, "getFriendSetting err %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lfga$6;->a:Lfga;

    invoke-static {v0}, Lfga;->t(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    sget v1, Lezg$l;->load_error:I

    invoke-interface {v0, v1}, Lffz$b;->a(I)V

    .line 274
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 267
    return-void
.end method
