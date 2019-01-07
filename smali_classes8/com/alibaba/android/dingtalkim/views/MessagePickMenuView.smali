.class public Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;
.super Landroid/widget/FrameLayout;
.source "MessagePickMenuView.java"

# interfaces
.implements Ldrt$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Ldrt$b",
        "<",
        "Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$a;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1046
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lctk$g;->message_pick_menu_view:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1047
    sget v0, Lctk$f;->ll_forward:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;->c:Landroid/widget/LinearLayout;

    .line 1048
    sget v0, Lctk$f;->ll_to_task:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;->d:Landroid/widget/LinearLayout;

    .line 1050
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$1;-><init>(Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1059
    invoke-static {}, Lebc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1061
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;->d:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$2;-><init>(Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;)Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;->b:Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;->a:Z

    return v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 117
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcms;->p(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 76
    return-object p0
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$a;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;->setPresenter(Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$a;)V

    return-void
.end method

.method public setPresenter(Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$a;)V
    .locals 0
    .param p1, "presenter"    # Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$a;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;->b:Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$a;

    .line 102
    return-void
.end method

.method public setViewEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    .line 81
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;->a:Z

    .line 82
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;->c:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;->d:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 84
    return-void

    :cond_0
    move v0, v2

    .line 82
    goto :goto_0

    :cond_1
    move v1, v2

    .line 83
    goto :goto_1
.end method
