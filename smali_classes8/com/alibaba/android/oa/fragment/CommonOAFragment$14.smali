.class final Lcom/alibaba/android/oa/fragment/CommonOAFragment$14;
.super Ljava/lang/Object;
.source "CommonOAFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/fragment/CommonOAFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 763
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$14;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 766
    const-string/jumbo v0, "CommonOAFragment"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment$14;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 781
    return-void
.end method
