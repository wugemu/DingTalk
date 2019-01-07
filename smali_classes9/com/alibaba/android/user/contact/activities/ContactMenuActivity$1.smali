.class final Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;
.super Ljava/lang/Object;
.source "ContactMenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;->b:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;

    iput p2, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;->a:I

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
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;->b:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->a(Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;->b:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;-><init>(Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method
