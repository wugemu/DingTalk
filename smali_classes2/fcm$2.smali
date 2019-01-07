.class final Lfcm$2;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Lcom/alibaba/android/user/connection/ui/CommentListView$b;


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
    .line 1184
    iput-object p1, p0, Lfcm$2;->b:Lfcm;

    iput-object p2, p0, Lfcm$2;->a:Ljava/util/List;

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
    const/4 v5, 0x1

    .line 1187
    iget-object v2, p0, Lfcm$2;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .line 1188
    .local v1, "commentObject":Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lfcm$2;->b:Lfcm;

    iget-object v2, v2, Lfcm;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1189
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 1190
    invoke-virtual {v2, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lezg$c;->copy_to_clipboard:I

    new-instance v4, Lfcm$2$1;

    invoke-direct {v4, p0, v1}, Lfcm$2$1;-><init>(Lfcm$2;Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;)V

    .line 1191
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1197
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1198
    return-void
.end method
