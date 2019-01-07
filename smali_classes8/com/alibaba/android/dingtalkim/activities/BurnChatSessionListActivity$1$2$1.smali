.class final Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$2$1;
.super Ljava/lang/Object;
.source "BurnChatSessionListActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$2;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$2;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 65
    check-cast p1, Ljava/lang/Boolean;

    .line 2022
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1068
    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;)V

    :goto_0
    return-void

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;)V

    .line 83
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 78
    return-void
.end method
