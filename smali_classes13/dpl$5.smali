.class final Ldpl$5;
.super Ljava/lang/Object;
.source "MenuShieldHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpl;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ldpl;


# direct methods
.method constructor <init>(Ldpl;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Ldpl;

    .prologue
    .line 166
    iput-object p1, p0, Ldpl$5;->b:Ldpl;

    iput-object p2, p0, Ldpl$5;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    iget-object v0, p0, Ldpl$5;->b:Ldpl;

    .line 1047
    iget-boolean v0, v0, Ldpl;->a:Z

    .line 169
    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Ldpl$5;->b:Ldpl;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iget-object v2, p0, Ldpl$5;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2047
    iput-object v1, v0, Ldpl;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 171
    iget-object v0, p0, Ldpl$5;->b:Ldpl;

    .line 3047
    iget-object v0, v0, Ldpl;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 171
    iget-object v1, p0, Ldpl$5;->a:Landroid/content/Context;

    sget v2, Lctk$i;->dt_message_shield_progressing:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Ldpl$5;->b:Ldpl;

    .line 4047
    iget-object v0, v0, Ldpl;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 172
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 174
    :cond_0
    return-void
.end method
