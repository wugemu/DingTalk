.class final Lcvm$1;
.super Ljava/lang/Object;
.source "ForwardConversationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcvm;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcvm$b;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcvm;


# direct methods
.method constructor <init>(Lcvm;Lcvm$b;ILcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcvm;

    .prologue
    .line 192
    iput-object p1, p0, Lcvm$1;->e:Lcvm;

    iput-object p2, p0, Lcvm$1;->a:Lcvm$b;

    iput p3, p0, Lcvm$1;->b:I

    iput-object p4, p0, Lcvm$1;->c:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iput-object p5, p0, Lcvm$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    iget-object v1, p0, Lcvm$1;->a:Lcvm$b;

    iget-object v1, v1, Lcvm$b;->e:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 196
    .local v0, "isChecked":Z
    iget-object v1, p0, Lcvm$1;->e:Lcvm;

    invoke-static {v1}, Lcvm;->a(Lcvm;)Lcvm$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcvm$1;->e:Lcvm;

    invoke-static {v1}, Lcvm;->a(Lcvm;)Lcvm$a;

    move-result-object v1

    iget-object v2, p0, Lcvm$1;->c:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-interface {v1, v2, v0}, Lcvm$a;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    iget-object v1, p0, Lcvm$1;->a:Lcvm$b;

    iget-object v2, v1, Lcvm$b;->e:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 207
    :goto_1
    return-void

    .line 198
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 202
    :cond_1
    if-eqz v0, :cond_2

    .line 203
    iget-object v1, p0, Lcvm$1;->e:Lcvm;

    invoke-static {v1}, Lcvm;->b(Lcvm;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p0, Lcvm$1;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 205
    :cond_2
    iget-object v1, p0, Lcvm$1;->e:Lcvm;

    invoke-static {v1}, Lcvm;->b(Lcvm;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p0, Lcvm$1;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
