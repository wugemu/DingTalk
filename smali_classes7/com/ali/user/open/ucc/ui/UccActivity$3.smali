.class Lcom/ali/user/open/ucc/ui/UccActivity$3;
.super Ljava/lang/Object;
.source "UccActivity.java"

# interfaces
.implements Lcom/ali/user/open/ucc/UccCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/ui/UccActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/ucc/ui/UccActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/open/ucc/ui/UccActivity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/ali/user/open/ucc/ui/UccActivity$3;->a:Lcom/ali/user/open/ucc/ui/UccActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/ali/user/open/ucc/ui/UccActivity;->mUccCallback:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/ali/user/open/ucc/ui/UccActivity;->mUccCallback:Lcom/ali/user/open/ucc/UccCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/ucc/ui/UccActivity$3;->a:Lcom/ali/user/open/ucc/ui/UccActivity;

    invoke-virtual {v0}, Lcom/ali/user/open/ucc/ui/UccActivity;->finish()V

    .line 108
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/ali/user/open/ucc/ui/UccActivity;->mUccCallback:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/ali/user/open/ucc/ui/UccActivity;->mUccCallback:Lcom/ali/user/open/ucc/UccCallback;

    invoke-interface {v0, p1, p2}, Lcom/ali/user/open/ucc/UccCallback;->onSuccess(Ljava/lang/String;Ljava/util/Map;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/ucc/ui/UccActivity$3;->a:Lcom/ali/user/open/ucc/ui/UccActivity;

    invoke-virtual {v0}, Lcom/ali/user/open/ucc/ui/UccActivity;->finish()V

    .line 100
    return-void
.end method
