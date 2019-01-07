.class final Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$4;
.super Ljava/lang/Object;
.source "CirclePostActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;
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
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;

.field final synthetic b:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    .prologue
    .line 583
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$4;->b:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 583
    check-cast p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 1596
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$4;->b:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->scope:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;)V

    .line 583
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 591
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 587
    return-void
.end method
