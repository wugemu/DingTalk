.class final Lfvy$3;
.super Ljava/lang/Object;
.source "PlayStoreService.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfvy;
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
        "Lcom/alibaba/android/user/model/ChannelInfoResponseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfvy;


# direct methods
.method constructor <init>(Lfvy;)V
    .locals 0
    .param p1, "this$0"    # Lfvy;

    .prologue
    .line 145
    iput-object p1, p0, Lfvy$3;->a:Lfvy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 145
    check-cast p1, Lcom/alibaba/android/user/model/ChannelInfoResponseObject;

    .line 1148
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/alibaba/android/user/model/ChannelInfoResponseObject;->statusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 1149
    const-string/jumbo v0, "pref_play_user_active_referrer_reported"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 145
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
    .line 160
    const-class v0, Lfvy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reportUserActiveReferrer exception %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 156
    return-void
.end method
