.class final Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$b;
.super Ljava/lang/Object;
.source "BaseLetterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;)V
    .locals 0

    .prologue
    .line 85
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$b;, "Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment<TT;>.b;"
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$b;->a:Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    .prologue
    .line 85
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$b;, "Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment<TT;>.b;"
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$b;-><init>(Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 88
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$b;, "Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment<TT;>.b;"
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$b;->a:Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->a(Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    return-void
.end method
