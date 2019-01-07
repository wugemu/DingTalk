.class final Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9$1;
.super Ljava/lang/Object;
.source "CategoryManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9$1;->b:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9$1;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 456
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9$1;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "categoryName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9$1;->b:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    sget v2, Lctk$i;->dt_im_category_new_tip:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9$1;->b:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->g(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)Ldda$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 461
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9$1;->b:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->g(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)Ldda$a;

    move-result-object v1

    invoke-interface {v1, v0}, Ldda$a;->a(Ljava/lang/String;)V

    .line 463
    :cond_1
    return-void
.end method
