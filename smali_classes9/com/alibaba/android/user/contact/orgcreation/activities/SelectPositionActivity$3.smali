.class final Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$3;
.super Ljava/lang/Object;
.source "SelectPositionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->a(Landroid/app/Activity;Lcom/alibaba/android/user/model/PositionData;Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$a;

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$a;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$3;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$3;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$a;

    iput-object p3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$3;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 91
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$3;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "customPosition":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$3;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$a;

    if-eqz v1, :cond_0

    .line 93
    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$3;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$a;

    invoke-interface {v1, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$a;->a(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$3;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$3;->a:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 97
    :cond_0
    return-void
.end method
