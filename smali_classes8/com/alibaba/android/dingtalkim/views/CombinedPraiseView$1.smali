.class final Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$1;
.super Ljava/lang/Object;
.source "CombinedPraiseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$1;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 160
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;

    move-object v0, v1

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;

    .line 162
    .local v0, "holder":Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$1;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->a(Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;)Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$a;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$1;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->a(Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;)Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$a;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->c:Lcom/alibaba/wukong/im/Message;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$a;->a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 166
    .end local v0    # "holder":Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;
    :cond_0
    return-void
.end method
