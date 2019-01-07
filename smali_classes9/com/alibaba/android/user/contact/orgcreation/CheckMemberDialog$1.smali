.class final Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog$1;
.super Ljava/lang/Object;
.source "CheckMemberDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog$1;->a:Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog$1;->a:Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->a(Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 80
    return-void
.end method
