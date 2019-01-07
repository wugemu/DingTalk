.class final Lcom/alibaba/android/user/external/list/ManageExternalActivity$22;
.super Ljava/lang/Object;
.source "ManageExternalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/ManageExternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$22;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 324
    const-string/jumbo v0, "contact_exter_list_add_manual_contact"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$22;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    .line 326
    return-void
.end method
