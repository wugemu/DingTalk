.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$1;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 245
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->d(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Z)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Z)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .line 237
    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    .line 240
    :cond_0
    return-void
.end method
