.class final Lfcm$12;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Lcom/alibaba/android/user/connection/ui/CommentListView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfcm;


# direct methods
.method constructor <init>(Lfcm;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lfcm;

    .prologue
    .line 1156
    iput-object p1, p0, Lfcm$12;->b:Lfcm;

    iput-object p2, p0, Lfcm$12;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1159
    iget-object v1, p0, Lfcm$12;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .line 1160
    .local v0, "commentObject":Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    iget-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-wide v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    iget-object v1, p0, Lfcm$12;->b:Lfcm;

    invoke-static {v1}, Lfcm;->d(Lfcm;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 1161
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lfcm$12;->b:Lfcm;

    iget-object v2, v2, Lfcm;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lezg$l;->dt_circle_delete_for_sure:I

    .line 1162
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->dt_circle_cancel:I

    new-instance v3, Lfcm$12$2;

    invoke-direct {v3, p0}, Lfcm$12$2;-><init>(Lfcm$12;)V

    .line 1163
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->dt_circle_action_delete:I

    new-instance v3, Lfcm$12$1;

    invoke-direct {v3, p0, v0}, Lfcm$12$1;-><init>(Lfcm$12;Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;)V

    .line 1169
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 1175
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    iget-object v1, p0, Lfcm$12;->b:Lfcm;

    invoke-static {v1}, Lfcm;->e(Lfcm;)Lfcm$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1179
    iget-object v1, p0, Lfcm$12;->b:Lfcm;

    invoke-static {v1}, Lfcm;->e(Lfcm;)Lfcm$b;

    move-result-object v1

    iget-object v2, p0, Lfcm$12;->b:Lfcm;

    invoke-static {v2}, Lfcm;->b(Lfcm;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v2

    iget-object v3, p0, Lfcm$12;->b:Lfcm;

    invoke-virtual {v3}, Lfcm;->getAdapterPosition()I

    move-result v3

    invoke-interface {v1, v2, v0, v3}, Lfcm$b;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;I)V

    goto :goto_0
.end method
