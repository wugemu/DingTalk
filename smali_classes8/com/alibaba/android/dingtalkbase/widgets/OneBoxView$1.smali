.class final Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$1;
.super Ljava/lang/Object;
.source "OneBoxView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 267
    :cond_0
    return-void
.end method
