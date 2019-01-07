.class final Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$1;
.super Ljava/lang/Object;
.source "Add2GroupActivity.java"

# interfaces
.implements Lgd$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$1;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$1;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->finish()V

    .line 85
    const/4 v0, 0x1

    return v0
.end method
