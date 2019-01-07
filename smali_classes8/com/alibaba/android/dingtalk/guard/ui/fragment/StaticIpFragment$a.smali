.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$a;
.super Ljava/lang/Object;
.source "StaticIpFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

.field private b:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p2, "editText"    # Landroid/widget/EditText;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 431
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$a;->b:Landroid/widget/EditText;

    .line 433
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;Landroid/widget/EditText;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;
    .param p2, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 427
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$a;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;Landroid/widget/EditText;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 447
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$a;->b:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;Landroid/widget/EditText;Z)V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;)V

    .line 451
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 438
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 443
    return-void
.end method
