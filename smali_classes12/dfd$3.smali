.class final Ldfd$3;
.super Ljava/lang/Object;
.source "RecruitmentChatPlugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldfd;->a(Landroid/app/Activity;Ljava/lang/String;JZLjava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ldfd;


# direct methods
.method constructor <init>(Ldfd;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Landroid/app/Activity;JLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldfd;

    .prologue
    .line 191
    iput-object p1, p0, Ldfd$3;->e:Ldfd;

    iput-object p2, p0, Ldfd$3;->a:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iput-object p3, p0, Ldfd$3;->b:Landroid/app/Activity;

    iput-wide p4, p0, Ldfd$3;->c:J

    iput-object p6, p0, Ldfd$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 194
    iget-object v0, p0, Ldfd$3;->a:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldfd$3;->a:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-boolean v0, v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    if-eqz v0, :cond_1

    .line 195
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    iget-object v1, p0, Ldfd$3;->b:Landroid/app/Activity;

    iget-wide v2, p0, Ldfd$3;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Ldfd$3;->a:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;Ljava/lang/Long;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Ldfd$3;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Ldfd$3;->e:Ldfd;

    iget-object v1, p0, Ldfd$3;->b:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "https://tms.dingtalk.com/markets/dingtalk/distinguish_business_call?corpId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ldfd$3;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1271
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1274
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    invoke-direct {v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1275
    sget v4, Lctk$i;->dt_conference_bizcall_open_title:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1276
    sget v4, Lctk$i;->dt_conference_bizcall_open_content:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1277
    sget v4, Lctk$i;->cancel:I

    new-instance v5, Ldfd$8;

    invoke-direct {v5, v0, v3}, Ldfd$8;-><init>(Ldfd;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;)V

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1283
    sget v4, Lctk$i;->dt_conference_bizcall_open_confirm_title:I

    new-instance v5, Ldfd$9;

    invoke-direct {v5, v0, v2, v1}, Ldfd$9;-><init>(Ldfd;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1291
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
