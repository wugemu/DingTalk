.class final Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$17;
.super Ljava/lang/Object;
.source "ConversationOwnerManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$17;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$17;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$17;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$17;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 1066
    :cond_0
    return-void
.end method