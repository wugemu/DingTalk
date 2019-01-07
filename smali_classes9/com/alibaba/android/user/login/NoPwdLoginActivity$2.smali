.class final Lcom/alibaba/android/user/login/NoPwdLoginActivity$2;
.super Ljava/lang/Object;
.source "NoPwdLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/NoPwdLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/NoPwdLoginActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$2;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$2;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->d(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)V

    .line 133
    return-void
.end method
