.class final Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a$1;
.super Ljava/lang/Object;
.source "LabelGroupEditActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

.field final synthetic c:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a$1;->c:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;

    iput-object p2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a$1;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;

    iput-object p3, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 388
    if-nez p2, :cond_1

    .line 389
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a$1;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->getEditText()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    .line 395
    .end local v0    # "s":Ljava/lang/String;
    :goto_1
    return-void

    .line 390
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 392
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a$1;->c:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;

    iget-object v1, v1, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a$1;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;

    invoke-static {v1, v2}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->a(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;)Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;

    .line 393
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a$1;->c:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;

    iget-object v1, v1, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    invoke-static {v1, v2}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->a(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;)Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    goto :goto_1
.end method
