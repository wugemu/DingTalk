.class public final Lbho$1;
.super Ljava/lang/Object;
.source "ConversationNameEvent.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbho;


# direct methods
.method public constructor <init>(Lbho;)V
    .locals 0
    .param p1, "this$0"    # Lbho;

    .prologue
    .line 68
    iput-object p1, p0, Lbho$1;->a:Lbho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 68
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1071
    iget-object v0, p0, Lbho$1;->a:Lbho;

    invoke-static {v0}, Lbho;->a(Lbho;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    if-eqz p1, :cond_1

    .line 1075
    iget-object v0, p0, Lbho$1;->a:Lbho;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbho;->a(Lbho;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    iget-object v0, p0, Lbho$1;->a:Lbho;

    invoke-static {v0}, Lbho;->b(Lbho;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lbho$1;->a:Lbho;

    invoke-static {v0}, Lbho;->a(Lbho;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lbho$1;->a:Lbho;

    invoke-static {v0}, Lbho;->b(Lbho;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 83
    return-void
.end method
