.class final Lfls$10;
.super Ljava/lang/Object;
.source "ContactUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfls;->c(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>([Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1063
    iput-object p1, p0, Lfls$10;->a:[Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput-object p2, p0, Lfls$10;->b:Landroid/app/Activity;

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
    .line 1066
    iget-object v1, p0, Lfls$10;->a:[Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    aget-object v0, v1, p2

    .line 1067
    .local v0, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-nez v0, :cond_0

    .line 1079
    :goto_0
    return-void

    .line 1070
    :cond_0
    iget-object v1, p0, Lfls$10;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/add_2_org.html"

    new-instance v3, Lfls$10$1;

    invoke-direct {v3, p0, v0}, Lfls$10$1;-><init>(Lfls$10;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1078
    const-string/jumbo v1, "invite_new_members_enter"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
