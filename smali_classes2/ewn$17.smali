.class final Lewn$17;
.super Ljava/lang/Object;
.source "TeleConfQuickStartCallHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic c:Lewn;


# direct methods
.method constructor <init>(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 0
    .param p1, "this$0"    # Lewn;

    .prologue
    .line 1426
    iput-object p1, p0, Lewn$17;->c:Lewn;

    iput-object p2, p0, Lewn$17;->a:Landroid/app/Activity;

    iput-object p3, p0, Lewn$17;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1429
    iget-object v0, p0, Lewn$17;->a:Landroid/app/Activity;

    iget-object v1, p0, Lewn$17;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;ZLcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    .line 1430
    return-void
.end method
