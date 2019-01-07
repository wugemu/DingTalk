.class public final Lcuv$2;
.super Ljava/lang/Object;
.source "EmotionPackageViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcuv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

.field final synthetic b:Lcuv;


# direct methods
.method public constructor <init>(Lcuv;Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V
    .locals 0
    .param p1, "this$0"    # Lcuv;

    .prologue
    .line 213
    iput-object p1, p0, Lcuv$2;->b:Lcuv;

    iput-object p2, p0, Lcuv$2;->a:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 215
    iget-object v0, p0, Lcuv$2;->b:Lcuv;

    iget-object v1, p0, Lcuv$2;->a:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    .line 1221
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, v0, Lcuv;->d:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1222
    sget v3, Lctk$i;->dt_emotion_fav_delete_confirm:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lctk$i;->sure:I

    new-instance v4, Lcuv$4;

    invoke-direct {v4, v0, v1}, Lcuv$4;-><init>(Lcuv;Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    .line 1223
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->cancel:I

    new-instance v3, Lcuv$3;

    invoke-direct {v3, v0}, Lcuv$3;-><init>(Lcuv;)V

    .line 1231
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 1237
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 216
    return-void
.end method
