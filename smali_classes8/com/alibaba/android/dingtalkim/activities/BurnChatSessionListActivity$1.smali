.class final Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1;
.super Ljava/lang/Object;
.source "BurnChatSessionListActivity.java"

# interfaces
.implements Ldbz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    sget v1, Lctk$f;->burn_chat_list_empty_info_btn:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "view":Landroid/view/View;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->P()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    sget v1, Lctk$f;->btn_create_burn_chat:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 55
    .restart local v0    # "view":Landroid/view/View;
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method
