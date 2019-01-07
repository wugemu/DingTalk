.class final Lcom/alibaba/android/search/model/DingModel$1;
.super Ljava/lang/Object;
.source "DingModel.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/model/DingModel;->requestExtraData(Landroid/app/Activity;)V
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
.field final synthetic a:Lcom/alibaba/android/search/model/DingModel;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/model/DingModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/model/DingModel;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alibaba/android/search/model/DingModel$1;->a:Lcom/alibaba/android/search/model/DingModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 139
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1143
    if-eqz p1, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/alibaba/android/search/model/DingModel$1;->a:Lcom/alibaba/android/search/model/DingModel;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/model/DingModel;->access$002(Lcom/alibaba/android/search/model/DingModel;Ljava/lang/String;)Ljava/lang/String;

    .line 1148
    iget-object v0, p0, Lcom/alibaba/android/search/model/DingModel$1;->a:Lcom/alibaba/android/search/model/DingModel;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/model/DingModel;->access$102(Lcom/alibaba/android/search/model/DingModel;Ljava/lang/String;)Ljava/lang/String;

    .line 1150
    iget-object v0, p0, Lcom/alibaba/android/search/model/DingModel$1;->a:Lcom/alibaba/android/search/model/DingModel;

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/DingModel;->onDataChange()V

    .line 139
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 161
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 156
    return-void
.end method
