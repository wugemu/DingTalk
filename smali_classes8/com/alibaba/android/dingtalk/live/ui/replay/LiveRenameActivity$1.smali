.class final Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity$1;
.super Ljava/lang/Object;
.source "LiveRenameActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 80
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 70
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lbyf;->a(Landroid/view/MenuItem;Z)V

    .line 75
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
