.class final Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3$2;
.super Ljava/lang/Object;
.source "QuitOrgActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3$2;->a:Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 176
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3$2;->a:Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;->a:Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->c(Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3$2;->a:Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;->a:Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->b(Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;)I

    move-result v4

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3$2;->a:Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;->a:Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3$2$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3$2$1;-><init>(Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3$2;)V

    const-class v7, Lcma;

    iget-object v8, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3$2;->a:Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;

    iget-object v8, v8, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;->a:Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;

    invoke-interface {v0, v6, v7, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    invoke-interface/range {v1 .. v6}, Lezt;->a(JILjava/lang/String;Lcma;)V

    .line 199
    return-void
.end method
