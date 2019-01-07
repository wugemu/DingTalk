.class final Lcom/alibaba/android/user/contact/utils/CustomCloseDialog$2;
.super Ljava/lang/Object;
.source "CustomCloseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog$2;->a:Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog$2;->a:Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->dismiss()V

    .line 106
    return-void
.end method
