.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16$1;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;->a(Levg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

.field final synthetic b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16$1;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1315
    :cond_0
    :goto_0
    return-void

    .line 1309
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->I(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->l(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16$1;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1311
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Add virtual record with ad"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->D(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    goto :goto_0
.end method
