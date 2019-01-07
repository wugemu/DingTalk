.class Landroid/support/design/widget/TabLayout$AdapterChangeListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterChangeListener"
.end annotation


# instance fields
.field private mAutoRefresh:Z

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 0

    .prologue
    .line 2202
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2203
    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroid/support/v4/view/ViewPager;Lgl;Lgl;)V
    .locals 2
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "oldAdapter"    # Lgl;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "newAdapter"    # Lgl;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2208
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 2209
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v1, p0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->mAutoRefresh:Z

    invoke-virtual {v0, p3, v1}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Lgl;Z)V

    .line 2211
    :cond_0
    return-void
.end method

.method setAutoRefresh(Z)V
    .locals 0
    .param p1, "autoRefresh"    # Z

    .prologue
    .line 2214
    iput-boolean p1, p0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->mAutoRefresh:Z

    .line 2215
    return-void
.end method
