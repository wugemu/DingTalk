.class final Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment$3;
.super Ljava/lang/Object;
.source "OldBaseSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment$3;->a:Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment$3;->a:Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;->a(Landroid/view/View;)V

    .line 137
    return-void
.end method
