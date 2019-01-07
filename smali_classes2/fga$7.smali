.class final Lfga$7;
.super Ljava/lang/Object;
.source "AcceptFriendPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfga;->c(J)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;",
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
    .line 284
    iput-object p1, p0, Lfga$7;->a:Lfga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 284
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    .line 1287
    if-eqz p1, :cond_0

    .line 1290
    iget-object v0, p0, Lfga$7;->a:Lfga;

    invoke-static {v0, p1}, Lfga;->a(Lfga;Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;)Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    .line 1291
    iget-object v0, p0, Lfga$7;->a:Lfga;

    invoke-static {v0}, Lfga;->u(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    invoke-interface {v0, p1}, Lffz$b;->a(Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;)V

    .line 284
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 301
    const-string/jumbo v0, "BusinessRequestPresenter"

    const-string/jumbo v1, "getFriend err %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lfga$7;->a:Lfga;

    invoke-static {v0}, Lfga;->v(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    sget v1, Lezg$l;->load_error:I

    invoke-interface {v0, v1}, Lffz$b;->a(I)V

    .line 303
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 297
    return-void
.end method
