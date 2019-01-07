.class final Lbiu$3;
.super Ljava/lang/Object;
.source "SingleChatTaskDingHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbiu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbiu;


# direct methods
.method constructor <init>(Lbiu;)V
    .locals 0
    .param p1, "this$0"    # Lbiu;

    .prologue
    .line 553
    iput-object p1, p0, Lbiu$3;->a:Lbiu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1912
    const-string/jumbo v0, "chat_task_list_detail_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lbiu$3;->a:Lbiu;

    .line 2656
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2657
    const-string/jumbo v2, "intent_key_unread_comment_count"

    iget-object v3, v0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->X()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2658
    iget-object v2, v0, Lbiu;->a:Landroid/app/Activity;

    iget-object v3, v0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2681
    iget v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 2658
    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v1, v4}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    .line 558
    return-void
.end method
