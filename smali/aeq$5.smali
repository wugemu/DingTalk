.class final Laeq$5;
.super Ljava/lang/Object;
.source "Chat2MailHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laeq;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

.field final synthetic b:Laeq;


# direct methods
.method constructor <init>(Laeq;Lcom/alibaba/android/dingtalk/userbase/ContactInterface;)V
    .locals 0
    .param p1, "this$0"    # Laeq;

    .prologue
    .line 475
    iput-object p1, p0, Laeq$5;->b:Laeq;

    iput-object p2, p0, Laeq$5;->a:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 475
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1478
    const/4 v0, 0x0

    .line 1479
    if-eqz p1, :cond_0

    .line 1480
    iget-object v0, p0, Laeq$5;->a:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 1483
    :cond_0
    iget-object v1, p0, Laeq$5;->b:Laeq;

    invoke-static {v1, v0}, Laeq;->b(Laeq;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 493
    iget-object v0, p0, Laeq$5;->b:Laeq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laeq;->b(Laeq;Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 489
    return-void
.end method
