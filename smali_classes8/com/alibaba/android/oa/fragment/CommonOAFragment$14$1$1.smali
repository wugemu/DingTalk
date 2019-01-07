.class final Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1$1;
.super Ljava/lang/Object;
.source "CommonOAFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1;I)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1$1;->b:Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1;

    iput p2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1$1;->a:I

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
    .line 774
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1$1;->b:Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1;

    iget-object v0, v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment$14;

    iget-object v0, v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$14;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-static {v0}, Lcms;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1$1;->b:Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1;

    iget-object v0, v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment$14;

    iget-object v0, v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$14;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    iget v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$14$1$1;->a:I

    invoke-static {v0, v1}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a(Lcom/alibaba/android/oa/fragment/CommonOAFragment;I)V

    .line 777
    :cond_0
    return-void
.end method
