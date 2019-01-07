.class final Lcom/alibaba/android/user/login/VerifyContactActivity$2;
.super Ljava/lang/Object;
.source "VerifyContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/VerifyContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/VerifyContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$2;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$2;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->e(Lcom/alibaba/android/user/login/VerifyContactActivity;)V

    .line 149
    return-void
.end method
