.class final Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$2;
.super Ljava/lang/Object;
.source "MessageRecipientsSelectResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;ILcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$2;->c:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;

    iput p2, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$2;->a:I

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$2;->b:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 246
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$2;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$2;->a:I

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$2;->c:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$2;->c:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$2;->b:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$2;->c:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$2;->c:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    sget v2, Lctk$i;->dt_im_trans_to_multiple_select_result_title:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$2;->c:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$2;->c:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->notifyDataSetChanged()V

    .line 251
    :cond_0
    return-void
.end method
