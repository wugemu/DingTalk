.class final Lcom/alibaba/android/user/qrcode/WebLoginActivity$2;
.super Ljava/lang/Object;
.source "WebLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/qrcode/WebLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/qrcode/WebLoginActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/qrcode/WebLoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$2;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$2;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->finish()V

    .line 123
    return-void
.end method
