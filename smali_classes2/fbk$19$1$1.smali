.class final Lfbk$19$1$1;
.super Ljava/lang/Object;
.source "UserProfileRPC.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbk$19$1;->d(Ljava/util/List;)V
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
.field final synthetic a:Lfbk$19$1;


# direct methods
.method constructor <init>(Lfbk$19$1;)V
    .locals 0
    .param p1, "this$2"    # Lfbk$19$1;

    .prologue
    .line 214
    iput-object p1, p0, Lfbk$19$1$1;->a:Lfbk$19$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 214
    check-cast p1, Ljava/util/List;

    .line 1218
    iget-object v0, p0, Lfbk$19$1$1;->a:Lfbk$19$1;

    invoke-static {v0, p1}, Lfbk$19$1;->a(Lfbk$19$1;Ljava/util/List;)V

    .line 214
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 229
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 224
    return-void
.end method
