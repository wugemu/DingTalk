.class final Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$4;
.super Ljava/lang/Object;
.source "BurnChatSessionListActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->a(Lcma;)V
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
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$4;->b:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$4;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 186
    check-cast p1, Ljava/lang/Boolean;

    .line 1189
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$4;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$4;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 186
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$4;->a:Lcma;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$4;->a:Lcma;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 199
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 204
    return-void
.end method
