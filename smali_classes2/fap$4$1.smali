.class final Lfap$4$1;
.super Ljava/lang/Object;
.source "FriendAPIImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfap$4;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;

.field final synthetic b:Lfap$4;


# direct methods
.method constructor <init>(Lfap$4;Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;)V
    .locals 0
    .param p1, "this$1"    # Lfap$4;

    .prologue
    .line 349
    iput-object p1, p0, Lfap$4$1;->b:Lfap$4;

    iput-object p2, p0, Lfap$4$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;

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
    .line 349
    .line 1352
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfap$4$1$1;

    invoke-direct {v1, p0}, Lfap$4$1$1;-><init>(Lfap$4$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 349
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 370
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 365
    return-void
.end method
