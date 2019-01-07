.class final Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog$1;
.super Ljava/lang/Object;
.source "DDDelayProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;->a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;)V

    .line 62
    return-void
.end method
