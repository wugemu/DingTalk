.class final Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$2;
.super Ljava/lang/Object;
.source "MessagePickMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$2;->a:Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$2;->a:Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;->a(Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;)Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$2;->a:Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;->b(Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$2;->a:Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;->a(Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;)Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$a;->c()V

    .line 67
    :cond_0
    return-void
.end method
