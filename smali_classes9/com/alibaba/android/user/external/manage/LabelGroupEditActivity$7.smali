.class final Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$7;
.super Ljava/lang/Object;
.source "LabelGroupEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$7;->b:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    iput p2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 428
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$7;->b:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->a(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$7;->a:I

    if-le v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$7;->b:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->a(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$7;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$7;->b:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;->notifyDataSetChanged()V

    .line 432
    :cond_0
    return-void
.end method
