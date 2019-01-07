.class final Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1;
.super Ljava/lang/Object;
.source "CommonOAFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/fragment/CommonOAFragment$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/fragment/CommonOAFragment$14;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment$14;

    .prologue
    .line 766
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 770
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment$14;

    iget-object v1, v1, Lcom/alibaba/android/oa/fragment/CommonOAFragment$14;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-static {v1}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->g(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)I

    move-result v0

    .line 771
    .local v0, "appId":I
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1$1;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1;I)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 779
    return-void
.end method
