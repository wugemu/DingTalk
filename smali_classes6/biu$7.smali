.class final Lbiu$7;
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
    .line 618
    iput-object p1, p0, Lbiu$7;->a:Lbiu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 621
    iget-object v0, p0, Lbiu$7;->a:Lbiu;

    .line 1065
    iget-object v1, v0, Lbiu;->a:Landroid/app/Activity;

    .line 622
    iget-object v0, p0, Lbiu$7;->a:Lbiu;

    .line 2065
    iget-object v0, v0, Lbiu;->h:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .line 623
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lbiu$7;->a:Lbiu;

    .line 3065
    iget-object v2, v2, Lbiu;->h:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .line 624
    iget-object v3, p0, Lbiu$7;->a:Lbiu;

    .line 4065
    iget-object v3, v3, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 621
    invoke-static {v1, v0, v2, v3}, Lbkj;->a(Landroid/app/Activity;ZLcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 4920
    const-string/jumbo v0, "chat_task_list_checkbox_close_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 627
    return-void

    .line 623
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
