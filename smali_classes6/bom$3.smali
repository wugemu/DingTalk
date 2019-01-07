.class final Lbom$3;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

.field final synthetic b:Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;

.field final synthetic c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

.field final synthetic d:Lbom;


# direct methods
.method constructor <init>(Lbom;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 0
    .param p1, "this$0"    # Lbom;

    .prologue
    .line 87
    iput-object p1, p0, Lbom$3;->d:Lbom;

    iput-object p2, p0, Lbom$3;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iput-object p3, p0, Lbom$3;->b:Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;

    iput-object p4, p0, Lbom$3;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 87
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1090
    if-eqz p1, :cond_0

    .line 1091
    iget-object v0, p0, Lbom$3;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iput-object p1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->profileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1092
    iget-object v0, p0, Lbom$3;->b:Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;

    iget-object v1, p0, Lbom$3;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 105
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 99
    return-void
.end method
