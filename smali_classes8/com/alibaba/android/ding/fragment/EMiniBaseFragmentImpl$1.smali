.class public final Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl$1;
.super Ljava/lang/Object;
.source "EMiniBaseFragmentImpl.java"

# interfaces
.implements Lhln;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl$1;->a:Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lhlp;)V
    .locals 3
    .param p1, "iMiniPageInstance"    # Lhlp;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl$1;->a:Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->a(Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;Lhlp;)Lhlp;

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl$1;->a:Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[EMiniBaseFragment]initEMiniView failed, activity is not alive"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl$1;->a:Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->a(Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;Z)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 156
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[EMiniBaseFragment]initEMiniView failed, initInstanceAsync failed, "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 157
    return-void
.end method
