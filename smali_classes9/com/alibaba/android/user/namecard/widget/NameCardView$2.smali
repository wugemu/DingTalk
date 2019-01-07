.class final Lcom/alibaba/android/user/namecard/widget/NameCardView$2;
.super Ljava/lang/Object;
.source "NameCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/namecard/widget/NameCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/widget/NameCardView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/widget/NameCardView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/widget/NameCardView;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView$2;->a:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView$2;->a:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/user/namecard/widget/NameCardView;)Lcom/alibaba/android/user/namecard/widget/NameCardView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView$2;->a:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/user/namecard/widget/NameCardView;)Lcom/alibaba/android/user/namecard/widget/NameCardView$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/android/user/namecard/widget/NameCardView$a;->a(Landroid/view/View;)V

    .line 168
    :cond_0
    return-void
.end method
