.class final Ldfd$6;
.super Ljava/lang/Object;
.source "RecruitmentChatPlugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldfd;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

.field final synthetic b:Ldfd;


# direct methods
.method constructor <init>(Ldfd;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Ldfd;

    .prologue
    .line 241
    iput-object p1, p0, Ldfd$6;->b:Ldfd;

    iput-object p2, p0, Ldfd$6;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 244
    iget-object v0, p0, Ldfd$6;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->a()Landroid/app/AlertDialog;

    .line 245
    return-void
.end method
