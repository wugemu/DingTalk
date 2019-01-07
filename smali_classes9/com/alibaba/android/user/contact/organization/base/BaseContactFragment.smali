.class public abstract Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;
.super Lcom/alibaba/android/user/UserBaseFragment;
.source "BaseContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;
    }
.end annotation


# instance fields
.field protected b:Lfip;

.field protected c:Z

.field protected d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseFragment;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->c:Z

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->d:I

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    .prologue
    .line 27
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->e:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->d:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    .prologue
    .line 27
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->f:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->f:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    .prologue
    .line 27
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->g:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->e:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    .prologue
    .line 27
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->d:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->g:I

    return p1
.end method


# virtual methods
.method public final a(Lfip;)V
    .locals 0
    .param p1, "fragmentSwitch"    # Lfip;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->b:Lfip;

    .line 53
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyWord"    # Ljava/lang/String;

    .prologue
    .line 57
    return-void
.end method

.method public final b_(Z)V
    .locals 0
    .param p1, "canScrollLoadMore"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->c:Z

    .line 49
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method
