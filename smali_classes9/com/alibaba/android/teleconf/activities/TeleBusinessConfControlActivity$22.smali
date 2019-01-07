.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$22;
.super Ljava/lang/Object;
.source "TeleBusinessConfControlActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->f()V
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
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    .prologue
    .line 706
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$22;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 706
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1709
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$22;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 706
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 715
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 720
    return-void
.end method
