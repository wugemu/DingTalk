.class public final Lcom/alibaba/android/oa/fragment/CommonOAFragment$7;
.super Ljava/lang/Object;
.source "CommonOAFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/fragment/CommonOAFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$7;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$7;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->h()V

    .line 1174
    return-void
.end method
