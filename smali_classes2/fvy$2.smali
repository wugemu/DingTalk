.class final Lfvy$2;
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lfvy;


# direct methods
.method constructor <init>(Lfvy;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lfvy;

    .prologue
    .line 122
    iput-object p1, p0, Lfvy$2;->b:Lfvy;

    iput-object p2, p0, Lfvy$2;->a:Landroid/content/Context;

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
    .line 122
    check-cast p1, Lcom/alibaba/android/user/model/ChannelInfoResponseObject;

    .line 1125
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/alibaba/android/user/model/ChannelInfoResponseObject;->statusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 1126
    iget-object v0, p0, Lfvy$2;->a:Landroid/content/Context;

    const-string/jumbo v1, "pref_play_install_referrer_reported"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 122
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
    .line 137
    const-class v0, Lfvy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reportInstallReferrer exception %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 133
    return-void
.end method
