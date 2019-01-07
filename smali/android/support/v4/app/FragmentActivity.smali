.class public Landroid/support/v4/app/FragmentActivity;
.super Lch;
.source "FragmentActivity.java"

# interfaces
.implements Lcd$a;
.implements Lcd$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentActivity$a;,
        Landroid/support/v4/app/FragmentActivity$b;
    }
.end annotation


# static fields
.field static final ALLOCATED_REQUEST_INDICIES_TAG:Ljava/lang/String; = "android:support:request_indicies"

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field static final MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS:I = 0xfffe

.field static final MSG_REALLY_STOPPED:I = 0x1

.field static final MSG_RESUME_PENDING:I = 0x2

.field static final NEXT_CANDIDATE_REQUEST_INDEX_TAG:Ljava/lang/String; = "android:support:next_request_index"

.field static final REQUEST_FRAGMENT_WHO_TAG:Ljava/lang/String; = "android:support:request_fragment_who"

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mCreated:Z

.field final mFragments:Lcl;

.field public final mHandler:Landroid/os/Handler;

.field mNextCandidateRequestIndex:I

.field mPendingFragmentActivityResults:Lfx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfx",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReallyStopped:Z

.field mRequestedPermissionsFromFragment:Z

.field mResumed:Z

.field mRetaining:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 67
    invoke-direct {p0}, Lch;-><init>()V

    .line 81
    new-instance v0, Landroid/support/v4/app/FragmentActivity$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Landroid/support/v4/app/FragmentActivity$a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 4047
    new-instance v1, Lcl;

    invoke-direct {v1, v0}, Lcl;-><init>(Lcm;)V

    .line 100
    iput-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 104
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 105
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 869
    return-void
.end method

