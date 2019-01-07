.class final Lfga$8;
.super Ljava/lang/Object;
.source "AcceptFriendPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfga;->a(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
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
    .line 317
    iput-object p1, p0, Lfga$8;->a:Lfga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 317
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    .line 1320
    iget-object v0, p0, Lfga$8;->a:Lfga;

    invoke-static {v0, p1}, Lfga;->a(Lfga;Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;)Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    .line 317
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 331
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 326
    return-void
.end method
