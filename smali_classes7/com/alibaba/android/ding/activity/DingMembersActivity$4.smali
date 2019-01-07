.class final Lcom/alibaba/android/ding/activity/DingMembersActivity$4;
.super Ljava/lang/Object;
.source "DingMembersActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMembersActivity;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 226
    if-eqz p2, :cond_0

    .line 227
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->i(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Landroid/view/View;

    move-result-object v0

    sget v1, Laxp$e;->edit_bg_focus:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->i(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Landroid/view/View;

    move-result-object v0

    sget v1, Laxp$e;->edit_bg_normal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
