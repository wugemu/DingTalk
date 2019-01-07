.class final Lbom$2;
.super Ljava/lang/Object;
.source "LatestPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbom;
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
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;

.field final synthetic b:Lbom;


# direct methods
.method constructor <init>(Lbom;Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;)V
    .locals 0
    .param p1, "this$0"    # Lbom;

    .prologue
    .line 51
    iput-object p1, p0, Lbom$2;->b:Lbom;

    iput-object p2, p0, Lbom$2;->a:Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 51
    check-cast p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 1054
    if-eqz p1, :cond_0

    .line 1057
    invoke-static {}, Lbnw;->a()Lbnw;

    invoke-static {p1}, Lbnw;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    .line 1058
    iget-object v0, p0, Lbom$2;->b:Lbom;

    iget-object v1, p0, Lbom$2;->a:Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;

    .line 2075
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->author:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 2076
    if-nez v2, :cond_1

    .line 2077
    const-string/jumbo v0, "postObject = null"

    .line 3076
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lbqh;->a(ZLjava/lang/String;)V

    .line 2084
    :cond_0
    :goto_0
    return-void

    .line 2081
    :cond_1
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->profileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2082
    if-eqz v3, :cond_2

    .line 2083
    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-interface {v1, v4, v5, v0, v2}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;->a(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2087
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v6

    new-instance v7, Lbom$3;

    invoke-direct {v7, v0, v2, v1, p1}, Lbom$3;-><init>(Lbom;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    const-class v1, Lcma;

    iget-object v0, v0, Lbom;->a:Landroid/app/Activity;

    invoke-interface {v6, v7, v1, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v3, v4, v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 68
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 63
    return-void
.end method
