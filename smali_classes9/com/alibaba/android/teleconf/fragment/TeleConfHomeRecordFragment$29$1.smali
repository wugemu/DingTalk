.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29$1;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;

    .prologue
    .line 2491
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 2494
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2495
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->w(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29$1;->a:Ljava/util/List;

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/Map;Ljava/util/List;Z)V

    .line 2496
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;B)V

    .line 2498
    .local v0, "checkExternalContact":Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;
    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;)V

    .line 2500
    .end local v0    # "checkExternalContact":Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;
    :cond_0
    return-void
.end method
