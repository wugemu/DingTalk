.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$14$1;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$14;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$14;

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$14$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$14$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$14;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$14;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1181
    :goto_0
    return-void

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$14$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$14;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$14;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->D(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    goto :goto_0
.end method
