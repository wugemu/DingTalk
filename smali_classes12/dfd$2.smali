.class final Ldfd$2;
.super Ljava/lang/Object;
.source "RecruitmentChatPlugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldfd;->a(Landroid/app/Activity;Ljava/lang/String;JZLjava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

.field final synthetic b:Ldfd;


# direct methods
.method constructor <init>(Ldfd;Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)V
    .locals 0
    .param p1, "this$0"    # Ldfd;

    .prologue
    .line 178
    iput-object p1, p0, Ldfd$2;->b:Ldfd;

    iput-object p2, p0, Ldfd$2;->a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 181
    iget-object v0, p0, Ldfd$2;->a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->dismiss()V

    .line 182
    return-void
.end method
