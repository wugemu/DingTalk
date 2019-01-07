.class final Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity$2;
.super Ljava/lang/Object;
.source "FaceLoginResultActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;->b(Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;)Lfri$b;

    move-result-object v0

    invoke-interface {v0}, Lfri$b;->f()V

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;->finish()V

    .line 119
    return-void
.end method
