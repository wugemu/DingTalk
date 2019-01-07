.class final Ldin$8;
.super Ljava/lang/Object;
.source "ConversationNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldin;->a(Landroid/content/Context;Landroid/os/Bundle;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:J


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;ZIJ)V
    .locals 1

    .prologue
    .line 325
    iput-object p1, p0, Ldin$8;->a:Landroid/content/Context;

    iput-object p2, p0, Ldin$8;->b:Landroid/os/Bundle;

    iput-boolean p3, p0, Ldin$8;->c:Z

    iput p4, p0, Ldin$8;->d:I

    iput-wide p5, p0, Ldin$8;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 325
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1328
    if-eqz p1, :cond_0

    .line 1329
    iget-object v0, p0, Ldin$8;->a:Landroid/content/Context;

    iget-object v1, p0, Ldin$8;->b:Landroid/os/Bundle;

    iget-boolean v2, p0, Ldin$8;->c:Z

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget v4, p0, Ldin$8;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Ldin;->a(Landroid/content/Context;Landroid/os/Bundle;ZLjava/lang/String;I)V

    :goto_0
    return-void

    .line 1331
    :cond_0
    iget-object v0, p0, Ldin$8;->a:Landroid/content/Context;

    iget-object v1, p0, Ldin$8;->b:Landroid/os/Bundle;

    iget-boolean v2, p0, Ldin$8;->c:Z

    const/4 v3, 0x0

    iget v4, p0, Ldin$8;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Ldin;->a(Landroid/content/Context;Landroid/os/Bundle;ZLjava/lang/String;I)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 342
    const-string/jumbo v0, "im"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[ConversationNavigator]"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "navToRecruitmentConversationList uid:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Ldin$8;->e:J

    .line 344
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ",role:"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Ldin$8;->d:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, ",errCode:"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aput-object p1, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, ",errMsg:"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object p2, v1, v2

    .line 343
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {v0, v6, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Ldin$8;->a:Landroid/content/Context;

    iget-object v1, p0, Ldin$8;->b:Landroid/os/Bundle;

    iget-boolean v2, p0, Ldin$8;->c:Z

    iget v3, p0, Ldin$8;->d:I

    invoke-static {v0, v1, v2, v6, v3}, Ldin;->a(Landroid/content/Context;Landroid/os/Bundle;ZLjava/lang/String;I)V

    .line 347
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 338
    return-void
.end method
