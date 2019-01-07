.class final Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$1;
.super Ljava/lang/Object;
.source "SelectPositionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic b:Lcom/alibaba/android/user/model/PositionData;

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/alibaba/android/user/model/PositionData;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$1;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$1;->b:Lcom/alibaba/android/user/model/PositionData;

    iput-object p3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$1;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$1;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$1;->b:Lcom/alibaba/android/user/model/PositionData;

    iget-object v1, v1, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$1;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$1;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 69
    return-void
.end method
