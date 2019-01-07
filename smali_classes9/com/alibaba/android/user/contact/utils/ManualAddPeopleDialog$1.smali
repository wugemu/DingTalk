.class final Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog$1;
.super Ljava/lang/Object;
.source "ManualAddPeopleDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog$1;->a:Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog$1;->a:Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->a(Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;)Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog$a;->a()V

    .line 74
    return-void
.end method
