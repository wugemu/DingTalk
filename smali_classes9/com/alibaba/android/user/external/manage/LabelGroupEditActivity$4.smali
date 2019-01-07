.class final Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$4;
.super Ljava/lang/Object;
.source "LabelGroupEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 177
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$4;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 180
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;-><init>()V

    .line 181
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$4;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->a(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->color:I

    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->color:I

    .line 182
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$4;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->a(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$4;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;->notifyDataSetChanged()V

    .line 184
    return-void
.end method
