.class final Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$1;
.super Ljava/lang/Object;
.source "LabelGroupEditActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$1;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 114
    if-nez p2, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$1;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->a(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$1;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->b(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->getEditText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->name:Ljava/lang/String;

    .line 117
    :cond_0
    return-void
.end method
