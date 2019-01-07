.class final Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$21;
.super Ljava/lang/Object;
.source "ConversationOwnerManagerActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ldrm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$21;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 433
    check-cast p1, Ldrm;

    .line 1436
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$21;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1439
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$21;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1440
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$21;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    iget-object v1, p1, Ldrm;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1441
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$21;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->g(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1442
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$21;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->h(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget v0, p1, Ldrm;->a:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$21;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    sget v2, Lctk$i;->at_enabled:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$21;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    sget v2, Lctk$i;->at_not_enabled:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1445
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$21;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->g(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 451
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$21;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Intelligent config fetch fail s:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " s1:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$21;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->g(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 461
    return-void
.end method
