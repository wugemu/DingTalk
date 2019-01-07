.class final Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$1;
.super Ljava/lang/Object;
.source "BurnChatSessionListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 59
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;

    const-string/jumbo v2, "https://csmobile.alipay.com/detailSolution.htm?questionId=201602038159&token=f0f5a979-9ec8-436b-87ef-437d93f15cca&knowledgeType=3"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method
