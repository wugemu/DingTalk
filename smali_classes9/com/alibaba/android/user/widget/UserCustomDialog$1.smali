.class final Lcom/alibaba/android/user/widget/UserCustomDialog$1;
.super Ljava/lang/Object;
.source "UserCustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/widget/UserCustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/widget/UserCustomDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/widget/UserCustomDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/widget/UserCustomDialog;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/alibaba/android/user/widget/UserCustomDialog$1;->a:Lcom/alibaba/android/user/widget/UserCustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog$1;->a:Lcom/alibaba/android/user/widget/UserCustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/user/widget/UserCustomDialog;->dismiss()V

    .line 151
    return-void
.end method
