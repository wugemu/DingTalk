.class final Lcom/alibaba/android/user/namecard/widget/NameCardView$1;
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
    .line 153
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView$1;->a:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView$1;->a:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/user/namecard/widget/NameCardView;)Lcom/alibaba/android/user/namecard/widget/NameCardView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView$1;->a:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/user/namecard/widget/NameCardView;)Lcom/alibaba/android/user/namecard/widget/NameCardView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView$a;->a()V

    .line 159
    :cond_0
    return-void
.end method
