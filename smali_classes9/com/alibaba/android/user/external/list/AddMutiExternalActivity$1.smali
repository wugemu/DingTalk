.class final Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$1;
.super Ljava/lang/Object;
.source "AddMutiExternalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$1;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$1;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->finish()V

    .line 170
    return-void
.end method
