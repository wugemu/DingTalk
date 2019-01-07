.class final Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$5;
.super Landroid/content/BroadcastReceiver;
.source "CustomizedOAFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$5;->a:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$5;->a:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->f()V

    .line 452
    return-void
.end method
