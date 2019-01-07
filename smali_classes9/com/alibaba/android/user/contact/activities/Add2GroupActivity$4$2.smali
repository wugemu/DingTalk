.class final Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4$2;
.super Ljava/lang/Object;
.source "Add2GroupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4$2;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4$2;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 200
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4$2;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v2, "cid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4$2;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->e(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)J

    move-result-wide v2

    new-instance v4, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4$2$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4$2$1;-><init>(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4$2;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Ljava/lang/String;JLcma;)V

    .line 216
    return-void
.end method
