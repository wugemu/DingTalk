.class final Lejp$9;
.super Ljava/lang/Object;
.source "HomeAttendanceManger.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lejp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

.field final synthetic b:Lejp;


# direct methods
.method constructor <init>(Lejp;Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)V
    .locals 0
    .param p1, "this$0"    # Lejp;

    .prologue
    .line 215
    iput-object p1, p0, Lejp$9;->b:Lejp;

    iput-object p2, p0, Lejp$9;->a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 218
    iget-object v0, p0, Lejp$9;->a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->dismiss()V

    .line 219
    return-void
.end method
