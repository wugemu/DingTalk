.class final Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$17;
.super Ljava/lang/Object;
.source "CreateNewOrgActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 1458
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$17;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1461
    const-string/jumbo v0, "contact_create_team_cancel_btn_click"

    invoke-static {v0}, Lfxo;->b(Ljava/lang/String;)V

    .line 1462
    return-void
.end method