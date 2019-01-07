.class final Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1$1;
.super Ljava/lang/Object;
.source "MessageMoreMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1$1;->b:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;

    iput p2, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1$1;->b:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->a:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;->a(Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;)Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1$1;->b:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1;->a:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;->a(Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;)Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$a;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$1$1;->a:I

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$a;->a(I)V

    .line 158
    :cond_0
    return-void
.end method
