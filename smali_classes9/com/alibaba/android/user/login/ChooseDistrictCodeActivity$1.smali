.class final Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$1;
.super Ljava/lang/Object;
.source "ChooseDistrictCodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$1;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$1;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->a(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$1;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->a(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method
