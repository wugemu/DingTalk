.class public final Lcom/alibaba/android/oa/fragment/CommonOAFragment$6;
.super Ljava/lang/Object;
.source "CommonOAFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1118
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$6;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$6;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V

    .line 1122
    return-void
.end method
