.class final Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$5;
.super Ljava/lang/Object;
.source "JoinGroupRequestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$5;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$5;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;Z)V

    .line 210
    return-void
.end method