.method private allocateRequestIndex(Landroid/support/v4/app/Fragment;)I
    .locals 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const v4, 0xfffe

    .line 831
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lfx;

    invoke-virtual {v1}, Lfx;->b()I

    move-result v1

    if-lt v1, v4, :cond_0

    .line 832
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Too many pending Fragment activity results."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 836
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lfx;

    iget v2, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 24276
    iget-boolean v3, v1, Lfx;->a:Z

    if-eqz v3, :cond_1

    .line 24277
    invoke-virtual {v1}, Lfx;->a()V

    .line 24280
    :cond_1
    iget-object v3, v1, Lfx;->b:[I

    iget v1, v1, Lfx;->c:I

    invoke-static {v3, v1, v2}, Lfm;->a([III)I

    move-result v1

    .line 836
    if-ltz v1, :cond_2

    .line 837
    iget v1, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v4

    iput v1, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    goto :goto_0

    .line 841
    :cond_2
    iget v0, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 842
    .local v0, "requestIndex":I
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lfx;

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lfx;->a(ILjava/lang/Object;)V

    .line 843
    iget v1, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v4

    iput v1, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 846
    return v0
.end method

.method private static markState(Lcn;Landroid/arch/lifecycle/Lifecycle$State;)V
    .locals 4
    .param p0, "manager"    # Lcn;
    .param p1, "state"    # Landroid/arch/lifecycle/Lifecycle$State;

    .prologue
    .line 961
    invoke-virtual {p0}, Lcn;->f()Ljava/util/List;

    move-result-object v1

    .line 962
    .local v1, "fragments":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/support/v4/app/Fragment;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 963
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 966
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mLifecycleRegistry:Le;

    .line 25101
    iput-object p1, v3, Le;->a:Landroid/arch/lifecycle/Lifecycle$State;

    .line 967
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Lcn;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/support/v4/app/FragmentActivity;->markState(Lcn;Landroid/arch/lifecycle/Lifecycle$State;)V

    goto :goto_0

    .line 969
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    return-void
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 338
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 8111
    iget-object v0, v0, Lcl;->a:Lcm;

    iget-object v0, v0, Lcm;->f:Lco;

    invoke-virtual {v0, p1, p2, p3, p4}, Lco;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 338
    return-object v0
.end method

.method doReallyStop(Z)V
    .locals 2
    .param p1, "retaining"    # Z

    .prologue
    const/4 v1, 0x1

    .line 652
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    if-nez v0, :cond_1

    .line 653
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 654
    iput-boolean p1, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    .line 655
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 656
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onReallyStop()V

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    if-eqz p1, :cond_0

    .line 662
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    invoke-virtual {v0}, Lcl;->c()V

    .line 663
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    invoke-virtual {v0, v1}, Lcl;->a(Z)V

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 637
    invoke-super {p0, p1, p2, p3, p4}, Lch;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 638
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Local FragmentActivity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 639
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 640
    const-string/jumbo v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 643
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 645
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 646
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 647
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 19443
    iget-object v1, v1, Lcl;->a:Lcm;

    .line 20361
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mLoadersStarted="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20362
    iget-boolean v2, v1, Lcm;->k:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 20363
    iget-object v2, v1, Lcm;->i:Lcw;

    if-eqz v2, :cond_0

    .line 20364
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Loader Manager "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20365
    iget-object v2, v1, Lcm;->i:Lcw;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20366
    const-string/jumbo v2, ":"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20367
    iget-object v1, v1, Lcm;->i:Lcw;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, p4}, Lcw;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 648
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 21058
    iget-object v1, v1, Lcl;->a:Lcm;

    .line 21206
    iget-object v1, v1, Lcm;->f:Lco;

    .line 648
    invoke-virtual {v1, p1, p2, p3, p4}, Lcn;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 649
    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 606
    .line 607
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity$b;

    .line 608
    .local v0, "nc":Landroid/support/v4/app/FragmentActivity$b;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v4/app/FragmentActivity$b;->a:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLifecycle()Landroid/arch/lifecycle/Lifecycle;
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Lch;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public getSupportFragmentManager()Lcn;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 23058
    iget-object v0, v0, Lcl;->a:Lcm;

    .line 23206
    iget-object v0, v0, Lcm;->f:Lco;

    .line 700
    return-object v0
.end method

.method public getSupportLoaderManager()Lcv;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 704
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 24065
    iget-object v0, v0, Lcl;->a:Lcm;

    .line 24210
    iget-object v1, v0, Lcm;->i:Lcw;

    if-eqz v1, :cond_0

    .line 24211
    iget-object v0, v0, Lcm;->i:Lcw;

    :goto_0
    return-object v0

    .line 24213
    :cond_0
    iput-boolean v3, v0, Lcm;->j:Z

    .line 24214
    const-string/jumbo v1, "(root)"

    iget-boolean v2, v0, Lcm;->k:Z

    invoke-virtual {v0, v1, v2, v3}, Lcm;->a(Ljava/lang/String;ZZ)Lcw;

    move-result-object v1

    iput-object v1, v0, Lcm;->i:Lcw;

    .line 24215
    iget-object v0, v0, Lcm;->i:Lcw;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 136
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    invoke-virtual {v3}, Lcl;->a()V

    .line 137
    shr-int/lit8 v0, p1, 0x10

    .line 138
    .local v0, "requestIndex":I
    if-eqz v0, :cond_2

    .line 139
    add-int/lit8 v0, v0, -0x1

    .line 141
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lfx;

    invoke-virtual {v3, v0}, Lfx;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    .local v2, "who":Ljava/lang/String;
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lfx;

    invoke-virtual {v3, v0}, Lfx;->b(I)V

    .line 143
    if-nez v2, :cond_0

    .line 144
    const-string/jumbo v3, "FragmentActivity"

    const-string/jumbo v4, "Activity result delivered for unknown Fragment."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v2    # "who":Ljava/lang/String;
    :goto_0
    return-void

    .line 147
    .restart local v2    # "who":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    invoke-virtual {v3, v2}, Lcl;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 148
    .local v1, "targetFragment":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_1

    .line 149
    const-string/jumbo v3, "FragmentActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Activity result no fragment exists for who: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :cond_1
    const v3, 0xffff

    and-int/2addr v3, p1

    invoke-virtual {v1, v3, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 156
    .end local v1    # "targetFragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "who":Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lch;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 693
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 165
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 4058
    iget-object v2, v2, Lcl;->a:Lcm;

    .line 4206
    iget-object v0, v2, Lcm;->f:Lco;

    .line 166
    .local v0, "fragmentManager":Lcn;
    invoke-virtual {v0}, Lcn;->h()Z

    move-result v1

    .line 167
    .local v1, "isStateSaved":Z
    if-eqz v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcn;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    :cond_2
    invoke-super {p0}, Lch;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 268
    invoke-super {p0, p1}, Lch;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 269
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 4295
    iget-object v0, v0, Lcl;->a:Lcm;

    iget-object v0, v0, Lcm;->f:Lco;

    invoke-virtual {v0, p1}, Lco;->a(Landroid/content/res/Configuration;)V

    .line 270
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 283
    iget-object v5, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 5095
    iget-object v7, v5, Lcl;->a:Lcm;

    iget-object v7, v7, Lcm;->f:Lco;

    iget-object v9, v5, Lcl;->a:Lcm;

    iget-object v5, v5, Lcl;->a:Lcm;

    invoke-virtual {v7, v9, v5, v6}, Lco;->a(Lcm;Lck;Landroid/support/v4/app/Fragment;)V

    .line 285
    invoke-super {p0, p1}, Lch;->onCreate(Landroid/os/Bundle;)V

    .line 288
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentActivity$b;

    .line 289
    .local v2, "nc":Landroid/support/v4/app/FragmentActivity$b;
    if-eqz v2, :cond_1

    .line 290
    iget-object v5, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    iget-object v9, v2, Landroid/support/v4/app/FragmentActivity$b;->c:Lfw;

    .line 5436
    iget-object v10, v5, Lcl;->a:Lcm;

    .line 6352
    if-eqz v9, :cond_0

    .line 6353
    invoke-virtual {v9}, Lfw;->size()I

    move-result v11

    move v7, v8

    :goto_0
    if-ge v7, v11, :cond_0

    .line 6354
    invoke-virtual {v9, v7}, Lfw;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcw;

    .line 6533
    iput-object v10, v5, Lcw;->g:Lcm;

    .line 6353
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 6357
    :cond_0
    iput-object v9, v10, Lcm;->g:Lfw;

    .line 292
    :cond_1
    if-eqz p1, :cond_3

    .line 293
    const-string/jumbo v5, "android:support:fragments"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 294
    .local v3, "p":Landroid/os/Parcelable;
    iget-object v7, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    if-eqz v2, :cond_5

    iget-object v5, v2, Landroid/support/v4/app/FragmentActivity$b;->b:Lcp;

    .line 7149
    :goto_1
    iget-object v6, v7, Lcl;->a:Lcm;

    iget-object v6, v6, Lcm;->f:Lco;

    invoke-virtual {v6, v3, v5}, Lco;->a(Landroid/os/Parcelable;Lcp;)V

    .line 297
    const-string/jumbo v5, "android:support:next_request_index"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 298
    const-string/jumbo v5, "android:support:next_request_index"

    .line 299
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 300
    const-string/jumbo v5, "android:support:request_indicies"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 301
    .local v4, "requestCodes":[I
    const-string/jumbo v5, "android:support:request_fragment_who"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "fragmentWhos":[Ljava/lang/String;
    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    array-length v5, v4

    array-length v6, v0

    if-eq v5, v6, :cond_6

    .line 304
    :cond_2
    const-string/jumbo v5, "FragmentActivity"

    const-string/jumbo v6, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v0    # "fragmentWhos":[Ljava/lang/String;
    .end local v3    # "p":Landroid/os/Parcelable;
    .end local v4    # "requestCodes":[I
    :cond_3
    iget-object v5, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lfx;

    if-nez v5, :cond_4

    .line 315
    new-instance v5, Lfx;

    invoke-direct {v5}, Lfx;-><init>()V

    iput-object v5, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lfx;

    .line 316
    iput v8, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 319
    :cond_4
    iget-object v5, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 7181
    iget-object v5, v5, Lcl;->a:Lcm;

    iget-object v5, v5, Lcm;->f:Lco;

    invoke-virtual {v5}, Lco;->p()V

    .line 320
    return-void

    .restart local v3    # "p":Landroid/os/Parcelable;
    :cond_5
    move-object v5, v6

    .line 294
    goto :goto_1

    .line 306
    .restart local v0    # "fragmentWhos":[Ljava/lang/String;
    .restart local v4    # "requestCodes":[I
    :cond_6
    new-instance v5, Lfx;

    array-length v6, v4

    invoke-direct {v5, v6}, Lfx;-><init>(I)V

    iput-object v5, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lfx;

    .line 307
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 308
    iget-object v5, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lfx;

    aget v6, v4, v1

    aget-object v7, v0, v1

    invoke-virtual {v5, v6, v7}, Lfx;->a(ILjava/lang/Object;)V

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 327
    if-nez p1, :cond_0

    .line 328
    invoke-super {p0, p1, p2}, Lch;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 329
    .local v0, "show":Z
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 7319
    iget-object v1, v1, Lcl;->a:Lcm;

    iget-object v1, v1, Lcm;->f:Lco;

    invoke-virtual {v1, p2, v2}, Lco;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    .line 329
    or-int/2addr v0, v1

    .line 332
    .end local v0    # "show":Z
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lch;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Lch;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Lch;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 346
    invoke-super {p0}, Lch;->onDestroy()V

    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 350
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 8262
    iget-object v0, v0, Lcl;->a:Lcm;

    iget-object v0, v0, Lcm;->f:Lco;

    invoke-virtual {v0}, Lco;->u()V

    .line 351
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 8411
    iget-object v0, v0, Lcl;->a:Lcm;

    .line 9282
    iget-object v1, v0, Lcm;->i:Lcw;

    if-eqz v1, :cond_0

    .line 9285
    iget-object v0, v0, Lcm;->i:Lcw;

    invoke-virtual {v0}, Lcw;->g()V

    .line 352
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 359
    invoke-super {p0}, Lch;->onLowMemory()V

    .line 360
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 9307
    iget-object v0, v0, Lcl;->a:Lcm;

    iget-object v0, v0, Lcm;->f:Lco;

    invoke-virtual {v0}, Lco;->v()V

    .line 361
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 368
    invoke-super {p0, p1, p2}, Lch;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const/4 v0, 0x1

    .line 380
    :goto_0
    return v0

    .line 372
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 380
    const/4 v0, 0x0

    goto :goto_0

    .line 374
    :sswitch_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 9344
    iget-object v0, v0, Lcl;->a:Lcm;

    iget-object v0, v0, Lcm;->f:Lco;

    invoke-virtual {v0, p2}, Lco;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 377
    :sswitch_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 9357
    iget-object v0, v0, Lcl;->a:Lcm;

    iget-object v0, v0, Lcm;->f:Lco;

    invoke-virtual {v0, p2}, Lco;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 372
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 4273
    iget-object v0, v0, Lcl;->a:Lcm;

    iget-object v0, v0, Lcm;->f:Lco;

    invoke-virtual {v0, p1}, Lco;->b(Z)V

    .line 246
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 423
    invoke-super {p0, p1}, Lch;->onNewIntent(Landroid/content/Intent;)V

    .line 424
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    invoke-virtual {v0}, Lcl;->a()V

    .line 425
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 389
    packed-switch p1, :pswitch_data_0

    .line 394
    :goto_0
    invoke-super {p0, p1, p2}, Lch;->onPanelClosed(ILandroid/view/Menu;)V

    .line 395
    return-void

    .line 391
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 9368
    iget-object v0, v0, Lcl;->a:Lcm;

    iget-object v0, v0, Lcm;->f:Lco;

    invoke-virtual {v0, p2}, Lco;->b(Landroid/view/Menu;)V

    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 402
    invoke-super {p0}, Lch;->onPause()V

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    .line 404
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 408
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 10225
    iget-object v0, v0, Lcl;->a:Lcm;

    iget-object v0, v0, Lcm;->f:Lco;

    .line 11185
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lco;->b(I)V

    .line 409
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 4284
    iget-object v0, v0, Lcl;->a:Lcm;

    iget-object v0, v0, Lcm;->f:Lco;

    invoke-virtual {v0, p1}, Lco;->c(Z)V

    .line 261
    return-void
.end method

.method public onPostResume()V
    .locals 2

    .prologue
    .line 457
    invoke-super {p0}, Lch;->onPostResume()V

    .line 458
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 460
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    invoke-virtual {v0}, Lcl;->b()Z

    .line 461
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menu"    # Landroid/view/Menu;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 491
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Lch;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 478
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 479
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 480
    .local v0, "goforit":Z
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 11331
    iget-object v1, v1, Lcl;->a:Lcm;

    iget-object v1, v1, Lcm;->f:Lco;

    invoke-virtual {v1, p3}, Lco;->a(Landroid/view/Menu;)Z

    move-result v1

    .line 480
    or-int/2addr v0, v1

    .line 483
    .end local v0    # "goforit":Z
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lch;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method onReallyStop()V
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    invoke-virtual {v0, v1}, Lcl;->a(Z)V

    .line 677
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 21240
    iget-object v0, v0, Lcl;->a:Lcm;

    iget-object v0, v0, Lcm;->f:Lco;

    .line 22198
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lco;->b(I)V

    .line 678
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v4, 0xffff

    .line 758
    shr-int/lit8 v3, p1, 0x10

    and-int v1, v3, v4

    .line 759
    .local v1, "index":I
    if-eqz v1, :cond_0

    .line 760
    add-int/lit8 v1, v1, -0x1

    .line 762
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lfx;

    invoke-virtual {v3, v1}, Lfx;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 763
    .local v2, "who":Ljava/lang/String;
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lfx;

    invoke-virtual {v3, v1}, Lfx;->b(I)V

    .line 764
    if-nez v2, :cond_1

    .line 765
    const-string/jumbo v3, "FragmentActivity"

    const-string/jumbo v4, "Activity result delivered for unknown Fragment."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    .end local v2    # "who":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 768
    .restart local v2    # "who":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    invoke-virtual {v3, v2}, Lcl;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 769
    .local v0, "frag":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_2

    .line 770
    const-string/jumbo v3, "FragmentActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Activity result no fragment exists for who: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 772
    :cond_2
    and-int v3, p1, v4

    invoke-virtual {v0, v3, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 446
    invoke-super {p0}, Lch;->onResume()V

    .line 447
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    .line 449
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    invoke-virtual {v0}, Lcl;->b()Z

    .line 450
    return-void
.end method

.method protected onResumeFragments()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 11214
    iget-object v0, v0, Lcl;->a:Lcm;

    iget-object v0, v0, Lcm;->f:Lco;

    invoke-virtual {v0}, Lco;->s()V

    .line 471
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 501
    iget-boolean v4, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    if-eqz v4, :cond_0

    .line 502
    invoke-virtual {p0, v5}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 505
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 507
    .local v0, "custom":Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 12170
    iget-object v4, v4, Lcl;->a:Lcm;

    iget-object v4, v4, Lcm;->f:Lco;

    .line 12767
    iget-object v7, v4, Lco;->B:Lcp;

    invoke-static {v7}, Lco;->a(Lcp;)V

    .line 12768
    iget-object v1, v4, Lco;->B:Lcp;

    .line 508
    .local v1, "fragments":Lcp;
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 13426
    iget-object v8, v4, Lcl;->a:Lcm;

    .line 14319
    iget-object v4, v8, Lcm;->g:Lfw;

    if-eqz v4, :cond_5

    .line 14322
    iget-object v4, v8, Lcm;->g:Lfw;

    invoke-virtual {v4}, Lfw;->size()I

    move-result v9

    .line 14323
    new-array v10, v9, [Lcw;

    .line 14324
    add-int/lit8 v4, v9, -0x1

    move v7, v4

    :goto_0
    if-ltz v7, :cond_1

    .line 14325
    iget-object v4, v8, Lcm;->g:Lfw;

    invoke-virtual {v4, v7}, Lfw;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcw;

    aput-object v4, v10, v7

    .line 14324
    add-int/lit8 v4, v7, -0x1

    move v7, v4

    goto :goto_0

    .line 15233
    :cond_1
    iget-boolean v7, v8, Lcm;->h:Z

    move v4, v6

    .line 14328
    :goto_1
    if-ge v6, v9, :cond_6

    .line 14329
    aget-object v11, v10, v6

    .line 14330
    iget-boolean v12, v11, Lcw;->f:Z

    if-nez v12, :cond_3

    if-eqz v7, :cond_3

    .line 14331
    iget-boolean v12, v11, Lcw;->e:Z

    if-nez v12, :cond_2

    .line 14332
    invoke-virtual {v11}, Lcw;->b()V

    .line 14334
    :cond_2
    invoke-virtual {v11}, Lcw;->d()V

    .line 14336
    :cond_3
    iget-boolean v12, v11, Lcw;->f:Z

    if-eqz v12, :cond_4

    move v4, v5

    .line 14328
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 14339
    :cond_4
    invoke-virtual {v11}, Lcw;->g()V

    .line 14340
    iget-object v12, v8, Lcm;->g:Lfw;

    iget-object v11, v11, Lcw;->d:Ljava/lang/String;

    invoke-virtual {v12, v11}, Lfw;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move v4, v6

    .line 14345
    :cond_6
    if-eqz v4, :cond_7

    .line 14346
    iget-object v2, v8, Lcm;->g:Lfw;

    .line 510
    .local v2, "loaders":Lfw;, "Lfw<Ljava/lang/String;Lcv;>;"
    :goto_3
    if-nez v1, :cond_8

    if-nez v2, :cond_8

    if-nez v0, :cond_8

    .line 518
    :goto_4
    return-object v3

    .end local v2    # "loaders":Lfw;, "Lfw<Ljava/lang/String;Lcv;>;"
    :cond_7
    move-object v2, v3

    .line 14348
    goto :goto_3

    .line 514
    .restart local v2    # "loaders":Lfw;, "Lfw<Ljava/lang/String;Lcv;>;"
    :cond_8
    new-instance v3, Landroid/support/v4/app/FragmentActivity$b;

    invoke-direct {v3}, Landroid/support/v4/app/FragmentActivity$b;-><init>()V

    .line 515
    .local v3, "nci":Landroid/support/v4/app/FragmentActivity$b;
    iput-object v0, v3, Landroid/support/v4/app/FragmentActivity$b;->a:Ljava/lang/Object;

    .line 516
    iput-object v1, v3, Landroid/support/v4/app/FragmentActivity$b;->b:Lcp;

    .line 517
    iput-object v2, v3, Landroid/support/v4/app/FragmentActivity$b;->c:Lfw;

    goto :goto_4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 526
    invoke-super {p0, p1}, Lch;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 527
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Lcn;

    move-result-object v4

    sget-object v5, Landroid/arch/lifecycle/Lifecycle$State;->CREATED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v4, v5}, Landroid/support/v4/app/FragmentActivity;->markState(Lcn;Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 528
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 16125
    iget-object v4, v4, Lcl;->a:Lcm;

    iget-object v4, v4, Lcm;->f:Lco;

    invoke-virtual {v4}, Lco;->m()Landroid/os/Parcelable;

    move-result-object v2

    .line 529
    .local v2, "p":Landroid/os/Parcelable;
    if-eqz v2, :cond_0

    .line 530
    const-string/jumbo v4, "android:support:fragments"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 532
    :cond_0
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lfx;

    invoke-virtual {v4}, Lfx;->b()I

    move-result v4

    if-lez v4, :cond_2

    .line 533
    const-string/jumbo v4, "android:support:next_request_index"

    iget v5, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 535
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lfx;

    invoke-virtual {v4}, Lfx;->b()I

    move-result v4

    new-array v3, v4, [I

    .line 536
    .local v3, "requestCodes":[I
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lfx;

    invoke-virtual {v4}, Lfx;->b()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 537
    .local v0, "fragmentWhos":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lfx;

    invoke-virtual {v4}, Lfx;->b()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 538
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lfx;

    invoke-virtual {v4, v1}, Lfx;->c(I)I

    move-result v4

    aput v4, v3, v1

    .line 539
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lfx;

    invoke-virtual {v4, v1}, Lfx;->d(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 541
    :cond_1
    const-string/jumbo v4, "android:support:request_indicies"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 542
    const-string/jumbo v4, "android:support:request_fragment_who"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 544
    .end local v0    # "fragmentWhos":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "requestCodes":[I
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 552
    invoke-super {p0}, Lch;->onStart()V

    .line 554
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 555
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 556
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 558
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    if-nez v0, :cond_0

    .line 559
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    .line 560
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 16192
    iget-object v0, v0, Lcl;->a:Lcm;

    iget-object v0, v0, Lcm;->f:Lco;

    invoke-virtual {v0}, Lco;->q()V

    .line 563
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    invoke-virtual {v0}, Lcl;->a()V

    .line 564
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    invoke-virtual {v0}, Lcl;->b()Z

    .line 566
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    invoke-virtual {v0}, Lcl;->c()V

    .line 570
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 16203
    iget-object v0, v0, Lcl;->a:Lcm;

    iget-object v0, v0, Lcm;->f:Lco;

    invoke-virtual {v0}, Lco;->r()V

    .line 571
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 16418
    iget-object v2, v0, Lcl;->a:Lcm;

    .line 17289
    iget-object v0, v2, Lcm;->g:Lfw;

    if-eqz v0, :cond_5

    .line 17290
    iget-object v0, v2, Lcm;->g:Lfw;

    invoke-virtual {v0}, Lfw;->size()I

    move-result v4

    .line 17291
    new-array v5, v4, [Lcw;

    .line 17292
    add-int/lit8 v0, v4, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 17293
    iget-object v0, v2, Lcm;->g:Lfw;

    invoke-virtual {v0, v1}, Lfw;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcw;

    aput-object v0, v5, v1

    .line 17292
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v3

    .line 17295
    :goto_1
    if-ge v2, v4, :cond_5

    .line 17296
    aget-object v6, v5, v2

    .line 17806
    iget-boolean v0, v6, Lcw;->f:Z

    if-eqz v0, :cond_4

    .line 17809
    iput-boolean v3, v6, Lcw;->f:Z

    .line 17810
    iget-object v0, v6, Lcw;->b:Lfx;

    invoke-virtual {v0}, Lfx;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    .line 17811
    iget-object v0, v6, Lcw;->b:Lfx;

    invoke-virtual {v0, v1}, Lfx;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcw$a;

    .line 18283
    iget-boolean v7, v0, Lcw$a;->i:Z

    if-eqz v7, :cond_2

    .line 18285
    iput-boolean v3, v0, Lcw$a;->i:Z

    .line 18286
    iget-boolean v7, v0, Lcw$a;->h:Z

    iget-boolean v8, v0, Lcw$a;->j:Z

    if-eq v7, v8, :cond_2

    .line 18287
    iget-boolean v7, v0, Lcw$a;->h:Z

    if-nez v7, :cond_2

    .line 18291
    invoke-virtual {v0}, Lcw$a;->b()V

    .line 18296
    :cond_2
    iget-boolean v7, v0, Lcw$a;->h:Z

    if-eqz v7, :cond_3

    iget-boolean v7, v0, Lcw$a;->e:Z

    if-eqz v7, :cond_3

    iget-boolean v7, v0, Lcw$a;->k:Z

    if-nez v7, :cond_3

    .line 18303
    iget-object v7, v0, Lcw$a;->d:Landroid/support/v4/content/Loader;

    iget-object v0, v0, Lcw$a;->g:Ljava/lang/Object;

    .line 17810
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 17298
    :cond_4
    invoke-virtual {v6}, Lcw;->f()V

    .line 17295
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 572
    :cond_5
    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    invoke-virtual {v0}, Lcl;->a()V

    .line 433
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 579
    invoke-super {p0}, Lch;->onStop()V

    .line 581
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 582
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->CREATED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentActivity;->markState(Lcn;Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 583
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 585
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lcl;

    .line 19236
    iget-object v0, v0, Lcl;->a:Lcm;

    iget-object v0, v0, Lcm;->f:Lco;

    invoke-virtual {v0}, Lco;->t()V

    .line 586
    return-void
.end method

.method requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 854
    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    .line 855
    invoke-static {p0, p2, p3}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 866
    :goto_0
    return-void

    .line 858
    :cond_0
    invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 860
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 861
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroid/support/v4/app/Fragment;)I

    move-result v0

    .line 862
    .local v0, "requestIndex":I
    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p3

    add-int/2addr v1, v2

    invoke-static {p0, p2, v1}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    goto :goto_0

    .end local v0    # "requestIndex":I
    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    throw v1
.end method

.method public setEnterSharedElementCallback(Ldm;)V
    .locals 0
    .param p1, "callback"    # Ldm;

    .prologue
    .line 201
    invoke-static {p0, p1}, Lcd;->a(Landroid/app/Activity;Ldm;)V

    .line 202
    return-void
.end method

.method public setExitSharedElementCallback(Ldm;)V
    .locals 0
    .param p1, "listener"    # Ldm;

    .prologue
    .line 214
    invoke-static {p0, p1}, Lcd;->b(Landroid/app/Activity;Ldm;)V

    .line 215
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 715
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    .line 716
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 717
    invoke-static {p2}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 720
    :cond_0
    invoke-super {p0, p1, p2}, Lch;->startActivityForResult(Landroid/content/Intent;I)V

    .line 721
    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Lch;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 782
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 783
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 790
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 792
    if-ne p3, v2, :cond_0

    .line 793
    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0, p2, v1, p4}, Lcd;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 802
    :goto_0
    return-void

    .line 796
    :cond_0
    :try_start_1
    invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 797
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroid/support/v4/app/Fragment;)I

    move-result v0

    .line 798
    .local v0, "requestIndex":I
    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p3

    add-int/2addr v1, v2

    invoke-static {p0, p2, v1, p4}, Lcd;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 801
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    goto :goto_0

    .end local v0    # "requestIndex":I
    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    throw v1
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-super/range {p0 .. p6}, Lch;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-super/range {p0 .. p7}, Lch;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 811
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 813
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    .line 814
    :try_start_0
    invoke-static/range {v0 .. v7}, Lcd;->a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 825
    :goto_0
    return-void

    .line 818
    :cond_0
    :try_start_1
    invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 819
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroid/support/v4/app/Fragment;)I

    move-result v8

    .line 820
    .local v8, "requestIndex":I
    add-int/lit8 v0, v8, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int v2, v0, v1

    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lcd;->a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 824
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    goto :goto_0

    .end local v8    # "requestIndex":I
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    throw v0
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    .prologue
    .line 189
    invoke-static {p0}, Lcd;->b(Landroid/app/Activity;)V

    .line 190
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 622
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 623
    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    .prologue
    .line 222
    invoke-static {p0}, Lcd;->c(Landroid/app/Activity;)V

    .line 223
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    .prologue
    .line 230
    invoke-static {p0}, Lcd;->d(Landroid/app/Activity;)V

    .line 231
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 1
    .param p1, "requestCode"    # I

    .prologue
    .line 732
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 734
    invoke-static {p1}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 736
    :cond_0
    return-void
.end method
