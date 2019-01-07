.class final Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;
.super Ljava/lang/Object;
.source "ContactMenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;->a:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;

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
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;->a:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;->b:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;

    sget v1, Lezg$h;->rl_operate_org:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1$1;-><init>(Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method
