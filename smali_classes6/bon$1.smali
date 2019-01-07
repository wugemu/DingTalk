.class public final Lbon$1;
.super Ljava/lang/Object;
.source "RecentImagesFetcher.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbon;
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
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a;

.field final synthetic b:Lbon;


# direct methods
.method public constructor <init>(Lbon;Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a;)V
    .locals 0
    .param p1, "this$0"    # Lbon;

    .prologue
    .line 53
    iput-object p1, p0, Lbon$1;->b:Lbon;

    iput-object p2, p0, Lbon$1;->a:Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a;

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
    .line 53
    check-cast p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    .line 1056
    if-eqz p1, :cond_0

    .line 1057
    iget-object v0, p0, Lbon$1;->a:Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a;

    iget-object v1, p0, Lbon$1;->b:Lbon;

    invoke-virtual {v1, p1}, Lbon;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a;->a(Ljava/util/List;)V

    .line 53
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lbon$1;->a:Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a;->a(Ljava/lang/String;Ljava/lang/String;)V

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
