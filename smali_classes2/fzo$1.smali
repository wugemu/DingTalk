.class final Lfzo$1;
.super Ljava/lang/Object;
.source "CSpaceCreatorHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzo;->a(Landroid/content/Context;Ljava/lang/String;IILfzo$a;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lfzo;


# direct methods
.method constructor <init>(Lfzo;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lfzo;

    .prologue
    .line 63
    iput-object p1, p0, Lfzo$1;->d:Lfzo;

    iput-object p2, p0, Lfzo$1;->a:Ljava/lang/String;

    iput p3, p0, Lfzo$1;->b:I

    iput p4, p0, Lfzo$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 63
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1066
    if-eqz p1, :cond_2

    .line 1067
    const/4 v0, 0x0

    .line 1068
    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1071
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 1073
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1074
    iget-object v1, p0, Lfzo$1;->d:Lfzo;

    .line 2023
    iget-object v1, v1, Lfzo;->b:Ljava/util/HashMap;

    .line 1074
    iget-object v2, p0, Lfzo$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    :cond_2
    :goto_0
    iget-object v0, p0, Lfzo$1;->d:Lfzo;

    iget-object v1, p0, Lfzo$1;->a:Ljava/lang/String;

    iget v2, p0, Lfzo$1;->b:I

    iget v3, p0, Lfzo$1;->c:I

    invoke-static {v0, v1, v2, v3}, Lfzo;->a(Lfzo;Ljava/lang/String;II)V

    .line 63
    return-void

    .line 1075
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1076
    iget-object v0, p0, Lfzo$1;->d:Lfzo;

    .line 3023
    iget-object v0, v0, Lfzo;->b:Ljava/util/HashMap;

    .line 1076
    iget-object v1, p0, Lfzo$1;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1077
    :cond_4
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1078
    iget-object v0, p0, Lfzo$1;->d:Lfzo;

    .line 4023
    iget-object v0, v0, Lfzo;->b:Ljava/util/HashMap;

    .line 1078
    iget-object v1, p0, Lfzo$1;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 91
    iget-object v0, p0, Lfzo$1;->d:Lfzo;

    iget-object v1, p0, Lfzo$1;->a:Ljava/lang/String;

    iget v2, p0, Lfzo$1;->b:I

    iget v3, p0, Lfzo$1;->c:I

    invoke-static {v0, v1, v2, v3}, Lfzo;->a(Lfzo;Ljava/lang/String;II)V

    .line 92
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 87
    return-void
.end method
