.class final Lcom/alibaba/android/search/fragment/AllSearchFragment$5;
.super Ljava/lang/Object;
.source "AllSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/AllSearchFragment;->onAttach(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/AllSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/AllSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$5;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$5;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->r(Lcom/alibaba/android/search/fragment/AllSearchFragment;)V

    .line 457
    return-void
.end method
