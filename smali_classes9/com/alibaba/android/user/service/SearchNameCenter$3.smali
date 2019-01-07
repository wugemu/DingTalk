.class final Lcom/alibaba/android/user/service/SearchNameCenter$3;
.super Ljava/lang/Object;
.source "SearchNameCenter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/service/SearchNameCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/service/SearchNameCenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/service/SearchNameCenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/service/SearchNameCenter;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/android/user/service/SearchNameCenter$3;->a:Lcom/alibaba/android/user/service/SearchNameCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 70
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchNameCenter$3;->a:Lcom/alibaba/android/user/service/SearchNameCenter;

    iget-object v0, v0, Lcom/alibaba/android/user/service/SearchNameCenter;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchNameCenter$3;->a:Lcom/alibaba/android/user/service/SearchNameCenter;

    iget-object v0, v0, Lcom/alibaba/android/user/service/SearchNameCenter;->m:Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;

    iget-object v1, p0, Lcom/alibaba/android/user/service/SearchNameCenter$3;->a:Lcom/alibaba/android/user/service/SearchNameCenter;

    iget-object v1, v1, Lcom/alibaba/android/user/service/SearchNameCenter;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->a(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchNameCenter$3;->a:Lcom/alibaba/android/user/service/SearchNameCenter;

    iget-object v1, p0, Lcom/alibaba/android/user/service/SearchNameCenter$3;->a:Lcom/alibaba/android/user/service/SearchNameCenter;

    iget-object v1, v1, Lcom/alibaba/android/user/service/SearchNameCenter;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/service/SearchNameCenter;->o:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchNameCenter$3;->a:Lcom/alibaba/android/user/service/SearchNameCenter;

    invoke-virtual {v0}, Lcom/alibaba/android/user/service/SearchNameCenter;->e()V

    .line 75
    :cond_0
    return-void
.end method
