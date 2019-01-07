.class final Lcom/alibaba/android/user/service/SearchOrgNameCenter$3;
.super Ljava/lang/Object;
.source "SearchOrgNameCenter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/service/SearchOrgNameCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/service/SearchOrgNameCenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$3;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

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
    .line 97
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$3;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    .line 1031
    iget-object v0, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    .line 97
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$3;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    .line 2031
    iget-object v0, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->c:Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;

    .line 98
    iget-object v1, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$3;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    .line 3031
    iget-object v1, v1, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    .line 98
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->a(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$3;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    iget-object v1, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$3;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    .line 4031
    iget-object v1, v1, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    .line 99
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5031
    iput-object v1, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->h:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$3;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    invoke-static {v0}, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->a(Lcom/alibaba/android/user/service/SearchOrgNameCenter;)V

    .line 102
    :cond_0
    return-void
.end method
